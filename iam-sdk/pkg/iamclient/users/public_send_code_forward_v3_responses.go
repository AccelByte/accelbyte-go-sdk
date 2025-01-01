// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PublicSendCodeForwardV3Reader is a Reader for the PublicSendCodeForwardV3 structure.
type PublicSendCodeForwardV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSendCodeForwardV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewPublicSendCodeForwardV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/users/me/code/request/forward returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSendCodeForwardV3Found creates a PublicSendCodeForwardV3Found with default headers values
func NewPublicSendCodeForwardV3Found() *PublicSendCodeForwardV3Found {
	return &PublicSendCodeForwardV3Found{}
}

/*PublicSendCodeForwardV3Found handles this case with default header values.

  Found. Redirected to login website if there is any error.
*/
type PublicSendCodeForwardV3Found struct {
	Location string
}

func (o *PublicSendCodeForwardV3Found) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/code/request/forward][%d] publicSendCodeForwardV3Found ", 302)
}

func (o *PublicSendCodeForwardV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
