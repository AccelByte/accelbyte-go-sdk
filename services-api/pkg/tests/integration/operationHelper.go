// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"context"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"reflect"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

type TestWrapperService struct {
	Client           *PhanthauthService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

var (
	OAuth20PhantAuthService = &TestWrapperService{
		Client:           NewClientWithBasePath("phantauth.net", ""),
		ConfigRepository: &ConfigRepositoryPhantAuthImpl{},
		TokenRepository:  &TokenRepositoryPhantAuthImpl{},
	}
)

// SECTION 1 - parameters of GET
type GetPhantauthParams struct {
	Username string
	Kind     string

	RetryPolicy    *utils.Retry
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

func (g GetPhantauthParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(g.timeout); err != nil {
		return err
	}
	var res []error

	// path param kind
	if err := r.SetPathParam("kind", g.Kind); err != nil {
		return err
	}

	// path param username
	if err := r.SetPathParam("username", g.Username); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

// SECTION 1 - parameters of POST
type PostPhantauthParams struct {
	ClientID     string
	ClientSecret string
	RedirectURI  string
	Code         string
	GrantType    string

	RetryPolicy    *utils.Retry
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

func (p *PostPhantauthParams) Validate() error {
	return nil
}

func (p *PostPhantauthParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(p.timeout); err != nil {
		return err
	}
	var res []error

	// form param client_id
	frClientID := p.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// form param client_secret
	frClientSecret := p.ClientSecret
	fClientSecret := frClientSecret
	if fClientSecret != "" {
		if err := r.SetFormParam("client_secret", fClientSecret); err != nil {
			return err
		}
	}

	// form param code
	frCode := p.Code
	fCode := frCode
	if fCode != "" {
		if err := r.SetFormParam("code", fCode); err != nil {
			return err
		}
	}

	// form param grant_type
	frGrantType := p.GrantType
	fGrantType := frGrantType
	if fGrantType != "" {
		if err := r.SetFormParam("grant_type", fGrantType); err != nil {
			return err
		}
	}

	// form param redirect_uri
	frRedirectURI := p.RedirectURI
	fRedirectURI := frRedirectURI
	if fRedirectURI != "" {
		if err := r.SetFormParam("redirect_uri", fRedirectURI); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}

// SECTION 2 - response of GET
type GetReader struct{}

func (o *GetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		result := &Get200Error{Payload: string(data)} // custom workaround for reading text/plain Content-Type response

		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("requested url returns an error %d: %s", response.Code(), string(data))
	}
}

// Get200Error got renamed because linter is complaining "should conform to the `XxxError` format (errname)"
type Get200Error struct {
	Payload string
}

func (o *Get200Error) Error() string {
	return fmt.Sprintf("[GET /user/{username}/token/{kind}][%d] getOK  %+v", 200, o.Payload)
}

func (o *Get200Error) PostPayload() string {
	return o.Payload
}

// SECTION 2 - response of POST
type PostReader struct {
}

func (p *PostReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPostOK()
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

// Post200Error got renamed because linter is complaining "should conform to the `XxxError` format (errname)"
type Post200Error struct {
	Payload *OauthmodelPhantauthToken
}

func NewPostOK() *Post200Error {
	return &Post200Error{}
}

func (p *Post200Error) Error() string {
	return fmt.Sprintf("[POST /auth/token][%d] postOK  %+v", 200, p.Payload)
}

func (p *Post200Error) PostPayload() *OauthmodelPhantauthToken {
	return p.Payload
}

func (p *Post200Error) readResponse(response runtime.ClientResponse, consumer runtime.Consumer) error {
	p.Payload = new(OauthmodelPhantauthToken)

	// response payload
	if err := consumer.Consume(response.Body(), &p.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// OauthmodelPhantauthToken is an addition for SECTION 2 - response of POST
type OauthmodelPhantauthToken struct {
	AccessToken  *string `json:"access_token"`
	IDToken      *string `json:"id_token"`
	RefreshToken *string `json:"refresh_token"`
	TokenType    *string `json:"token_type"`
}

// SECTION 3 - service client
type PhanthauthService struct {
	ClientPhantauthService ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

func New(transport runtime.ClientTransport, runtime *httptransport.Runtime) *PhanthauthService {
	cli := new(PhanthauthService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.ClientPhantauthService = NewService(transport)

	return cli
}

func NewClientWithBasePath(url string, endpoint string) *PhanthauthService {
	schemes := []string{"https"}
	//if strings.HasSuffix(url, ":443") { // the phantauth does not have the suffix :443, so it uses directly to https for POST endpoint
	//	schemes = []string{"https"}
	//}

	transport := httptransport.New(url, endpoint, schemes)
	transport.Transport = utils.SetLogger(transport.Transport)

	return New(transport, transport)
}

// SECTION 4 - operation client
func NewService(transport runtime.ClientTransport) ClientService {
	return &Client{transport: transport}
}

type Client struct {
	transport runtime.ClientTransport
}

type ClientService interface {
	Get(params *GetPhantauthParams) (*Get200Error, error)
	Post(params *PostPhantauthParams) (*Post200Error, error)

	SetTransport(transport runtime.ClientTransport)
}

func (a *Client) Get(params *GetPhantauthParams) (*Get200Error, error) {
	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPhantauth",
		Method:             "GET",
		PathPattern:        "/user/{username}/token/{kind}",
		ProducesMediaTypes: []string{"text/plain"},
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
	case *Get200Error:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

func (a *Client) Post(params *PostPhantauthParams) (*Post200Error, error) {
	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "Post",
		Method:             "POST",
		PathPattern:        "/auth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Reader:             &PostReader{},
		Params:             params,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {
	case *Post200Error:
		return v, nil

	default:
		return nil, fmt.Errorf("unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
