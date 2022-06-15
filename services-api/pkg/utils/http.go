package utils

import (
	"bytes"
	"context"
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"mime"
	"mime/multipart"
	"net/http"
	"net/http/httputil"
	"net/textproto"
	"net/url"
	"os"
	"path"
	"path/filepath"
	"strings"
	"sync"
	"time"

	oar "github.com/go-openapi/runtime"
	oarLogger "github.com/go-openapi/runtime/logger"
	oarYaml "github.com/go-openapi/runtime/yamlpc"
	oaStrFmt "github.com/go-openapi/strfmt"
)

//#region Constants

const (
	HeaderContentDisposition = "Content-Disposition"
)

//#endregion Constants

//#region Vars

var (
	DefaultTimeout = 30 * time.Second
)

//#endregion Vars

//#region Interfaces

type PreSendABRequestFunc func(r *ABRequest) (*ABRequest, error)
type PreSendHttpRequestFunc func(r *http.Request) (*http.Request, error)

// ClientTransport Implements runtime.ClientTransport
type ClientTransport interface {
	GetRoundTripper() http.RoundTripper
	GetPreSendABRequestFunc() PreSendABRequestFunc
	SetPreSendABRequestFunc(PreSendABRequestFunc) error
	GetPreSendHttpRequestFunc() PreSendHttpRequestFunc
	SetPreSendHttpRequestFunc(PreSendHttpRequestFunc) error

	oar.ClientTransport // for Submit(*ClientOperation) (interface{}, error)
}

//#endregion Interfaces

//#region Structs

//#region ABClientTransport

// ABClientTransport Implements utils.ClientTransport
type ABClientTransport struct {
	DefaultMediaType      string
	DefaultAuthentication oar.ClientAuthInfoWriter
	Consumers             map[string]oar.Consumer
	Producers             map[string]oar.Producer

	Transport http.RoundTripper
	Jar       http.CookieJar

	Host     string
	BasePath string
	Schemes  []string
	Formats  oaStrFmt.Registry
	Context  context.Context

	Debug  bool
	Logger oarLogger.Logger

	clientOnce *sync.Once
	client     *http.Client

	preSendABRequestFunc   PreSendABRequestFunc
	preSendHttpRequestFunc PreSendHttpRequestFunc
}

//#region ABClientTransport.New

func NewABClientTransport(host, basePath string, schemes []string) *ABClientTransport {
	var clientTransport ABClientTransport

	clientTransport.DefaultMediaType = oar.JSONMime
	clientTransport.DefaultAuthentication = nil
	clientTransport.Consumers = map[string]oar.Consumer{
		oar.YAMLMime:    oarYaml.YAMLConsumer(),
		oar.JSONMime:    oar.JSONConsumer(),
		oar.XMLMime:     oar.XMLConsumer(),
		oar.TextMime:    oar.TextConsumer(),
		oar.HTMLMime:    oar.TextConsumer(),
		oar.CSVMime:     oar.CSVConsumer(),
		oar.DefaultMime: oar.ByteStreamConsumer(),
	}
	clientTransport.Producers = map[string]oar.Producer{
		oar.YAMLMime:    oarYaml.YAMLProducer(),
		oar.JSONMime:    oar.JSONProducer(),
		oar.XMLMime:     oar.XMLProducer(),
		oar.TextMime:    oar.TextProducer(),
		oar.HTMLMime:    oar.TextProducer(),
		oar.CSVMime:     oar.CSVProducer(),
		oar.DefaultMime: oar.ByteStreamProducer(),
	}

	clientTransport.Transport = http.DefaultTransport
	clientTransport.Jar = nil

	clientTransport.Host = host
	clientTransport.BasePath = basePath
	if !strings.HasPrefix(clientTransport.BasePath, "/") {
		clientTransport.BasePath = "/" + clientTransport.BasePath
	}
	if len(schemes) > 0 {
		clientTransport.Schemes = schemes
	}
	clientTransport.Formats = nil
	clientTransport.Context = context.Background()

	clientTransport.Debug = oarLogger.DebugEnabled()
	clientTransport.Logger = oarLogger.StandardLogger{}

	clientTransport.clientOnce = new(sync.Once)

	return &clientTransport
}

