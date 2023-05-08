// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// RevokeTokenReader is a Reader for the RevokeToken structure.
type RevokeTokenReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeTokenReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeTokenOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRevokeTokenBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRevokeTokenUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/revoke/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeTokenOK creates a RevokeTokenOK with default headers values
func NewRevokeTokenOK() *RevokeTokenOK {
	return &RevokeTokenOK{}
}

/*RevokeTokenOK handles this case with default header values.

  Token revoked or does not exist
*/
type RevokeTokenOK struct {
}

func (o *RevokeTokenOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/token][%d] revokeTokenOK ", 200)
}

func (o *RevokeTokenOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeTokenBadRequest creates a RevokeTokenBadRequest with default headers values
func NewRevokeTokenBadRequest() *RevokeTokenBadRequest {
	return &RevokeTokenBadRequest{}
}

/*RevokeTokenBadRequest handles this case with default header values.

  Invalid input
*/
type RevokeTokenBadRequest struct {
}

func (o *RevokeTokenBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/token][%d] revokeTokenBadRequest ", 400)
}

func (o *RevokeTokenBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeTokenUnauthorized creates a RevokeTokenUnauthorized with default headers values
func NewRevokeTokenUnauthorized() *RevokeTokenUnauthorized {
	return &RevokeTokenUnauthorized{}
}

/*RevokeTokenUnauthorized handles this case with default header values.

  Invalid basic auth header
*/
type RevokeTokenUnauthorized struct {
}

func (o *RevokeTokenUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/token][%d] revokeTokenUnauthorized ", 401)
}

func (o *RevokeTokenUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
