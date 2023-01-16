// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"encoding/json"
	"net/http"
	"net/url"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

var (
	ConstURL      = "http://localhost:8070"
	ServiceClient = NewClientWithBasePath("localhost:8070", "")
)

func TestHttpBinRequest_BodyJson(t *testing.T) {
	URL := ConstURL
	b := get(t, URL+"/get?foo=bar")
	v := struct {
		Args    map[string]interface{} `json:"args"`
		Headers map[string]string      `json:"headers"`
		Origin  string                 `json:"origin"`
	}{}
	require.Nil(t, json.Unmarshal(b, &v))
	require.NotEmpty(t, v.Args, "args empty")
	require.EqualValues(t, map[string]interface{}{
		"foo": "bar",
	}, v.Args)
	require.NotEmpty(t, v.Headers)
	require.NotEmpty(t, v.Origin)
}

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
	tests := []struct {
		name   string
		params GetParams
		err    error
	}{
		{
			name: "user agent",
			params: GetParams{
				Param: "param",
			},
		},
	}
	transport := httptransport.New(ConstURL, "/user-agent", nil)
	if transport == nil {
		t.Errorf("Transport is nil")
	}
	res := &http.Response{
		Header: map[string][]string{
			"User-Agent": {utils.UserAgentGen()},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			ok, err := ServiceClient.TestOperations.Get(&tt.params)
			if res.Header.Get("User-Agent") == "" {
				assert.Errorf(t, err, "agent is nil, want %v", res.Header.Get("User-Agent"))
			}
			assert.NotNil(t, ok)
			assert.Nil(t, err)
		})
	}
}

func TestReqHeader_AmazonTraceId(t *testing.T) {
	tests := []struct {
		name   string
		params GetParams
		err    error
	}{
		{
			name: "X-Amzn-Trace-Id",
			params: GetParams{
				Param: "param",
			},
		},
	}
	transport := httptransport.New(ConstURL, "/X-Amzn-Trace-Id", nil)
	if transport == nil {
		t.Errorf("Transport is nil")
	}
	res := &http.Response{
		Header: map[string][]string{
			"X-Amzn-Trace-Id": {utils.AmazonTraceIDGen()},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			ok, err := ServiceClient.TestOperations.Get(&tt.params)
			if res.Header.Get("X-Amzn-Trace-Id") == "" {
				assert.Errorf(t, err, "traceId is nil, want %v", res.Header.Get("X-Amzn-Trace-Id"))
			}
			assert.NotNil(t, ok)
			assert.Nil(t, err)
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
			ok, err := ServiceClient.TestOperations.Get(input)
			assert.Nil(t, err, "error should be empty")
			assert.NotNil(t, ok, "should not empty")
		})
	}
}
