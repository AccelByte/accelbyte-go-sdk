// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// UnsubscribeTopicHandlerReader is a Reader for the UnsubscribeTopicHandler structure.
type UnsubscribeTopicHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnsubscribeTopicHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUnsubscribeTopicHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUnsubscribeTopicHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUnsubscribeTopicHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnsubscribeTopicHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUnsubscribeTopicHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnsubscribeTopicHandlerOK creates a UnsubscribeTopicHandlerOK with default headers values
func NewUnsubscribeTopicHandlerOK() *UnsubscribeTopicHandlerOK {
	return &UnsubscribeTopicHandlerOK{}
}

/*UnsubscribeTopicHandlerOK handles this case with default header values.

  OK
*/
type UnsubscribeTopicHandlerOK struct {
	Payload *csmclientmodels.ApimodelTopicSubscription
}

func (o *UnsubscribeTopicHandlerOK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions][%d] unsubscribeTopicHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *UnsubscribeTopicHandlerOK) ToJSONString() string {
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

func (o *UnsubscribeTopicHandlerOK) GetPayload() *csmclientmodels.ApimodelTopicSubscription {
	return o.Payload
}

func (o *UnsubscribeTopicHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelTopicSubscription)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUnsubscribeTopicHandlerUnauthorized creates a UnsubscribeTopicHandlerUnauthorized with default headers values
func NewUnsubscribeTopicHandlerUnauthorized() *UnsubscribeTopicHandlerUnauthorized {
	return &UnsubscribeTopicHandlerUnauthorized{}
}

/*UnsubscribeTopicHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type UnsubscribeTopicHandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeTopicHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions][%d] unsubscribeTopicHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UnsubscribeTopicHandlerUnauthorized) ToJSONString() string {
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

func (o *UnsubscribeTopicHandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeTopicHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUnsubscribeTopicHandlerForbidden creates a UnsubscribeTopicHandlerForbidden with default headers values
func NewUnsubscribeTopicHandlerForbidden() *UnsubscribeTopicHandlerForbidden {
	return &UnsubscribeTopicHandlerForbidden{}
}

/*UnsubscribeTopicHandlerForbidden handles this case with default header values.

  Forbidden
*/
type UnsubscribeTopicHandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeTopicHandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions][%d] unsubscribeTopicHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *UnsubscribeTopicHandlerForbidden) ToJSONString() string {
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

func (o *UnsubscribeTopicHandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeTopicHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUnsubscribeTopicHandlerNotFound creates a UnsubscribeTopicHandlerNotFound with default headers values
func NewUnsubscribeTopicHandlerNotFound() *UnsubscribeTopicHandlerNotFound {
	return &UnsubscribeTopicHandlerNotFound{}
}

/*UnsubscribeTopicHandlerNotFound handles this case with default header values.

  Not Found
*/
type UnsubscribeTopicHandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeTopicHandlerNotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions][%d] unsubscribeTopicHandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnsubscribeTopicHandlerNotFound) ToJSONString() string {
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

func (o *UnsubscribeTopicHandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeTopicHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUnsubscribeTopicHandlerInternalServerError creates a UnsubscribeTopicHandlerInternalServerError with default headers values
func NewUnsubscribeTopicHandlerInternalServerError() *UnsubscribeTopicHandlerInternalServerError {
	return &UnsubscribeTopicHandlerInternalServerError{}
}

/*UnsubscribeTopicHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UnsubscribeTopicHandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeTopicHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions][%d] unsubscribeTopicHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UnsubscribeTopicHandlerInternalServerError) ToJSONString() string {
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

func (o *UnsubscribeTopicHandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeTopicHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
