// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// GetMyNotificationsReader is a Reader for the GetMyNotifications structure.
type GetMyNotificationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyNotificationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyNotificationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMyNotificationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyNotificationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyNotificationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMyNotificationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMyNotificationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyNotificationsOK creates a GetMyNotificationsOK with default headers values
func NewGetMyNotificationsOK() *GetMyNotificationsOK {
	return &GetMyNotificationsOK{}
}

/*GetMyNotificationsOK handles this case with default header values.

  OK
*/
type GetMyNotificationsOK struct {
	Payload *lobbyclientmodels.ModelNotificationResponse
}

func (o *GetMyNotificationsOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyNotificationsOK) ToJSONString() string {
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

func (o *GetMyNotificationsOK) GetPayload() *lobbyclientmodels.ModelNotificationResponse {
	return o.Payload
}

func (o *GetMyNotificationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelNotificationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyNotificationsBadRequest creates a GetMyNotificationsBadRequest with default headers values
func NewGetMyNotificationsBadRequest() *GetMyNotificationsBadRequest {
	return &GetMyNotificationsBadRequest{}
}

/*GetMyNotificationsBadRequest handles this case with default header values.

  Bad Request
*/
type GetMyNotificationsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyNotificationsBadRequest) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMyNotificationsBadRequest) ToJSONString() string {
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

func (o *GetMyNotificationsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyNotificationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyNotificationsUnauthorized creates a GetMyNotificationsUnauthorized with default headers values
func NewGetMyNotificationsUnauthorized() *GetMyNotificationsUnauthorized {
	return &GetMyNotificationsUnauthorized{}
}

/*GetMyNotificationsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetMyNotificationsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyNotificationsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyNotificationsUnauthorized) ToJSONString() string {
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

func (o *GetMyNotificationsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyNotificationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyNotificationsForbidden creates a GetMyNotificationsForbidden with default headers values
func NewGetMyNotificationsForbidden() *GetMyNotificationsForbidden {
	return &GetMyNotificationsForbidden{}
}

/*GetMyNotificationsForbidden handles this case with default header values.

  Forbidden
*/
type GetMyNotificationsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyNotificationsForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyNotificationsForbidden) ToJSONString() string {
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

func (o *GetMyNotificationsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyNotificationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyNotificationsNotFound creates a GetMyNotificationsNotFound with default headers values
func NewGetMyNotificationsNotFound() *GetMyNotificationsNotFound {
	return &GetMyNotificationsNotFound{}
}

/*GetMyNotificationsNotFound handles this case with default header values.

  Not Found
*/
type GetMyNotificationsNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyNotificationsNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMyNotificationsNotFound) ToJSONString() string {
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

func (o *GetMyNotificationsNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyNotificationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyNotificationsInternalServerError creates a GetMyNotificationsInternalServerError with default headers values
func NewGetMyNotificationsInternalServerError() *GetMyNotificationsInternalServerError {
	return &GetMyNotificationsInternalServerError{}
}

/*GetMyNotificationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMyNotificationsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyNotificationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/me][%d] getMyNotificationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMyNotificationsInternalServerError) ToJSONString() string {
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

func (o *GetMyNotificationsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyNotificationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
