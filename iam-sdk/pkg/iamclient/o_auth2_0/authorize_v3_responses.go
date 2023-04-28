// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AuthorizeV3Reader is a Reader for the AuthorizeV3 structure.
type AuthorizeV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthorizeV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewAuthorizeV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/oauth/authorize returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthorizeV3Found creates a AuthorizeV3Found with default headers values
func NewAuthorizeV3Found() *AuthorizeV3Found {
	return &AuthorizeV3Found{}
}

/*AuthorizeV3Found handles this case with default header values.

  Found. Redirected to login page with either request_id or error.
*/
type AuthorizeV3Found struct {
	Location string
}

func (o *AuthorizeV3Found) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/authorize][%d] authorizeV3Found ", 302)
}

func (o *AuthorizeV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
