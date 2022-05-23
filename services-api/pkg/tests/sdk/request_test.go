// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"bytes"
	"context"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"net/url"
	"reflect"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/assert"
)

func TestReq_QueryString(t *testing.T) {
	type args struct {
		req *http.Request
	}
	tests := []struct {
		name string
		args args
		err  error
	}{
		{
			name: "request query",
			args: args{
				req: &http.Request{
					Header: map[string][]string{
						"Authorization": {"Bearer foo"},
						"Content-Type":  {"application/json"},
					},
					Body: NewStringBody("key@123"),
					URL: &url.URL{
						Path:     "/abc/def:123?x=1&y=2",
						Host:     ConstURL,
						RawQuery: "?key1=value1&",
					},
					Host:   ConstURL,
					Method: "POST",
				},
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			err := AssertRequest(tt.args.req)
			var errString string
			if tt.err != nil {
				errString = tt.err.Error()
			}
			if err != nil || errString != "" {
				assert.EqualError(t, err, errString)

				return
			}

			assert.NoError(t, err)
		})
	}
}

func TestReq_BodyJson(t *testing.T) {
	type args struct {
		req *http.Request
	}

	tests := []struct {
		name string
		args args
		err  error
	}{
		{
			name: "request query",
			args: args{
				req: &http.Request{
					Header: map[string][]string{
						"Authorization": {"Bearer foo"},
						"Content-Type":  {"application/json"},
					},
					Body: NewStringBody(`{"key":value}`),
					URL: &url.URL{
						Path:     "/abc/def:123?x=1&y=2",
						Host:     ConstURL,
						RawQuery: "?key1=value1&",
					},
					Host:   ConstURL,
					Method: "POST",
				},
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			err := AssertRequest(tt.args.req)
			var errString string
			if tt.err != nil {
				errString = tt.err.Error()
			}
			if err != nil || errString != "" {
				assert.EqualError(t, err, errString)

				return
			}

			assert.NoError(t, err)
		})
	}
}

func TestReqHeader_UserAgent(t *testing.T) {
	type args struct {
		rt        http.RoundTripper
		userAgent string
	}
	tests := []struct {
		name      string
		args      args
		userAgent string
	}{
		{
			name:      "user agent",
			args:      args{userAgent: utils.UserAgentGen()},
			userAgent: utils.UserAgentGen(),
		},
	}
	transport := httptransport.New(ConstURL, "/user-agent", nil)
	res := &http.Response{
		Header: map[string][]string{
			"User-Agent": {utils.UserAgentGen()},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			transport.Transport = utils.SetHeader(tt.args.rt, "", tt.args.userAgent)
			if res.Header.Get("User-Agent") != tt.userAgent {
				t.Errorf("agent = %v, want %v", res.Header.Get("User-Agent"), tt.userAgent)
			}
			if transport == nil {
				t.Errorf("Header is nil")
			}
		})
	}
}

func TestReqHeader_AmazonTraceId(t *testing.T) {
	type args struct {
		rt            http.RoundTripper
		amazonTraceId string
	}
	tests := []struct {
		name          string
		args          args
		amazonTraceId string
	}{
		{
			name:          "amazon trace id",
			args:          args{amazonTraceId: utils.AmazonTraceIDGen()},
			amazonTraceId: utils.AmazonTraceIDGen(),
		},
	}
	transport := httptransport.New(ConstURL, "/headers", nil)
	res := &http.Response{
		Header: map[string][]string{
			"X-Amzn-Trace-Id": {utils.AmazonTraceIDGen()},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			transport.Transport = utils.SetHeader(tt.args.rt, "", tt.args.amazonTraceId)
			if res.Header.Get("X-Amzn-Trace-Id") != tt.amazonTraceId {
				assert.NotEqual(t, res.Header.Get("X-Amzn-Trace-Id"), tt.amazonTraceId, "equal except the timestamp")
			}
			if transport == nil {
				t.Errorf("header is nil")
			}
		})
	}
}

