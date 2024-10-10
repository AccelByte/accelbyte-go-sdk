// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

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

// CancelSubscriptionReader is a Reader for the CancelSubscription structure.
type CancelSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CancelSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCancelSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCancelSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCancelSubscriptionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCancelSubscriptionOK creates a CancelSubscriptionOK with default headers values
func NewCancelSubscriptionOK() *CancelSubscriptionOK {
	return &CancelSubscriptionOK{}
}

/*CancelSubscriptionOK handles this case with default header values.

  successful operation
*/
type CancelSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *CancelSubscriptionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] cancelSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *CancelSubscriptionOK) ToJSONString() string {
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

func (o *CancelSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *CancelSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SubscriptionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCancelSubscriptionNotFound creates a CancelSubscriptionNotFound with default headers values
func NewCancelSubscriptionNotFound() *CancelSubscriptionNotFound {
	return &CancelSubscriptionNotFound{}
}

/*CancelSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type CancelSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CancelSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] cancelSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *CancelSubscriptionNotFound) ToJSONString() string {
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

func (o *CancelSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CancelSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCancelSubscriptionConflict creates a CancelSubscriptionConflict with default headers values
func NewCancelSubscriptionConflict() *CancelSubscriptionConflict {
	return &CancelSubscriptionConflict{}
}

/*CancelSubscriptionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40171</td><td>Subscription [{subscriptionId}] is not active</td></tr><tr><td>40172</td><td>Subscription [{subscriptionId}] is charging, waiting for payment notification</td></tr></table>
*/
type CancelSubscriptionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CancelSubscriptionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] cancelSubscriptionConflict  %+v", 409, o.ToJSONString())
}

func (o *CancelSubscriptionConflict) ToJSONString() string {
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

func (o *CancelSubscriptionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CancelSubscriptionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
