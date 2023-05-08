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

// RevokeUserReader is a Reader for the RevokeUser structure.
type RevokeUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRevokeUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/namespaces/{namespace}/users/{userId}/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeUserOK creates a RevokeUserOK with default headers values
func NewRevokeUserOK() *RevokeUserOK {
	return &RevokeUserOK{}
}

/*RevokeUserOK handles this case with default header values.

  User revoked
*/
type RevokeUserOK struct {
}

func (o *RevokeUserOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserOK ", 200)
}

func (o *RevokeUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeUserUnauthorized creates a RevokeUserUnauthorized with default headers values
func NewRevokeUserUnauthorized() *RevokeUserUnauthorized {
	return &RevokeUserUnauthorized{}
}

/*RevokeUserUnauthorized handles this case with default header values.

  Invalid basic auth header
*/
type RevokeUserUnauthorized struct {
}

func (o *RevokeUserUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserUnauthorized ", 401)
}

func (o *RevokeUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
