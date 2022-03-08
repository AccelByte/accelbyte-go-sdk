// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package log

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

//{'url': 'http://0.0.0.0:8080/iam/v3/oauth/token', 'method': 'POST', 'headers': {'Accept': 'application/json', 'Content-Type': 'application/x-www-form-urlencoded', 'Authorization': 'Basic YWRtaW46YWRtaW4=', 'X-Amzn-Trace-Id': '1-6216c182-06289f1aed29205b69ab4e09', 'User-Agent': 'AccelBytePythonSDK/0.8.0', 'Content-Length': '29'}, 'data': 'grant_type=client_credentials'}
func LogRequest(r *http.Request) interface{} {
	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`method`: `%v`, "+
			"`headers`: `%v`, "+
			"`data`: `%v`, ", r.URL, r.Method, r.Header, r.Body)

	return logString
}

//{'url': 'http://0.0.0.0:8080/iam/v3/oauth/token', 'status_code': 200, 'elapsed': 0.002655, 'headers': {'Content-Type': 'application/json', 'Content-Length': '687', 'Server': 'Werkzeug/2.0.3 Python/3.9.10', 'Date': 'Wed, 23 Feb 2022 23:21:38 GMT'}, 'body': b'{\n  "access_token": "foo",\n  "bans": [\n    {\n      "ban": "jKUcwRKClLLG",\n      "enabled": false,\n      "endDate": "1990-01-01T00:00:00Z",\n      "targetedNamespace": "lmhhvRFqRgrR"\n    }\n  ],\n  "display_name": "jNSIUroJbsXE",\n  "expires_in": 92,\n  "namespace": "rlOjmchlzPOa",\n  "namespace_roles": [\n    {\n      "namespace": "MtIscOfPDVqr",\n      "roleId": "hGKaTerQApXc"\n    }\n  ],\n  "permissions": [\n    {\n      "action": 89,\n      "resource": "lzHsFDbXwjZQ"\n    }\n  ],\n  "refresh_expires_in": 48,\n  "refresh_token": "aXhexIRwabJB",\n  "roles": [\n    "HGgylJYeQIst"\n  ],\n  "scope": "vIYYfFIePDqe",\n  "token_type": "RaDCpoEnacra",\n  "user_id": "RnQUcDSIszGi",\n  "xuid": "mazukDglGYCe"\n}\n'}
func LogResponse(r *http.Response) interface{} {
	bodyBytes, err := io.ReadAll(r.Body)
	if err != nil {
		log.Fatal(err)
	}
	bodyString := string(bodyBytes)
	logString := fmt.Sprintf(
		"`url`: `%v`, "+
			"`status_code`: `%v`, "+
			"`headers`: `%v`, "+
			"`data`: `%v`, ", r.Request.URL, r.StatusCode, r.Header, bodyString)

	return logString
}
