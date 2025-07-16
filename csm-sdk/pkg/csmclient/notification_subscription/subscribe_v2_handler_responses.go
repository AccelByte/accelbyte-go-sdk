// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription

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

// SubscribeV2HandlerReader is a Reader for the SubscribeV2Handler structure.
type SubscribeV2HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SubscribeV2HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSubscribeV2HandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSubscribeV2HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSubscribeV2HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSubscribeV2HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSubscribeV2HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSubscribeV2HandlerNoContent creates a SubscribeV2HandlerNoContent with default headers values
func NewSubscribeV2HandlerNoContent() *SubscribeV2HandlerNoContent {
	return &SubscribeV2HandlerNoContent{}
}

/*SubscribeV2HandlerNoContent handles this case with default header values.

  successfully submitted request to subcribe from app notification
*/
type SubscribeV2HandlerNoContent struct {
}

func (o *SubscribeV2HandlerNoContent) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] subscribeV2HandlerNoContent ", 204)
}

func (o *SubscribeV2HandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSubscribeV2HandlerUnauthorized creates a SubscribeV2HandlerUnauthorized with default headers values
func NewSubscribeV2HandlerUnauthorized() *SubscribeV2HandlerUnauthorized {
	return &SubscribeV2HandlerUnauthorized{}
}

/*SubscribeV2HandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type SubscribeV2HandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeV2HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] subscribeV2HandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SubscribeV2HandlerUnauthorized) ToJSONString() string {
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

func (o *SubscribeV2HandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeV2HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeV2HandlerForbidden creates a SubscribeV2HandlerForbidden with default headers values
func NewSubscribeV2HandlerForbidden() *SubscribeV2HandlerForbidden {
	return &SubscribeV2HandlerForbidden{}
}

/*SubscribeV2HandlerForbidden handles this case with default header values.

  Forbidden
*/
type SubscribeV2HandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeV2HandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] subscribeV2HandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *SubscribeV2HandlerForbidden) ToJSONString() string {
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

func (o *SubscribeV2HandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeV2HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeV2HandlerNotFound creates a SubscribeV2HandlerNotFound with default headers values
func NewSubscribeV2HandlerNotFound() *SubscribeV2HandlerNotFound {
	return &SubscribeV2HandlerNotFound{}
}

/*SubscribeV2HandlerNotFound handles this case with default header values.

  Not Found
*/
type SubscribeV2HandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeV2HandlerNotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] subscribeV2HandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *SubscribeV2HandlerNotFound) ToJSONString() string {
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

func (o *SubscribeV2HandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeV2HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeV2HandlerInternalServerError creates a SubscribeV2HandlerInternalServerError with default headers values
func NewSubscribeV2HandlerInternalServerError() *SubscribeV2HandlerInternalServerError {
	return &SubscribeV2HandlerInternalServerError{}
}

/*SubscribeV2HandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SubscribeV2HandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeV2HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] subscribeV2HandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SubscribeV2HandlerInternalServerError) ToJSONString() string {
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

func (o *SubscribeV2HandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeV2HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
