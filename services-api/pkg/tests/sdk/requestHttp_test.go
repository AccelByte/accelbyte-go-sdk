// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"net/http"
	"testing"

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

func get(t *testing.T, url string) []byte {
	return req(t, url, "GET", nil)
}

func req(t *testing.T, url, method string, body []byte) []byte {
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
