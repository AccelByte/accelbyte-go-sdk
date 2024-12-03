// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sdk_test

import (
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"strings"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/stretchr/testify/assert"
)

// Helper function to set up a mock server
func setupMockServer(t *testing.T, method string, content string) *httptest.Server {
	t.Helper()

	return httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method != method {
			t.Errorf("Expected '%s' request, got '%s'", method, r.Method)
		}
		if !strings.HasPrefix(r.Header.Get("Authorization"), "Bearer ") {
			t.Errorf("Expected Authorization header to start with 'Bearer '")
		}
		if method == http.MethodPost {
			_, err := io.ReadAll(r.Body)
			if err != nil {
				t.Errorf("Failed to read request body: %v", err)
			}
		}
		_, err := w.Write([]byte(content))
		if err != nil {
			t.Errorf("Failed to write the content. %v", err)
		}
	}))
}

// Helper function to create a temporary file for binary upload
func createTempFile(t *testing.T, content string) *os.File {
	t.Helper()

	file, err := os.CreateTemp("", "upload-test-*.bin")
	if err != nil {
		t.Fatalf("Failed to create temp file: %v", err)
	}
	_, err = file.Write([]byte(content))
	if err != nil {
		t.Fatalf("Failed to write to temp file: %v", err)
	}
	_, err = file.Seek(0, 0) // Reset file pointer to the beginning
	if err != nil {
		t.Fatalf("Failed to reset file pointer: %v", err)
	}

	return file
}

func TestUploadBinaryFile(t *testing.T) {
	// Prepare
	ts := setupMockServer(t, http.MethodPost, "")
	defer ts.Close()

	file := createTempFile(t, "This is a test file content")
	defer func() {
		_ = os.Remove(file.Name())
	}()

	// Act
	resp, err := utils.UploadBinaryFile(ts.URL, "test-token", file.Name())
	if err != nil {
		t.Fatalf("UploadBinary failed: %v", err)
	}

	// Assert
	assert.Nil(t, err)
	assert.NotNil(t, resp)
	assert.Equal(t, resp.StatusCode, http.StatusOK)
}

func TestDownloadBinaryFile(t *testing.T) {
	// Prepare
	expectedContent := "This is a test file content"
	ts := setupMockServer(t, http.MethodGet, expectedContent)
	defer ts.Close()

	file := createTempFile(t, "")
	defer func() {
		_ = os.Remove(file.Name())
	}()

	// Act
	resp, err := utils.DownloadBinary(ts.URL, "test-token", file.Name())
	if err != nil {
		t.Fatalf("DownloadBinary failed: %v", err)
	}
	defer func() {
		_ = resp.Body.Close()
	}()

	if resp.StatusCode != http.StatusOK {
		t.Errorf("Expected status code %d, got %d", http.StatusOK, resp.StatusCode)
	}

	_, err = io.Copy(file, resp.Body)
	if err != nil {
		t.Fatalf("file write error: %s", err.Error())
	}

	content, err := os.ReadFile(file.Name())
	if err != nil {
		t.Fatalf("Failed to read downloaded file: %v", err)
	}

	// Assert
	assert.Nil(t, err)
	assert.NotNil(t, content)
	assert.Equal(t, string(content), expectedContent)
}
