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

// AuthorizationReader is a Reader for the Authorization structure.
type AuthorizationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthorizationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewAuthorizationFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/authorize returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthorizationFound creates a AuthorizationFound with default headers values
func NewAuthorizationFound() *AuthorizationFound {
	return &AuthorizationFound{}
}

/*AuthorizationFound handles this case with default header values.

  Found
*/
type AuthorizationFound struct {
	Location string
}

func (o *AuthorizationFound) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/authorize][%d] authorizationFound ", 302)
}

func (o *AuthorizationFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
