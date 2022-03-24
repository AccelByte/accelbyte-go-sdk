// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package log

import (
	"fmt"
	"net/http"
)

func LogRequest(r *http.Request) interface{} {
	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`method`: `%v`, "+
			"`headers`: `%v`, ", r.URL, r.Method, r.Header)

	return logString
}

func LogResponse(r *http.Response) interface{} {
	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`status_code`: `%v`, "+
			"`headers`: `%v`, "+
			"`data`: `%v`, ", r.Request.URL, r.StatusCode, r.Header, r.Body)

	return logString
}
