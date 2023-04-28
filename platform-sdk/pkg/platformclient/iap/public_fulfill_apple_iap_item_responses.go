// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// PublicFulfillAppleIAPItemReader is a Reader for the PublicFulfillAppleIAPItem structure.
type PublicFulfillAppleIAPItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicFulfillAppleIAPItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicFulfillAppleIAPItemNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicFulfillAppleIAPItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicFulfillAppleIAPItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicFulfillAppleIAPItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicFulfillAppleIAPItemNoContent creates a PublicFulfillAppleIAPItemNoContent with default headers values
func NewPublicFulfillAppleIAPItemNoContent() *PublicFulfillAppleIAPItemNoContent {
	return &PublicFulfillAppleIAPItemNoContent{}
}

/*PublicFulfillAppleIAPItemNoContent handles this case with default header values.

  Fulfill item successfully
*/
type PublicFulfillAppleIAPItemNoContent struct {
}

func (o *PublicFulfillAppleIAPItemNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] publicFulfillAppleIapItemNoContent ", 204)
}

func (o *PublicFulfillAppleIAPItemNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicFulfillAppleIAPItemBadRequest creates a PublicFulfillAppleIAPItemBadRequest with default headers values
func NewPublicFulfillAppleIAPItemBadRequest() *PublicFulfillAppleIAPItemBadRequest {
	return &PublicFulfillAppleIAPItemBadRequest{}
}

/*PublicFulfillAppleIAPItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39121</td><td>Apple iap receipt verify failed with status code [{statusCode}]</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>38122</td><td>Subscription endDate required</td></tr></table>
*/
type PublicFulfillAppleIAPItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillAppleIAPItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] publicFulfillAppleIapItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicFulfillAppleIAPItemBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicFulfillAppleIAPItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillAppleIAPItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicFulfillAppleIAPItemNotFound creates a PublicFulfillAppleIAPItemNotFound with default headers values
func NewPublicFulfillAppleIAPItemNotFound() *PublicFulfillAppleIAPItemNotFound {
	return &PublicFulfillAppleIAPItemNotFound{}
}

/*PublicFulfillAppleIAPItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39141</td><td>Apple iap receipt of transaction [{transactionId}] for productId [{}] does not exist</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicFulfillAppleIAPItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillAppleIAPItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] publicFulfillAppleIapItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicFulfillAppleIAPItemNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicFulfillAppleIAPItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillAppleIAPItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicFulfillAppleIAPItemConflict creates a PublicFulfillAppleIAPItemConflict with default headers values
func NewPublicFulfillAppleIAPItemConflict() *PublicFulfillAppleIAPItemConflict {
	return &PublicFulfillAppleIAPItemConflict{}
}

/*PublicFulfillAppleIAPItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39171</td><td>The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicFulfillAppleIAPItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicFulfillAppleIAPItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] publicFulfillAppleIapItemConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicFulfillAppleIAPItemConflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *PublicFulfillAppleIAPItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicFulfillAppleIAPItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
