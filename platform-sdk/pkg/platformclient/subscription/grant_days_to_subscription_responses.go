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

// GrantDaysToSubscriptionReader is a Reader for the GrantDaysToSubscription structure.
type GrantDaysToSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GrantDaysToSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGrantDaysToSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGrantDaysToSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGrantDaysToSubscriptionOK creates a GrantDaysToSubscriptionOK with default headers values
func NewGrantDaysToSubscriptionOK() *GrantDaysToSubscriptionOK {
	return &GrantDaysToSubscriptionOK{}
}

/*GrantDaysToSubscriptionOK handles this case with default header values.

  successful operation
*/
type GrantDaysToSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *GrantDaysToSubscriptionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant][%d] grantDaysToSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *GrantDaysToSubscriptionOK) ToJSONString() string {
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

func (o *GrantDaysToSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *GrantDaysToSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGrantDaysToSubscriptionNotFound creates a GrantDaysToSubscriptionNotFound with default headers values
func NewGrantDaysToSubscriptionNotFound() *GrantDaysToSubscriptionNotFound {
	return &GrantDaysToSubscriptionNotFound{}
}

/*GrantDaysToSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type GrantDaysToSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GrantDaysToSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant][%d] grantDaysToSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GrantDaysToSubscriptionNotFound) ToJSONString() string {
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

func (o *GrantDaysToSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GrantDaysToSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
