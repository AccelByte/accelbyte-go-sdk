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

// UnsubscribeV2HandlerReader is a Reader for the UnsubscribeV2Handler structure.
type UnsubscribeV2HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnsubscribeV2HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnsubscribeV2HandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUnsubscribeV2HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUnsubscribeV2HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnsubscribeV2HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUnsubscribeV2HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnsubscribeV2HandlerNoContent creates a UnsubscribeV2HandlerNoContent with default headers values
func NewUnsubscribeV2HandlerNoContent() *UnsubscribeV2HandlerNoContent {
	return &UnsubscribeV2HandlerNoContent{}
}

/*UnsubscribeV2HandlerNoContent handles this case with default header values.

  successfully submitted request to unsubcribe from app down notification
*/
type UnsubscribeV2HandlerNoContent struct {
}

func (o *UnsubscribeV2HandlerNoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] unsubscribeV2HandlerNoContent ", 204)
}

func (o *UnsubscribeV2HandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnsubscribeV2HandlerUnauthorized creates a UnsubscribeV2HandlerUnauthorized with default headers values
func NewUnsubscribeV2HandlerUnauthorized() *UnsubscribeV2HandlerUnauthorized {
	return &UnsubscribeV2HandlerUnauthorized{}
}

/*UnsubscribeV2HandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type UnsubscribeV2HandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeV2HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] unsubscribeV2HandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UnsubscribeV2HandlerUnauthorized) ToJSONString() string {
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

func (o *UnsubscribeV2HandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeV2HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUnsubscribeV2HandlerForbidden creates a UnsubscribeV2HandlerForbidden with default headers values
func NewUnsubscribeV2HandlerForbidden() *UnsubscribeV2HandlerForbidden {
	return &UnsubscribeV2HandlerForbidden{}
}

/*UnsubscribeV2HandlerForbidden handles this case with default header values.

  Forbidden
*/
type UnsubscribeV2HandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeV2HandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] unsubscribeV2HandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *UnsubscribeV2HandlerForbidden) ToJSONString() string {
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

func (o *UnsubscribeV2HandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeV2HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUnsubscribeV2HandlerNotFound creates a UnsubscribeV2HandlerNotFound with default headers values
func NewUnsubscribeV2HandlerNotFound() *UnsubscribeV2HandlerNotFound {
	return &UnsubscribeV2HandlerNotFound{}
}

/*UnsubscribeV2HandlerNotFound handles this case with default header values.

  Not Found
*/
type UnsubscribeV2HandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeV2HandlerNotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] unsubscribeV2HandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnsubscribeV2HandlerNotFound) ToJSONString() string {
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

func (o *UnsubscribeV2HandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeV2HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUnsubscribeV2HandlerInternalServerError creates a UnsubscribeV2HandlerInternalServerError with default headers values
func NewUnsubscribeV2HandlerInternalServerError() *UnsubscribeV2HandlerInternalServerError {
	return &UnsubscribeV2HandlerInternalServerError{}
}

/*UnsubscribeV2HandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UnsubscribeV2HandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UnsubscribeV2HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] unsubscribeV2HandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UnsubscribeV2HandlerInternalServerError) ToJSONString() string {
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

func (o *UnsubscribeV2HandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UnsubscribeV2HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
