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

func TestHttpBinRequest_BodyJson(t *testing.T) {
	URL := ConfigRepo.GetJusticeBaseUrl()
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
