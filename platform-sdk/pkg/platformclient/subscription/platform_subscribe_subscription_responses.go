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

// PlatformSubscribeSubscriptionReader is a Reader for the PlatformSubscribeSubscription structure.
type PlatformSubscribeSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformSubscribeSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformSubscribeSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 201:
		result := NewPlatformSubscribeSubscriptionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformSubscribeSubscriptionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPlatformSubscribeSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPlatformSubscribeSubscriptionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformSubscribeSubscriptionOK creates a PlatformSubscribeSubscriptionOK with default headers values
func NewPlatformSubscribeSubscriptionOK() *PlatformSubscribeSubscriptionOK {
	return &PlatformSubscribeSubscriptionOK{}
}

/*PlatformSubscribeSubscriptionOK handles this case with default header values.

  successful operation
*/
type PlatformSubscribeSubscriptionOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *PlatformSubscribeSubscriptionOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe][%d] platformSubscribeSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *PlatformSubscribeSubscriptionOK) ToJSONString() string {
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

func (o *PlatformSubscribeSubscriptionOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *PlatformSubscribeSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformSubscribeSubscriptionCreated creates a PlatformSubscribeSubscriptionCreated with default headers values
func NewPlatformSubscribeSubscriptionCreated() *PlatformSubscribeSubscriptionCreated {
	return &PlatformSubscribeSubscriptionCreated{}
}

/*PlatformSubscribeSubscriptionCreated handles this case with default header values.

  platform subscribe request processed
*/
type PlatformSubscribeSubscriptionCreated struct {
}

func (o *PlatformSubscribeSubscriptionCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe][%d] platformSubscribeSubscriptionCreated ", 201)
}

func (o *PlatformSubscribeSubscriptionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPlatformSubscribeSubscriptionBadRequest creates a PlatformSubscribeSubscriptionBadRequest with default headers values
func NewPlatformSubscribeSubscriptionBadRequest() *PlatformSubscribeSubscriptionBadRequest {
	return &PlatformSubscribeSubscriptionBadRequest{}
}

/*PlatformSubscribeSubscriptionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40121</td><td>Item type [{itemType}] does not support</td></tr></table>
*/
type PlatformSubscribeSubscriptionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PlatformSubscribeSubscriptionBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe][%d] platformSubscribeSubscriptionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformSubscribeSubscriptionBadRequest) ToJSONString() string {
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

func (o *PlatformSubscribeSubscriptionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PlatformSubscribeSubscriptionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformSubscribeSubscriptionNotFound creates a PlatformSubscribeSubscriptionNotFound with default headers values
func NewPlatformSubscribeSubscriptionNotFound() *PlatformSubscribeSubscriptionNotFound {
	return &PlatformSubscribeSubscriptionNotFound{}
}

/*PlatformSubscribeSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>20008</td><td>user [{userId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PlatformSubscribeSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PlatformSubscribeSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe][%d] platformSubscribeSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PlatformSubscribeSubscriptionNotFound) ToJSONString() string {
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

func (o *PlatformSubscribeSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PlatformSubscribeSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformSubscribeSubscriptionUnprocessableEntity creates a PlatformSubscribeSubscriptionUnprocessableEntity with default headers values
func NewPlatformSubscribeSubscriptionUnprocessableEntity() *PlatformSubscribeSubscriptionUnprocessableEntity {
	return &PlatformSubscribeSubscriptionUnprocessableEntity{}
}

/*PlatformSubscribeSubscriptionUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PlatformSubscribeSubscriptionUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *PlatformSubscribeSubscriptionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe][%d] platformSubscribeSubscriptionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PlatformSubscribeSubscriptionUnprocessableEntity) ToJSONString() string {
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

func (o *PlatformSubscribeSubscriptionUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PlatformSubscribeSubscriptionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
