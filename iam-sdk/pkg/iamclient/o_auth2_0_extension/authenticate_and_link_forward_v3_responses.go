// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AuthenticateAndLinkForwardV3Reader is a Reader for the AuthenticateAndLinkForwardV3 structure.
type AuthenticateAndLinkForwardV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthenticateAndLinkForwardV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewAuthenticateAndLinkForwardV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/authenticateWithLink/forward returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthenticateAndLinkForwardV3Found creates a AuthenticateAndLinkForwardV3Found with default headers values
func NewAuthenticateAndLinkForwardV3Found() *AuthenticateAndLinkForwardV3Found {
	return &AuthenticateAndLinkForwardV3Found{}
}

/*AuthenticateAndLinkForwardV3Found handles this case with default header values.

  Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter
*/
type AuthenticateAndLinkForwardV3Found struct {
	Location string
}

func (o *AuthenticateAndLinkForwardV3Found) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink/forward][%d] authenticateAndLinkForwardV3Found ", 302)
}

func (o *AuthenticateAndLinkForwardV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
