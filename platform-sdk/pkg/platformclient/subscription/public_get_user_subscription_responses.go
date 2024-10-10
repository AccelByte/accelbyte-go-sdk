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

// PublicGetUserSubscriptionReader is a Reader for the PublicGetUserSubscription structure.
type PublicGetUserSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserSubscriptionOK creates a PublicGetUserSubscriptionOK with default headers values
func NewPublicGetUserSubscriptionOK() *PublicGetUserSubscriptionOK {
	return &PublicGetUserSubscriptionOK{}
}

/*PublicGetUserSubscriptionOK handles this case with default header values.

  successful operation
*/
type PublicGetUserSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *PublicGetUserSubscriptionOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}][%d] publicGetUserSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserSubscriptionOK) ToJSONString() string {
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

func (o *PublicGetUserSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *PublicGetUserSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserSubscriptionNotFound creates a PublicGetUserSubscriptionNotFound with default headers values
func NewPublicGetUserSubscriptionNotFound() *PublicGetUserSubscriptionNotFound {
	return &PublicGetUserSubscriptionNotFound{}
}

/*PublicGetUserSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type PublicGetUserSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUserSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}][%d] publicGetUserSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserSubscriptionNotFound) ToJSONString() string {
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

func (o *PublicGetUserSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
