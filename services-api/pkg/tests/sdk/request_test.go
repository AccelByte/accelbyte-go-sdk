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
			_, err := TestService.Client.GetOperations.Get(input)
			assert.NotNil(t, err, "error is nil")
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
	GetOperations ClientService

	Transport runtime.ClientTransport
}

func New(transport runtime.ClientTransport) *AnythingService {
	cli := new(AnythingService)
	cli.Transport = transport
	cli.GetOperations = NewService(transport)

	return cli
}

func NewClientWithBasePath(url string, endpoint string) *AnythingService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)

	return New(transport)
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

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "get",
		Method:             "GET",
		PathPattern:        "/get",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
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
	Payload interface{}
}