func TestReq_PathParameter(t *testing.T) {
	tests := []struct {
		name   string
		params GetParams
		err    string
	}{
		{
			name: "path parameter",
			params: GetParams{
				Param:   "test@123",
				timeout: httptransport.DefaultTimeout,
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			input := &GetParams{
				Param: tt.params.Param,
			}
			ok, err := TestService.Client.TestOperations.Get(input)
			assert.Nil(t, err, "error should be empty")
			assert.NotNil(t, ok, "should not empty")
		})
	}
}

// needs to be moved to other file
type GetParams struct {
	Param string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

func (p GetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(p.timeout); err != nil {
		return err
	}
	var res []error

	// query param anything
	qrParam := p.Param

	if qParam := qrParam; qParam != "" {
		if err := r.SetQueryParam("test@123", qrParam); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

func (p GetParams) Validate() error {
	if p.Param == "" {
		return fmt.Errorf("empty param")
	}

	return nil
}

type MockServerConfigure struct {
	Enabled   bool `json:"enabled"`
	Overwrite bool `json:"overwrite"`
	Status    int  `json:"status"`
}

// needs to be moved to other file
type MockServerConfigureParams struct {
	/*Cookie*/
	Cookie *string
	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	Body *MockServerConfigure

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

func (o *MockServerConfigureParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

func (o MockServerConfigureParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

func (o MockServerConfigureParams) Validate() error {
	if o.Body == nil {
		return fmt.Errorf("empty body")
	}

	return nil
}

func AssertRequest(req *http.Request) error {
	if req.Body != nil {
		if req.Body != nil {
			_, err := ioutil.ReadAll(
				io.TeeReader(req.Body, new(bytes.Buffer)),
			)
			if err != nil {
				return err
			}
		}
	}

	return nil
}

type AnythingService struct {
	TestOperations ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

func New(transport runtime.ClientTransport, runtime *httptransport.Runtime) *AnythingService {
	cli := new(AnythingService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.TestOperations = NewService(transport)

	return cli
}

func NewClientWithBasePath(url string, endpoint string) *AnythingService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)
	transport.Transport = utils.SetHeader(transport.Transport, utils.UserAgentGen(), utils.AmazonTraceIDGen())

	return New(transport, transport)
}

// NewService creates the operations
func NewService(transport runtime.ClientTransport) ClientService {
	return &Client{transport: transport}
}

type Client struct {
	transport runtime.ClientTransport
}

type ClientService interface {
	Get(params *GetParams) (*Ok, error)
	MockServerConfigure(params *MockServerConfigureParams) (*Ok, error)
	MockServerResetOverwriteResponse(params *MockServerConfigureParams) (*Ok, error)

	SetTransport(transport runtime.ClientTransport)
}

func (a *Client) Get(params *GetParams) (*Ok, error) {
	if err := params.Validate(); err != nil {
		return nil, err
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "get",
		Method:             "GET",
		PathPattern:        "/get",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Reader:             &GetReader{},
		Params:             params,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {
	case *Ok:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) MockServerConfigure(params *MockServerConfigureParams) (*Ok, error) {
	if err := params.Validate(); err != nil {
		return nil, err
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClient(&http.Client{Transport: params.RetryPolicy})
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "mockServerConfigure",
		Method:             "POST",
		PathPattern:        "/configure-overwrite-response",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Reader:             &GetReader{},
		Params:             params,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {
	case *Ok:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) MockServerResetOverwriteResponse(params *MockServerConfigureParams) (*Ok, error) {
	if err := params.Validate(); err != nil {
		return nil, err
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClient(&http.Client{Transport: params.RetryPolicy})
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "MockServerResetOverwriteResponse",
		Method:             "POST",
		PathPattern:        "/reset-overwrite-response",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Reader:             &GetReader{},
		Params:             params,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {
	case *Ok:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}

type Ok struct {
}

func NewOk() *Ok {
	return &Ok{}
}

type GetReader struct {
}

func (o *GetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOk()
		if err := result.readResponse(response, consumer); err != nil {
			return nil, err
		}

		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("requested url returns an error %d: %s", response.Code(), string(data))
	}
}

func (o *Ok) readResponse(response runtime.ClientResponse, consumer runtime.Consumer) error {
	return nil
}
