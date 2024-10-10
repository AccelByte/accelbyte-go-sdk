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

// RetryFulfillItemsReader is a Reader for the RetryFulfillItems structure.
type RetryFulfillItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetryFulfillItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetryFulfillItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetryFulfillItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRetryFulfillItemsConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetryFulfillItemsOK creates a RetryFulfillItemsOK with default headers values
func NewRetryFulfillItemsOK() *RetryFulfillItemsOK {
	return &RetryFulfillItemsOK{}
}

/*RetryFulfillItemsOK handles this case with default header values.

  successful operation
*/
type RetryFulfillItemsOK struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *RetryFulfillItemsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry][%d] retryFulfillItemsOK  %+v", 200, o.ToJSONString())
}

func (o *RetryFulfillItemsOK) ToJSONString() string {
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

func (o *RetryFulfillItemsOK) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *RetryFulfillItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetryFulfillItemsNotFound creates a RetryFulfillItemsNotFound with default headers values
func NewRetryFulfillItemsNotFound() *RetryFulfillItemsNotFound {
	return &RetryFulfillItemsNotFound{}
}

/*RetryFulfillItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38145</td><td>Fulfillment with transactionId [{transactionId}] does not exist</td></tr></table>
*/
type RetryFulfillItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RetryFulfillItemsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry][%d] retryFulfillItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetryFulfillItemsNotFound) ToJSONString() string {
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

func (o *RetryFulfillItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetryFulfillItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetryFulfillItemsConflict creates a RetryFulfillItemsConflict with default headers values
func NewRetryFulfillItemsConflict() *RetryFulfillItemsConflict {
	return &RetryFulfillItemsConflict{}
}

/*RetryFulfillItemsConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr></table>
*/
type RetryFulfillItemsConflict struct {
	Payload *platformclientmodels.FulfillmentV2Result
}

func (o *RetryFulfillItemsConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry][%d] retryFulfillItemsConflict  %+v", 409, o.ToJSONString())
}

func (o *RetryFulfillItemsConflict) ToJSONString() string {
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

func (o *RetryFulfillItemsConflict) GetPayload() *platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *RetryFulfillItemsConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
