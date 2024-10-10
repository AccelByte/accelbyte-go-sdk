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

// V2PublicFulfillAppleIAPItemReader is a Reader for the V2PublicFulfillAppleIAPItem structure.
type V2PublicFulfillAppleIAPItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *V2PublicFulfillAppleIAPItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewV2PublicFulfillAppleIAPItemNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewV2PublicFulfillAppleIAPItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewV2PublicFulfillAppleIAPItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewV2PublicFulfillAppleIAPItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt returns an error %d: %s", response.Code(), string(data))
	}
}

// NewV2PublicFulfillAppleIAPItemNoContent creates a V2PublicFulfillAppleIAPItemNoContent with default headers values
func NewV2PublicFulfillAppleIAPItemNoContent() *V2PublicFulfillAppleIAPItemNoContent {
	return &V2PublicFulfillAppleIAPItemNoContent{}
}

/*V2PublicFulfillAppleIAPItemNoContent handles this case with default header values.

  Fulfill successfully
*/
type V2PublicFulfillAppleIAPItemNoContent struct {
}

func (o *V2PublicFulfillAppleIAPItemNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] v2PublicFulfillAppleIapItemNoContent ", 204)
}

func (o *V2PublicFulfillAppleIAPItemNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewV2PublicFulfillAppleIAPItemBadRequest creates a V2PublicFulfillAppleIAPItemBadRequest with default headers values
func NewV2PublicFulfillAppleIAPItemBadRequest() *V2PublicFulfillAppleIAPItemBadRequest {
	return &V2PublicFulfillAppleIAPItemBadRequest{}
}

/*V2PublicFulfillAppleIAPItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>39131</td><td>Invalid Apple IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39136</td><td>Request Apple API failed with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>39137</td><td>Verify Apple transaction failed with status [{status}] and error message [{message}]</td></tr><tr><td>39138</td><td>Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned</td></tr></table>
*/
type V2PublicFulfillAppleIAPItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *V2PublicFulfillAppleIAPItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] v2PublicFulfillAppleIapItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *V2PublicFulfillAppleIAPItemBadRequest) ToJSONString() string {
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

func (o *V2PublicFulfillAppleIAPItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *V2PublicFulfillAppleIAPItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewV2PublicFulfillAppleIAPItemNotFound creates a V2PublicFulfillAppleIAPItemNotFound with default headers values
func NewV2PublicFulfillAppleIAPItemNotFound() *V2PublicFulfillAppleIAPItemNotFound {
	return &V2PublicFulfillAppleIAPItemNotFound{}
}

/*V2PublicFulfillAppleIAPItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>39142</td><td>Apple IAP config not found in namespace [{namespace}]</td></tr></table>
*/
type V2PublicFulfillAppleIAPItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *V2PublicFulfillAppleIAPItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] v2PublicFulfillAppleIapItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *V2PublicFulfillAppleIAPItemNotFound) ToJSONString() string {
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

func (o *V2PublicFulfillAppleIAPItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *V2PublicFulfillAppleIAPItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewV2PublicFulfillAppleIAPItemConflict creates a V2PublicFulfillAppleIAPItemConflict with default headers values
func NewV2PublicFulfillAppleIAPItemConflict() *V2PublicFulfillAppleIAPItemConflict {
	return &V2PublicFulfillAppleIAPItemConflict{}
}

/*V2PublicFulfillAppleIAPItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39171</td><td>The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type V2PublicFulfillAppleIAPItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *V2PublicFulfillAppleIAPItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt][%d] v2PublicFulfillAppleIapItemConflict  %+v", 409, o.ToJSONString())
}

func (o *V2PublicFulfillAppleIAPItemConflict) ToJSONString() string {
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

func (o *V2PublicFulfillAppleIAPItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *V2PublicFulfillAppleIAPItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