func NewABClientTransportWithHttpClient(host, basePath string, schemes []string, httpClient *http.Client) *ABClientTransport {
	clientTransport := NewABClientTransport(host, basePath, schemes)
	if httpClient != nil {
		clientTransport.clientOnce.Do(func() {
			clientTransport.client = httpClient
		})
	}
	return clientTransport
}

//#endregion ABClientTransport.New

//#region ABClientTransport.Utils

func (ct *ABClientTransport) NewHttpClient() *http.Client {
	return &http.Client{
		Transport: ct.Transport,
		Jar:       ct.Jar,
	}
}

func (ct *ABClientTransport) PickScheme(schemes []string) string {
	if scheme := SelectScheme(ct.Schemes); scheme != "" {
		return scheme
	}
	if scheme := SelectScheme(schemes); scheme != "" {
		return scheme
	}
	return "http"
}

//#endregion ABClientTransport.Utils

//#region ABClientTransport (utils.ClientTransport)

func (ct *ABClientTransport) GetRoundTripper() http.RoundTripper {
	return ct.Transport
}

func (ct *ABClientTransport) GetPreSendABRequestFunc() PreSendABRequestFunc {
	return ct.preSendABRequestFunc
}

func (ct *ABClientTransport) SetPreSendABequestFunc(requestFunc PreSendABRequestFunc) error {
	ct.preSendABRequestFunc = requestFunc
	return nil
}

func (ct *ABClientTransport) GetPreSendHttpRequestFunc() PreSendHttpRequestFunc {
	return ct.preSendHttpRequestFunc
}

func (ct *ABClientTransport) SetPreSendHttpRequestFunc(requestFunc PreSendHttpRequestFunc) error {
	ct.preSendHttpRequestFunc = requestFunc
	return nil
}

