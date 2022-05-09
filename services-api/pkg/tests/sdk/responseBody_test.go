// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"errors"
	"io"
	"net/http"
	"reflect"
	"testing"

	"github.com/go-openapi/runtime"
)

func TestResp_Success200(t *testing.T) {
	bodyBuffer200 := NewStringBody("200")
	type args struct {
		body io.ReadCloser
	}
	tests := []struct {
		name string
		args args
		want Response
	}{
		{
			name: "200 empty body json",
			args: args{},
			want: Response{Response: http.Response{
				StatusCode: 200,
				Body:       NewStringBody(""),
			}},
		},
		{
			name: "200 with body",
			args: args{
				body: bodyBuffer200,
			},
			want: Response{Response: http.Response{
				StatusCode: 200,
				Body:       bodyBuffer200,
			}},
		},
		{
			name: "200 with body binary",
			args: args{
				body: bodyBuffer200,
			},
			want: Response{Response: http.Response{
				StatusCode: 200,
				Body:       bodyBuffer200, // todo: binary
			}},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := New200Response(tt.args.body); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("200 Response = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestResp_Success201(t *testing.T) {
	bodyBuffer201 := NewStringBody("201")
	type args struct {
		body io.ReadCloser
	}
	tests := []struct {
		name string
		args args
		want Response
	}{
		{
			name: "201 with body",
			args: args{
				body: bodyBuffer201,
			},
			want: Response{Response: http.Response{
				StatusCode: 201,
				Body:       bodyBuffer201,
			}},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := New201Response(tt.args.body); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("201 Response = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestResp_Success204(t *testing.T) {
	bodyBuffer204 := NewStringBody("204")
	type args struct {
		body io.ReadCloser
	}
	tests := []struct {
		name string
		args args
		want Response
	}{
		{
			name: "204 with body",
			args: args{
				body: bodyBuffer204,
			},
			want: Response{Response: http.Response{
				StatusCode: 204,
				Body:       bodyBuffer204,
			}},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := New204Response(tt.args.body); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("204 Response = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestResp_Error(t *testing.T) {
	type args struct {
		err  error
		code int
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		{
			name: "400 error",
			args: args{
				err:  &runtime.APIError{Code: 400},
				code: 400,
			},
			want: true,
		},
		{
			name: "403 error",
			args: args{
				err:  &runtime.APIError{Code: 403},
				code: 403,
			},
			want: true,
		},
		{
			name: "404 error",
			args: args{
				err:  &runtime.APIError{Code: 404},
				code: 404,
			},
			want: true,
		},
		{
			name: "503 error",
			args: args{
				err:  &runtime.APIError{Code: 503},
				code: 503,
			},
			want: true,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := StatusCode(tt.args.err, tt.args.code); got != tt.want {
				t.Errorf("Error Code = %v, want %v", got, tt.want)
			}
		})
	}
}

func StatusCode(err error, code int) bool {
	var rtError *runtime.APIError
	rtCode := -1

	if errors.As(err, &rtError) {
		rtCode = rtError.Code
	}

	return rtCode == code
}
