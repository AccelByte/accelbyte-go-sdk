// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// FulfillItemsReader is a Reader for the FulfillItems structure.
type FulfillItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FulfillItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFulfillItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFulfillItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFulfillItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewFulfillItemsConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFulfillItemsOK creates a FulfillItemsOK with default headers values
func NewFulfillItemsOK() *FulfillItemsOK {
	return &FulfillItemsOK{}
}

/*FulfillItemsOK handles this case with default header values.

  successful operation
*/
type FulfillItemsOK struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *FulfillItemsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsOK  %+v", 200, o.ToJSONString())
}

func (o *FulfillItemsOK) ToJSONString() string {
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

func (o *FulfillItemsOK) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *FulfillItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentV2Result)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFulfillItemsBadRequest creates a FulfillItemsBadRequest with default headers values
func NewFulfillItemsBadRequest() *FulfillItemsBadRequest {
	return &FulfillItemsBadRequest{}
}

/*FulfillItemsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>38122</td><td>Subscription endDate required</td></tr><tr><td>38128</td><td>Cannot retry fulfillment with different payload. Please check the items list.</td></tr><tr><td>38129</td><td>Cannot combine same item [{itemId}] with different [{fieldName}] value</td></tr><tr><td>38130</td><td>Cannot fulfill item with type [{itemType}] in item [{itemIdentity}]</td></tr></table>
*/
type FulfillItemsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillItemsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FulfillItemsBadRequest) ToJSONString() string {
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

func (o *FulfillItemsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFulfillItemsNotFound creates a FulfillItemsNotFound with default headers values
func NewFulfillItemsNotFound() *FulfillItemsNotFound {
	return &FulfillItemsNotFound{}
}

/*FulfillItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{sku}] does not exist</td></tr></table>
*/
type FulfillItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillItemsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *FulfillItemsNotFound) ToJSONString() string {
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

func (o *FulfillItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFulfillItemsConflict creates a FulfillItemsConflict with default headers values
func NewFulfillItemsConflict() *FulfillItemsConflict {
	return &FulfillItemsConflict{}
}

/*FulfillItemsConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr></table>
*/
type FulfillItemsConflict struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *FulfillItemsConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsConflict  %+v", 409, o.ToJSONString())
}

func (o *FulfillItemsConflict) ToJSONString() string {
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

func (o *FulfillItemsConflict) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *FulfillItemsConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentV2Result)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
