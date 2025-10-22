// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"fmt"
	"net/http"
)

const nilString = "nil"

func LogRequest(r *http.Request) interface{} {
	if r == nil {
		return nilString
	}

	var url interface{}
	if r.URL != nil {
		url = r.URL
	} else {
		url = "unknown"
	}

	var header interface{}
	if r.Header != nil {
		header = r.Header
	} else {
		header = nilString
	}

	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`method`: `%v`, "+
			"`headers`: `%v`, ", url, r.Method, header)

	return logString
}

func LogResponse(r *http.Response) interface{} {

	if r == nil {
		return nilString
	}

	var url interface{}
	if r.Request != nil {
		url = r.Request.URL
	} else {
		url = "unknown"
	}

	var header interface{}
	if r.Header != nil {
		header = r.Header
	} else {
		header = nilString
	}

	var body interface{}
	if r.Body != nil {
		body = r.Body
	} else {
		body = nilString
	}

	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`status_code`: `%v`, "+
			"`headers`: `%v`, "+
			"`data`: `%v`, ", url, r.StatusCode, header, body)

	return logString
}
