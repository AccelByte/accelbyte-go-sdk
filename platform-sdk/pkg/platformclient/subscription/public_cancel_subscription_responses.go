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

// PublicCancelSubscriptionReader is a Reader for the PublicCancelSubscription structure.
type PublicCancelSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCancelSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicCancelSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCancelSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCancelSubscriptionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCancelSubscriptionOK creates a PublicCancelSubscriptionOK with default headers values
func NewPublicCancelSubscriptionOK() *PublicCancelSubscriptionOK {
	return &PublicCancelSubscriptionOK{}
}

/*PublicCancelSubscriptionOK handles this case with default header values.

  successful operation
*/
type PublicCancelSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *PublicCancelSubscriptionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] publicCancelSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicCancelSubscriptionOK) ToJSONString() string {
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

func (o *PublicCancelSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *PublicCancelSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelSubscriptionNotFound creates a PublicCancelSubscriptionNotFound with default headers values
func NewPublicCancelSubscriptionNotFound() *PublicCancelSubscriptionNotFound {
	return &PublicCancelSubscriptionNotFound{}
}

/*PublicCancelSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type PublicCancelSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCancelSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] publicCancelSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCancelSubscriptionNotFound) ToJSONString() string {
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

func (o *PublicCancelSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCancelSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelSubscriptionConflict creates a PublicCancelSubscriptionConflict with default headers values
func NewPublicCancelSubscriptionConflict() *PublicCancelSubscriptionConflict {
	return &PublicCancelSubscriptionConflict{}
}

/*PublicCancelSubscriptionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40171</td><td>Subscription [{subscriptionId}] is not active</td></tr><tr><td>40172</td><td>Subscription [{subscriptionId}] is charging, waiting for payment notification</td></tr></table>
*/
type PublicCancelSubscriptionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCancelSubscriptionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel][%d] publicCancelSubscriptionConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCancelSubscriptionConflict) ToJSONString() string {
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

func (o *PublicCancelSubscriptionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCancelSubscriptionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
