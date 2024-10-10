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

// RevokeAUserReader is a Reader for the RevokeAUser structure.
type RevokeAUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeAUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeAUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRevokeAUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRevokeAUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/revoke/user returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeAUserOK creates a RevokeAUserOK with default headers values
func NewRevokeAUserOK() *RevokeAUserOK {
	return &RevokeAUserOK{}
}

/*RevokeAUserOK handles this case with default header values.

  User revoked or does not exist
*/
type RevokeAUserOK struct {
}

func (o *RevokeAUserOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/user][%d] revokeAUserOK ", 200)
}

func (o *RevokeAUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeAUserBadRequest creates a RevokeAUserBadRequest with default headers values
func NewRevokeAUserBadRequest() *RevokeAUserBadRequest {
	return &RevokeAUserBadRequest{}
}

/*RevokeAUserBadRequest handles this case with default header values.

  Invalid input
*/
type RevokeAUserBadRequest struct {
}

func (o *RevokeAUserBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/user][%d] revokeAUserBadRequest ", 400)
}

func (o *RevokeAUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeAUserUnauthorized creates a RevokeAUserUnauthorized with default headers values
func NewRevokeAUserUnauthorized() *RevokeAUserUnauthorized {
	return &RevokeAUserUnauthorized{}
}

/*RevokeAUserUnauthorized handles this case with default header values.

  Invalid basic auth header
*/
type RevokeAUserUnauthorized struct {
}

func (o *RevokeAUserUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/revoke/user][%d] revokeAUserUnauthorized ", 401)
}

func (o *RevokeAUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
