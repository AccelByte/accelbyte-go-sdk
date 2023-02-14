// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bytes"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
)

//#region TrackedReadCloser

type TrackedReadCloser struct {
	io.ReadCloser
	didRead  bool
	didClose bool
}

func (r *TrackedReadCloser) Read(data []byte) (int, error) {
	r.didRead = true

	return r.ReadCloser.Read(data)
}

func (r *TrackedReadCloser) Close() error {
	r.didClose = true

	return r.ReadCloser.Close()
}

func SetupRewindBody(r *http.Request) (*http.Request, error) {
	if r.Body == nil || r.Body == http.NoBody {
		return r, nil
	}
	if r.GetBody == nil {
		cachedBody, err := ioutil.ReadAll(r.Body)
		if err != nil {
			return nil, err
		}
		r.Body = ioutil.NopCloser(bytes.NewReader(cachedBody))
		r.GetBody = func() (io.ReadCloser, error) {
			bodyReadCloser := ioutil.NopCloser(bytes.NewReader(cachedBody))

			return bodyReadCloser, nil
		}
	}
	existingBody := r.Body
	newBody := &TrackedReadCloser{ReadCloser: existingBody}
	newR := *r
	newR.Body = newBody

	return &newR, nil
}

func RewindBody(r *http.Request) (*http.Request, error) {
	// Nothing to rewind when there is no body.
	if r.Body == nil || r.Body == http.NoBody {
		return r, nil
	}
	// Nothing to rewind when it hasn't been read yet.
	if !r.Body.(*TrackedReadCloser).didRead &&
		!r.Body.(*TrackedReadCloser).didClose {
		return r, nil
	}
	// If it's already closed, make sure to close it. (redundancy)
	if !r.Body.(*TrackedReadCloser).didClose {
		if r.Body != nil {
			_ = r.Body.Close()
		}
	}
	if r.GetBody == nil {
		return nil, fmt.Errorf("cannot rewind request body - there is no 'GetBody()'")
	}
	newBody, err := r.GetBody()
	if err != nil {
		return nil, err
	}
	newR := *r
	newR.Body = &TrackedReadCloser{ReadCloser: newBody}

	return &newR, nil
}

//#endregion TrackedReadCloser
