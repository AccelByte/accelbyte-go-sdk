// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"context"
	"fmt"
	"io/ioutil"
	"net/http"
	"reflect"
	"strings"
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

type PostAuthorizationParams struct {
	GrantType    string
	ClientId     string
	ClientSecret string
	RedirectUri  string
	Code         string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

type GetAuthorizationParams struct {
	Username      string
	Authorization string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

func (p GetAuthorizationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(p.timeout); err != nil {
		return err
	}
	var res []error

	// TODO query param for GET method (Username and Authorization)
	// path param platformId
	if err := r.SetPathParam("Username", p.Username); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("Authorization", p.Authorization); err != nil {
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

func (p GetAuthorizationParams) Validate() error {
	return nil
}

func (o PostAuthorizationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

func (o PostAuthorizationParams) Validate() error {
	if o.GrantType == "" {
		return fmt.Errorf("empty param")
	}

	return nil
}

type PhanthauthService struct {
	TestOperations ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

func New(transport runtime.ClientTransport, runtime *httptransport.Runtime) *PhanthauthService {
	cli := new(PhanthauthService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.TestOperations = NewService(transport)

	return cli
}

func NewClientWithBasePath(url string, endpoint string) *PhanthauthService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)
	transport.Transport = utils.SetLogger(transport.Transport)

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
	Get(params *GetAuthorizationParams) (*Ok, error)
	Post(params *PostAuthorizationParams) (*Ok, error)

	SetTransport(transport runtime.ClientTransport)
}

func (a *Client) Get(params *GetAuthorizationParams) (*Ok, error) {
	if err := params.Validate(); err != nil {
		return nil, err
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetCodeFromPhantauth",
		Method:             "GET",
		PathPattern:        "/user/{Username}/token/{Authorization}",
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

func (a *Client) Post(params *PostAuthorizationParams) (*Ok, error) {
	if err := params.Validate(); err != nil {
		return nil, err
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PostPlatformTokenFromPhantauth",
		Method:             "POST",
		PathPattern:        "/auth/token",
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
	code string
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