func (ct *ABClientTransport) Submit(clientOperation *oar.ClientOperation) (interface{}, error) {
	readResponse := clientOperation.Reader
	auth := clientOperation.AuthInfo

	abRequest, err := NewABRequestFromClientOperation(clientOperation)
	if err != nil {
		return nil, err
	}

	if auth == nil && ct.DefaultAuthentication != nil {
		auth = ct.DefaultAuthentication
	}

	// TODO(go-openapi): Pick appropriate Media Type.
	cmt := ct.DefaultMediaType
	for _, mediaType := range clientOperation.ConsumesMediaTypes {
		// Pick first non-empty media type.
		if mediaType != "" {
			cmt = mediaType
			break
		}
	}

	if _, ok := ct.Producers[cmt]; !ok &&
		cmt != oar.MultipartFormMime &&
		cmt != oar.URLencodedFormMime {
		return nil, fmt.Errorf("none of the producers: %v registered - try %s", ct.Producers, cmt)
	}

	if ct.preSendABRequestFunc != nil {
		abRequest, err = ct.preSendABRequestFunc(abRequest)
		if err != nil {
			return nil, err
		}
	}

	timeout := abRequest.Timeout
	httpRequest, err := NewHttpRequestFromABRequest(
		abRequest,
		cmt,
		ct.BasePath,
		ct.Producers,
		ct.Formats,
		auth,
	)
	if err != nil {
		return nil, err
	}
	httpRequest.URL.Scheme = ct.PickScheme(clientOperation.Schemes)
	httpRequest.URL.Host = ct.Host
	httpRequest.Host = ct.Host

	ct.clientOnce.Do(func() {
		ct.client = ct.NewHttpClient()
	})

	if ct.Debug {
		debugBytes, debugErr := httputil.DumpRequestOut(httpRequest, true)
		if debugErr != nil {
			return nil, debugErr
		}
		ct.Logger.Debugf("%s\n", string(debugBytes))
	}

	var hasTimeout bool
	opCtx := clientOperation.Context
	if opCtx == nil {
		opCtx = ct.Context
	} else {
		hasTimeout = true
	}
	if opCtx == nil {
		opCtx = context.Background()
	}

	var ctx context.Context
	var cancel context.CancelFunc
	if hasTimeout {
		ctx, cancel = context.WithCancel(opCtx)
	} else {
		ctx, cancel = context.WithTimeout(opCtx, timeout)
	}
	defer cancel()

	if httpRequest.Body != nil {
		body, err := ioutil.ReadAll(httpRequest.Body)
		if err != nil {
			return nil, err
		}
		ctx = context.WithValue(ctx, "body", body)
		httpRequest.Body = ioutil.NopCloser(bytes.NewReader(body))
		httpRequest.GetBody = func() (io.ReadCloser, error) {
			bodyFromContextAny := httpRequest.Context().Value("body")
			if bodyFromContextBytes, ok := bodyFromContextAny.([]byte); ok {
				bodyReadCloser := ioutil.NopCloser(bytes.NewReader(bodyFromContextBytes))
				return bodyReadCloser, nil
			}
			return nil, fmt.Errorf("invalid body from context")
		}
	}

	client := clientOperation.Client
	if client == nil {
		client = ct.client
	}

	httpRequest = httpRequest.WithContext(ctx)

	if ct.preSendHttpRequestFunc != nil {
		httpRequest, err = ct.preSendHttpRequestFunc(httpRequest)
		if err != nil {
			return nil, err
		}
	}

	httpResponse, err := client.Do(httpRequest)
	if err != nil {
		return nil, err
	}
	defer func(Body io.ReadCloser) {
		_ = Body.Close()
	}(httpResponse.Body)

	contentType := httpResponse.Header.Get(oar.HeaderContentType)
	if contentType == "" {
		contentType = ct.DefaultMediaType
	}

	if ct.Debug {
		printBody := true
		if contentType == oar.DefaultMime {
			printBody = false
		}
		debugBytes, debugErr := httputil.DumpResponse(httpResponse, printBody)
		if debugErr != nil {
			return nil, debugErr
		}
		ct.Logger.Debugf("%s\n", string(debugBytes))
	}

	mediaType, _, err := mime.ParseMediaType(contentType)
	if err != nil {
		return nil, fmt.Errorf("parse content type: %s", err)
	}

	consumer, ok := ct.Consumers[mediaType]
	if !ok {
		if consumer, ok = ct.Consumers["*/*"]; !ok {
			return nil, fmt.Errorf("no consumer: %q", contentType)
		}
	}

	return readResponse.ReadResponse(NewABResponseFromHttpResponse(httpResponse), consumer)
}

//#endregion ABClientTransport (utils.ClientTransport)

//#endregion ABClientTransport

//#region ABRequest

// ABRequest Implements runtime.ClientRequest
type ABRequest struct {
	PathPattern string
	Method      string
	Writer      oar.ClientRequestWriter

	PathParams map[string]string
	Header     http.Header
	Query      url.Values
	FormFields url.Values
	FileFields map[string][]oar.NamedReadCloser
	Payload    interface{}
	Timeout    time.Duration
	Buf        *bytes.Buffer

	GetBodyFunc func(r *ABRequest) []byte
}

//#region ABRequest.New

func NewABRequestFromClientOperation(clientOperation *oar.ClientOperation) (*ABRequest, error) {
	abRequest := ABRequest{
		PathPattern: clientOperation.PathPattern,
		Method:      clientOperation.Method,
		Writer:      clientOperation.Params,

		Header: make(http.Header),
		Query:  make(url.Values),

		Timeout: DefaultTimeout,

		GetBodyFunc: GetRequestBuffer,
	}

	var accept []string
	accept = append(accept, clientOperation.ProducesMediaTypes...)
	if err := abRequest.SetHeaderParam(oar.HeaderAccept, accept...); err != nil {
		return nil, err
	}

	return &abRequest, nil
}

