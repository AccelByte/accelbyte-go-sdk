// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"io"
	"io/ioutil"
	"net/http"
	"strings"
)

// NewStringBody creates an io.ReadCloser from a string.
func NewStringBody(b string) io.ReadCloser {
	return ioutil.NopCloser(strings.NewReader(b))
}

type Response struct {
	Response http.Response
	Error    error
}

func New200Response(body io.ReadCloser) Response {
	return Response{Response: http.Response{
		StatusCode: 200,
		Body:       getBody(body),
	}}
}

func New201Response(body io.ReadCloser) Response {
	return Response{Response: http.Response{
		StatusCode: 201,
		Body:       getBody(body),
	}}
}

func New204Response(body io.ReadCloser) Response {
	return Response{Response: http.Response{
		StatusCode: 204,
		Body:       getBody(body),
	}}
}

func getBody(body io.ReadCloser) io.ReadCloser {
	if body == nil {
		return NewStringBody("")
	}
	return body
}
