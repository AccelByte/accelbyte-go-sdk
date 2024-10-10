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

// PublicVerifyUserByLinkV3Reader is a Reader for the PublicVerifyUserByLinkV3 structure.
type PublicVerifyUserByLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicVerifyUserByLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewPublicVerifyUserByLinkV3Found()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/users/verify_link/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicVerifyUserByLinkV3Found creates a PublicVerifyUserByLinkV3Found with default headers values
func NewPublicVerifyUserByLinkV3Found() *PublicVerifyUserByLinkV3Found {
	return &PublicVerifyUserByLinkV3Found{}
}

/*PublicVerifyUserByLinkV3Found handles this case with default header values.

  Found. Redirected to verification finish page.
*/
type PublicVerifyUserByLinkV3Found struct {
	Location string
}

func (o *PublicVerifyUserByLinkV3Found) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/users/verify_link/verify][%d] publicVerifyUserByLinkV3Found ", 302)
}

func (o *PublicVerifyUserByLinkV3Found) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
