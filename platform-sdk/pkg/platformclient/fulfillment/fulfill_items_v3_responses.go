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

// FulfillItemsV3Reader is a Reader for the FulfillItemsV3 structure.
type FulfillItemsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FulfillItemsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFulfillItemsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFulfillItemsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFulfillItemsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFulfillItemsV3OK creates a FulfillItemsV3OK with default headers values
func NewFulfillItemsV3OK() *FulfillItemsV3OK {
	return &FulfillItemsV3OK{}
}

/*FulfillItemsV3OK handles this case with default header values.

  successful operation
*/
type FulfillItemsV3OK struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *FulfillItemsV3OK) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsV3OK  %+v", 200, o.ToJSONString())
}

func (o *FulfillItemsV3OK) ToJSONString() string {
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

func (o *FulfillItemsV3OK) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *FulfillItemsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFulfillItemsV3BadRequest creates a FulfillItemsV3BadRequest with default headers values
func NewFulfillItemsV3BadRequest() *FulfillItemsV3BadRequest {
	return &FulfillItemsV3BadRequest{}
}

/*FulfillItemsV3BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>38122</td><td>Subscription endDate required</td></tr><tr><td>38128</td><td>Cannot retry fulfillment with different payload. Please check the items list.</td></tr><tr><td>38129</td><td>Cannot combine same item [{itemId}] with different [{fieldName}] value</td></tr><tr><td>38130</td><td>Cannot fulfill item with type [{itemType}] in item [{itemIdentity}]</td></tr></table>
*/
type FulfillItemsV3BadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillItemsV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *FulfillItemsV3BadRequest) ToJSONString() string {
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

func (o *FulfillItemsV3BadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillItemsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFulfillItemsV3NotFound creates a FulfillItemsV3NotFound with default headers values
func NewFulfillItemsV3NotFound() *FulfillItemsV3NotFound {
	return &FulfillItemsV3NotFound{}
}

/*FulfillItemsV3NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{sku}] does not exist</td></tr></table>
*/
type FulfillItemsV3NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillItemsV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}][%d] fulfillItemsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *FulfillItemsV3NotFound) ToJSONString() string {
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

func (o *FulfillItemsV3NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillItemsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
