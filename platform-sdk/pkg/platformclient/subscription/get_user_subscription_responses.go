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

// GetUserSubscriptionReader is a Reader for the GetUserSubscription structure.
type GetUserSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserSubscriptionOK creates a GetUserSubscriptionOK with default headers values
func NewGetUserSubscriptionOK() *GetUserSubscriptionOK {
	return &GetUserSubscriptionOK{}
}

/*GetUserSubscriptionOK handles this case with default header values.

  successful operation
*/
type GetUserSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *GetUserSubscriptionOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}][%d] getUserSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserSubscriptionOK) ToJSONString() string {
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

func (o *GetUserSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *GetUserSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserSubscriptionNotFound creates a GetUserSubscriptionNotFound with default headers values
func NewGetUserSubscriptionNotFound() *GetUserSubscriptionNotFound {
	return &GetUserSubscriptionNotFound{}
}

/*GetUserSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type GetUserSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetUserSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}][%d] getUserSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserSubscriptionNotFound) ToJSONString() string {
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

func (o *GetUserSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