//#endregion ABRequest.New

//#region ABRequest.Utils

func NewHttpRequestFromABRequest(
	r *ABRequest,
	mediaType string,
	basePath string,
	producers map[string]oar.Producer,
	registry oaStrFmt.Registry,
	auth oar.ClientAuthInfoWriter,
) (*http.Request, error) {
	if err := r.Writer.WriteToRequest(r, registry); err != nil {
		return nil, err
	}

	// NOTE(go-openapi):
	// Our body must be an io.Reader.
	// When we create the http.Request, if we pass it a
	// bytes.Buffer then it will wrap it in an io.ReadCloser
	// and set the content length automatically.
	var body io.Reader
	var pr *io.PipeReader
	var pw *io.PipeWriter

	r.Buf = bytes.NewBuffer(nil)
	if r.Payload != nil || len(r.FormFields) > 0 || len(r.FileFields) > 0 {
		body = r.Buf
		if IsMultipart(r, mediaType) {
			pr, pw = io.Pipe()
			body = pr
		}
	}

	if IsFormType(r) {
		if !IsMultipart(r, mediaType) {
			r.Header.Set(oar.HeaderContentType, mediaType)
			formString := r.FormFields.Encode()
			r.Buf.WriteString(formString)
			goto DoneChoosingBodySource
		}

		mp := multipart.NewWriter(pw)
		mpContentType := MangleContentType(mediaType, mp.Boundary())
		r.Header.Set(oar.HeaderContentType, mpContentType)

		go func() {
			defer func() {
				_ = mp.Close()
				_ = pw.Close()
			}()
			for fn, v := range r.FormFields {
				for _, vi := range v {
					if err := mp.WriteField(fn, vi); err != nil {
						_ = pw.CloseWithError(err)
						log.Println(err)
					}
				}
			}

			defer func() {
				for _, ff := range r.FileFields {
					for _, ffi := range ff {
						_ = ffi.Close()
					}
				}
			}()
			for fn, f := range r.FileFields {
				for _, fi := range f {
					buf := bytes.NewBuffer([]byte{})

					_, err := io.Copy(buf, fi)
					if err != nil {
						_ = pw.CloseWithError(err)
						log.Println(err)
					}

					fileBytes := buf.Bytes()
					fileContentType := http.DetectContentType(fileBytes)

					newFi := oar.NamedReader(fi.Name(), buf)

					contentDisposition := fmt.Sprintf(
						`form-data; name="%s"; filename="%s"`,
						EscapeQuotes(fn),
						EscapeQuotes(filepath.Base(fi.Name())))
					mimeHeader := make(textproto.MIMEHeader)
					mimeHeader.Set(HeaderContentDisposition, contentDisposition)
					mimeHeader.Set(oar.HeaderContentType, fileContentType)

					multiPartWriter, err := mp.CreatePart(mimeHeader)
					if err != nil {
						_ = pw.CloseWithError(err)
						log.Println(err)
					} else if _, err := io.Copy(multiPartWriter, newFi); err != nil {
						_ = pw.CloseWithError(err)
						log.Println(err)
					}
				}
			}
		}()

		goto DoneChoosingBodySource
	}

	if r.Payload != nil {
		r.Header.Set(oar.HeaderContentType, mediaType)

		if payloadReader, ok := r.Payload.(io.ReadCloser); ok {
			body = payloadReader
			goto DoneChoosingBodySource
		}

		if payloadReader, ok := r.Payload.(io.Reader); ok {
			body = payloadReader
			goto DoneChoosingBodySource
		}

		producer := producers[mediaType]
		if err := producer.Produce(r.Buf, r.Payload); err != nil {
			return nil, err
		}
	}

DoneChoosingBodySource:

	if oar.CanHaveBody(r.Method) && body == nil && r.Header.Get(oar.HeaderContentType) == "" {
		r.Header.Set(oar.HeaderContentType, mediaType)
	}

	if auth != nil {
		// NOTE(go-openapi):
		// If we're not using r.buf as our http.Request's body,
		// either the payload is an io.Reader or io.ReadCloser,
		// or we're doing a multipart form/file.
		//
		// In those cases, if the AuthenticateRequest call asks for the body,
		// we must read it into a buffer and provide that, then use that buffer
		// as the body of our http.Request.
		//
		// This is done in-line with the GetBody() request rather than ahead
		// of time, because there's no way to know if the AuthenticateRequest
		// will even ask for the body of the request.
		//
		// If for some reason the copy fails, there's no way to return that
		// error to the GetBody() call, so return it afterwards.
		//
		// An error from the copy action is prioritized over any error
		// from the AuthenticateRequest call, because the misread
		// body may have interfered with the auth.
		var copyErr error
		if buf, ok := body.(*bytes.Buffer); body != nil && (!ok || buf != r.Buf) {
			var copied bool
			r.GetBodyFunc = func(r *ABRequest) []byte {
				if copied {
					return GetRequestBuffer(r)
				}

				defer func() {
					copied = true
				}()

				if _, copyErr = io.Copy(r.Buf, body); copyErr != nil {
					return nil
				}

				if closer, ok := body.(io.ReadCloser); ok {
					if copyErr = closer.Close(); copyErr != nil {
						return nil
					}
				}

				body = r.Buf
				return GetRequestBuffer(r)
			}
		}

		authErr := auth.AuthenticateRequest(r, registry)

		if copyErr != nil {
			return nil, fmt.Errorf("error retrieving the response body: %v", copyErr)
		}

		if authErr != nil {
			return nil, authErr
		}
	}

	var reinstateSlash bool
	if r.PathPattern != "" &&
		r.PathPattern != "/" &&
		r.PathPattern[len(r.PathPattern)-1] == '/' {
		reinstateSlash = true
	}
	urlPath := path.Join(basePath, r.PathPattern)
	for k, v := range r.PathParams {
		urlPath = strings.Replace(urlPath, "{"+k+"}", url.PathEscape(v), -1)
	}
	if reinstateSlash {
		urlPath = urlPath + "/"
	}

	httpRequest, err := http.NewRequest(r.Method, urlPath, body)
	if err != nil {
		return nil, err
	}

	httpRequest.URL.RawQuery = r.Query.Encode()
	httpRequest.Header = r.Header

	httpRequest.GetBody = func() (io.ReadCloser, error) {
		if readCloser, ok := body.(io.ReadCloser); ok {
			return readCloser, nil
		}
		return nil, nil
	}

	return httpRequest, nil
}

