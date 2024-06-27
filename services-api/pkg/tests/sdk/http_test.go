// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"bytes"
	"io"
	"io/ioutil"
	"mime/multipart"
	"os"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/stretchr/testify/assert"
)

func TestUploadBinary(t *testing.T) {
	token, err := oAuth20Service.TokenRepository.GetToken()
	if err != nil {
		return
	}
	url := mockServerBaseUrl + "/lobby/v1/admin/config/namespaces/test/import"

	filePath := "test.bin"
	err = os.WriteFile(filePath, []byte("test"), 0666)
	if err != nil {
		assert.Nil(t, err)
	}

	file, err := os.Open(filePath)
	if err != nil {
		assert.Nil(t, err)
	}

	var requestBody bytes.Buffer
	w := multipart.NewWriter(&requestBody)

	part, err := w.CreateFormFile("file", filePath)
	assert.Nil(t, err)

	_, err = io.Copy(part, file)
	assert.Nil(t, err)

	// Arrange - cleaned up after done
	defer func() {
		_ = os.Remove(filePath)
		_ = w.Close()
	}()

	resp, errResp := utils.SimpleHTTPCall(utils.GetClient(), url, "POST", "Bearer "+*token.AccessToken, "", &requestBody)
	if errResp != nil {
		assert.Nil(t, errResp)
	}
	respBody, errRespBody := ioutil.ReadAll(resp.Body)
	if errRespBody != nil {
		assert.Nil(t, errRespBody)
	}
	if errResp != nil {
		assert.NotNil(t, errResp, "err response is expected. the endpoint only accept JSON file. "+errResp.Error())
	}
	t.Logf(string(respBody))
	assert.NotNil(t, string(respBody))
}
