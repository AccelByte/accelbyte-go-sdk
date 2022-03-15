// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// PublicFulfillGoogleIAPItemReader is a Reader for the PublicFulfillGoogleIAPItem structure.
type PublicFulfillGoogleIAPItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicFulfillGoogleIAPItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicFulfillGoogleIAPItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicFulfillGoogleIAPItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicFulfillGoogleIAPItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicFulfillGoogleIAPItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicFulfillGoogleIAPItemOK creates a PublicFulfillGoogleIAPItemOK with default headers values
func NewPublicFulfillGoogleIAPItemOK() *PublicFulfillGoogleIAPItemOK {
	return &PublicFulfillGoogleIAPItemOK{}
}

/*PublicFulfillGoogleIAPItemOK handles this case with default header values.

  Successful operation
*/
type PublicFulfillGoogleIAPItemOK struct {
	Payload *platformclientmodels.GoogleReceiptResolveResult
}

func (o *PublicFulfillGoogleIAPItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt][%d] publicFulfillGoogleIAPItemOK  %+v", 200, o.Payload)
}

func (o *PublicFulfillGoogleIAPItemOK) GetPayload() *platformclientmodels.GoogleReceiptResolveResult {
	return o.Payload
}

func (o *PublicFulfillGoogleIAPItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.GoogleReceiptResolveResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicFulfillGoogleIAPItemBadRequest creates a PublicFulfillGoogleIAPItemBadRequest with default headers values
func NewPublicFulfillGoogleIAPItemBadRequest() *PublicFulfillGoogleIAPItemBadRequest {
	return &PublicFulfillGoogleIAPItemBadRequest{}
}

/*PublicFulfillGoogleIAPItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39122</td><td>Google iap receipt is invalid with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>38122</td><td>Subscription endDate required</td></tr></table>
*/
type PublicFulfillGoogleIAPItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillGoogleIAPItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt][%d] publicFulfillGoogleIAPItemBadRequest  %+v", 400, o.Payload)
}

func (o *PublicFulfillGoogleIAPItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillGoogleIAPItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicFulfillGoogleIAPItemNotFound creates a PublicFulfillGoogleIAPItemNotFound with default headers values
func NewPublicFulfillGoogleIAPItemNotFound() *PublicFulfillGoogleIAPItemNotFound {
	return &PublicFulfillGoogleIAPItemNotFound{}
}

/*PublicFulfillGoogleIAPItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicFulfillGoogleIAPItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillGoogleIAPItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt][%d] publicFulfillGoogleIAPItemNotFound  %+v", 404, o.Payload)
}

func (o *PublicFulfillGoogleIAPItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillGoogleIAPItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicFulfillGoogleIAPItemConflict creates a PublicFulfillGoogleIAPItemConflict with default headers values
func NewPublicFulfillGoogleIAPItemConflict() *PublicFulfillGoogleIAPItemConflict {
	return &PublicFulfillGoogleIAPItemConflict{}
}

/*PublicFulfillGoogleIAPItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39172</td><td>The order id in namespace [{namespace}] expect [{expected}] but was [{actual}]</td></tr><tr><td>39173</td><td>The purchase status of google play order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}]</td></tr><tr><td>39174</td><td>The google iap purchase time of order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicFulfillGoogleIAPItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillGoogleIAPItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt][%d] publicFulfillGoogleIAPItemConflict  %+v", 409, o.Payload)
}

func (o *PublicFulfillGoogleIAPItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillGoogleIAPItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