func IsFormType(r *ABRequest) bool {
	return len(r.FormFields) > 0 || len(r.FileFields) > 0
}

func IsMultipart(r *ABRequest, mediaType string) bool {
	if len(r.FileFields) > 0 {
		return true
	}
	return oar.MultipartFormMime == mediaType
}

func GetRequestBuffer(r *ABRequest) []byte {
	if r.Buf == nil {
		return nil
	}
	return r.Buf.Bytes()
}

func MangleContentType(mediaType, boundary string) string {
	if strings.ToLower(mediaType) == oar.URLencodedFormMime {
		return fmt.Sprintf("%s; boundary=%s", mediaType, boundary)
	}
	return "multipart/form-data; boundary=" + boundary
}

//#endregion ABRequest.Utils

//#region ABRequest (runtime.ClientRequest)

func (r *ABRequest) GetBody() []byte {
	return r.GetBodyFunc(r)
}

func (r *ABRequest) GetBodyParam() interface{} {
	return r.Payload
}

func (r *ABRequest) GetFileParam() map[string][]oar.NamedReadCloser {
	return r.FileFields
}

func (r *ABRequest) GetHeaderParams() http.Header {
	return r.Header
}

func (r *ABRequest) GetMethod() string {
	return r.Method
}

func (r *ABRequest) GetQueryParams() url.Values {
	var result = make(url.Values)
	for key, value := range r.Query {
		result[key] = append([]string{}, value...)
	}
	return result
}

