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

// UserAuthenticationV3Reader is a Reader for the UserAuthenticationV3 structure.
type UserAuthenticationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserAuthenticationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewUserAuthenticationV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/authenticate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserAuthenticationV3Found creates a UserAuthenticationV3Found with default headers values
func NewUserAuthenticationV3Found() *UserAuthenticationV3Found {
	return &UserAuthenticationV3Found{}
}

/*UserAuthenticationV3Found handles this case with default header values.

  Found. Redirect successful requests to consent page with "list of consent" in query params.
*/
type UserAuthenticationV3Found struct {
	Location string
}

func (o *UserAuthenticationV3Found) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticate][%d] userAuthenticationV3Found ", 302)
}

func (o *UserAuthenticationV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
