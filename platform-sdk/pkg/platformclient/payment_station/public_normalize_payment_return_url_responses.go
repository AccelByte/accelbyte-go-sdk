// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PublicNormalizePaymentReturnURLReader is a Reader for the PublicNormalizePaymentReturnURL structure.
type PublicNormalizePaymentReturnURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicNormalizePaymentReturnURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicNormalizePaymentReturnURLNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 307:
		result := NewPublicNormalizePaymentReturnURLTemporaryRedirect()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/returnurl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicNormalizePaymentReturnURLNoContent creates a PublicNormalizePaymentReturnURLNoContent with default headers values
func NewPublicNormalizePaymentReturnURLNoContent() *PublicNormalizePaymentReturnURLNoContent {
	return &PublicNormalizePaymentReturnURLNoContent{}
}

/*PublicNormalizePaymentReturnURLNoContent handles this case with default header values.

  no content.(if query param 'returnUrl' is empty)
*/
type PublicNormalizePaymentReturnURLNoContent struct {
}

func (o *PublicNormalizePaymentReturnURLNoContent) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/returnurl][%d] publicNormalizePaymentReturnUrlNoContent ", 204)
}

func (o *PublicNormalizePaymentReturnURLNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicNormalizePaymentReturnURLTemporaryRedirect creates a PublicNormalizePaymentReturnURLTemporaryRedirect with default headers values
func NewPublicNormalizePaymentReturnURLTemporaryRedirect() *PublicNormalizePaymentReturnURLTemporaryRedirect {
	return &PublicNormalizePaymentReturnURLTemporaryRedirect{}
}

/*PublicNormalizePaymentReturnURLTemporaryRedirect handles this case with default header values.

  successful operation.(if query param 'returnUrl' is not empty)
*/
type PublicNormalizePaymentReturnURLTemporaryRedirect struct {
	Location string
}

func (o *PublicNormalizePaymentReturnURLTemporaryRedirect) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/returnurl][%d] publicNormalizePaymentReturnUrlTemporaryRedirect ", 307)
}

func (o *PublicNormalizePaymentReturnURLTemporaryRedirect) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
