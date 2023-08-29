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

// FulfillRewardsV2Reader is a Reader for the FulfillRewardsV2 structure.
type FulfillRewardsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FulfillRewardsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFulfillRewardsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFulfillRewardsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFulfillRewardsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewFulfillRewardsV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFulfillRewardsV2OK creates a FulfillRewardsV2OK with default headers values
func NewFulfillRewardsV2OK() *FulfillRewardsV2OK {
	return &FulfillRewardsV2OK{}
}

/*FulfillRewardsV2OK handles this case with default header values.

  successful operation
*/
type FulfillRewardsV2OK struct {
	Payload *platformclientmodels.FulfillmentResult
}

func (o *FulfillRewardsV2OK) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsV2OK  %+v", 200, o.ToJSONString())
}

func (o *FulfillRewardsV2OK) ToJSONString() string {
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

func (o *FulfillRewardsV2OK) GetPayload() *platformclientmodels.FulfillmentResult {
	return o.Payload
}

func (o *FulfillRewardsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFulfillRewardsV2BadRequest creates a FulfillRewardsV2BadRequest with default headers values
func NewFulfillRewardsV2BadRequest() *FulfillRewardsV2BadRequest {
	return &FulfillRewardsV2BadRequest{}
}

/*FulfillRewardsV2BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr></table>
*/
type FulfillRewardsV2BadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *FulfillRewardsV2BadRequest) ToJSONString() string {
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

func (o *FulfillRewardsV2BadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillRewardsV2NotFound creates a FulfillRewardsV2NotFound with default headers values
func NewFulfillRewardsV2NotFound() *FulfillRewardsV2NotFound {
	return &FulfillRewardsV2NotFound{}
}

/*FulfillRewardsV2NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type FulfillRewardsV2NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsV2NotFound) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *FulfillRewardsV2NotFound) ToJSONString() string {
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

func (o *FulfillRewardsV2NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillRewardsV2Conflict creates a FulfillRewardsV2Conflict with default headers values
func NewFulfillRewardsV2Conflict() *FulfillRewardsV2Conflict {
	return &FulfillRewardsV2Conflict{}
}

/*FulfillRewardsV2Conflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type FulfillRewardsV2Conflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsV2Conflict) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *FulfillRewardsV2Conflict) ToJSONString() string {
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

func (o *FulfillRewardsV2Conflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
