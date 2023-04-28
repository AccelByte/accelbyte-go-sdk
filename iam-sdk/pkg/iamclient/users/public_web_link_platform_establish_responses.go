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

// PublicWebLinkPlatformEstablishReader is a Reader for the PublicWebLinkPlatformEstablish structure.
type PublicWebLinkPlatformEstablishReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicWebLinkPlatformEstablishReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewPublicWebLinkPlatformEstablishFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicWebLinkPlatformEstablishFound creates a PublicWebLinkPlatformEstablishFound with default headers values
func NewPublicWebLinkPlatformEstablishFound() *PublicWebLinkPlatformEstablishFound {
	return &PublicWebLinkPlatformEstablishFound{}
}

/*PublicWebLinkPlatformEstablishFound handles this case with default header values.

  Handle Redirect from third party
*/
type PublicWebLinkPlatformEstablishFound struct {
	Location string
}

func (o *PublicWebLinkPlatformEstablishFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish][%d] publicWebLinkPlatformEstablishFound ", 302)
}

func (o *PublicWebLinkPlatformEstablishFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
