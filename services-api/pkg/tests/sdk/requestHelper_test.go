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
	"reflect"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/require"
)

func get(t *testing.T, url string) []byte {
	t.Helper()

	return req(t, url, "GET", nil)
}

func req(t *testing.T, url, method string, body []byte) []byte {
	t.Helper()

	cl := &http.Client{}

	r, err := http.NewRequest(method, url, bytes.NewReader(body))
	require.Nil(t, err, "cannot create request")

	resp, err := cl.Do(r)
	require.Nil(t, err, "request failed")

	defer resp.Body.Close()
	require.Equal(t, http.StatusOK, resp.StatusCode)

	b, err := ioutil.ReadAll(resp.Body)
	require.Nil(t, err, "failed to read response body")

	return b
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

func (p GetParams) Validate() error {
	if p.Param == "" {
		return fmt.Errorf("empty param")
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
	Get(params *GetParams) (*Ok, error)

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