func (r *ABRequest) GetPath() string {
	// TODO: move logic into a pure function
	pathStr := r.PathPattern
	for k, v := range r.PathParams {
		pathStr = strings.Replace(pathStr, "{"+k+"}", v, -1)
	}
	return pathStr
}

func (r *ABRequest) SetBodyParam(payload interface{}) error {
	r.Payload = payload
	return nil
}

func (r *ABRequest) SetFileParam(name string, files ...oar.NamedReadCloser) error {
	for _, file := range files {
		if actualFile, ok := file.(*os.File); ok {
			fi, err := os.Stat(actualFile.Name())
			if err != nil {
				return err
			}
			if fi.IsDir() {
				return fmt.Errorf("%q is a directory, only files are supported", file.Name())
			}
		}
	}
	if r.FileFields == nil {
		r.FileFields = make(map[string][]oar.NamedReadCloser)
	}
	r.FileFields[name] = files
	if r.FormFields == nil {
		r.FormFields = make(url.Values)
	}
	return nil
}

func (r *ABRequest) SetFormParam(name string, values ...string) error {
	if r.FormFields == nil {
		r.FormFields = make(url.Values)
	}
	r.FormFields[name] = values
	return nil
}

func (r *ABRequest) SetHeaderParam(name string, values ...string) error {
	if r.Header == nil {
		r.Header = make(http.Header)
	}
	r.Header[http.CanonicalHeaderKey(name)] = values
	return nil
}

func (r *ABRequest) SetPathParam(name string, value string) error {
	if r.PathParams == nil {
		r.PathParams = make(map[string]string)
	}
	r.PathParams[name] = value
	return nil
}

func (r *ABRequest) SetQueryParam(name string, values ...string) error {
	if r.Query == nil {
		r.Query = make(url.Values)
	}
	r.Query[name] = values
	return nil
}

func (r *ABRequest) SetTimeout(timeout time.Duration) error {
	r.Timeout = timeout
	return nil
}

//#endregion ABRequest (runtime.ClientRequest)

//#endregion ABRequest

//#region ABResponse

// ABResponse Implements runtime.ClientResponse
type ABResponse struct {
	response *http.Response
}

func NewABResponseFromHttpResponse(httpResponse *http.Response) ABResponse {
	return ABResponse{response: httpResponse}
}

//#region ABResponse (runtime.ClientResponse)

func (r ABResponse) Body() io.ReadCloser {
	return r.response.Body
}

func (r ABResponse) Code() int {
	return r.response.StatusCode
}

func (r ABResponse) GetHeader(name string) string {
	return r.response.Header.Get(name)
}

func (r ABResponse) Message() string {
	return r.response.Status
}

//#endregion ABResponse (runtime.ClientResponse)

//#endregion ABResponse

//#endregion Structs

//#region Utils

func EscapeQuotes(s string) string {
	return strings.NewReplacer("\\", "\\\\", `"`, "\\\"").Replace(s)
}

func SelectScheme(schemes []string) string {
	schemeLen := len(schemes)
	if schemeLen == 0 {
		return ""
	}
	scheme := schemes[0]
	if scheme == "http" &&
		schemeLen > 1 {
		for _, otherScheme := range schemes {
			if otherScheme == "https" {
				scheme = otherScheme
				break
			}
		}
	}
	return scheme
}

//#endregion Utils
