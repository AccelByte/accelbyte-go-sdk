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

// RetryFulfillItemsV3Reader is a Reader for the RetryFulfillItemsV3 structure.
type RetryFulfillItemsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetryFulfillItemsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetryFulfillItemsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetryFulfillItemsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetryFulfillItemsV3OK creates a RetryFulfillItemsV3OK with default headers values
func NewRetryFulfillItemsV3OK() *RetryFulfillItemsV3OK {
	return &RetryFulfillItemsV3OK{}
}

/*RetryFulfillItemsV3OK handles this case with default header values.

  successful operation
*/
type RetryFulfillItemsV3OK struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *RetryFulfillItemsV3OK) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry][%d] retryFulfillItemsV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetryFulfillItemsV3OK) ToJSONString() string {
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

func (o *RetryFulfillItemsV3OK) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *RetryFulfillItemsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetryFulfillItemsV3NotFound creates a RetryFulfillItemsV3NotFound with default headers values
func NewRetryFulfillItemsV3NotFound() *RetryFulfillItemsV3NotFound {
	return &RetryFulfillItemsV3NotFound{}
}

/*RetryFulfillItemsV3NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38145</td><td>Fulfillment with transactionId [{transactionId}] does not exist</td></tr></table>
*/
type RetryFulfillItemsV3NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RetryFulfillItemsV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry][%d] retryFulfillItemsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetryFulfillItemsV3NotFound) ToJSONString() string {
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

func (o *RetryFulfillItemsV3NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetryFulfillItemsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
