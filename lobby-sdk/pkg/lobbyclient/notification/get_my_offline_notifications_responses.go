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

// GetMyOfflineNotificationsReader is a Reader for the GetMyOfflineNotifications structure.
type GetMyOfflineNotificationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyOfflineNotificationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyOfflineNotificationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMyOfflineNotificationsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyOfflineNotificationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyOfflineNotificationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMyOfflineNotificationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMyOfflineNotificationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/notification/offline/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyOfflineNotificationsOK creates a GetMyOfflineNotificationsOK with default headers values
func NewGetMyOfflineNotificationsOK() *GetMyOfflineNotificationsOK {
	return &GetMyOfflineNotificationsOK{}
}

/*GetMyOfflineNotificationsOK handles this case with default header values.

  OK
*/
type GetMyOfflineNotificationsOK struct {
	Payload *lobbyclientmodels.ModelNotificationsResponse
}

func (o *GetMyOfflineNotificationsOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsOK) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsOK) GetPayload() *lobbyclientmodels.ModelNotificationsResponse {
	return o.Payload
}

func (o *GetMyOfflineNotificationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelNotificationsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyOfflineNotificationsBadRequest creates a GetMyOfflineNotificationsBadRequest with default headers values
func NewGetMyOfflineNotificationsBadRequest() *GetMyOfflineNotificationsBadRequest {
	return &GetMyOfflineNotificationsBadRequest{}
}

/*GetMyOfflineNotificationsBadRequest handles this case with default header values.

  Bad Request
*/
type GetMyOfflineNotificationsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyOfflineNotificationsBadRequest) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsBadRequest) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyOfflineNotificationsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyOfflineNotificationsUnauthorized creates a GetMyOfflineNotificationsUnauthorized with default headers values
func NewGetMyOfflineNotificationsUnauthorized() *GetMyOfflineNotificationsUnauthorized {
	return &GetMyOfflineNotificationsUnauthorized{}
}

/*GetMyOfflineNotificationsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetMyOfflineNotificationsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyOfflineNotificationsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsUnauthorized) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyOfflineNotificationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyOfflineNotificationsForbidden creates a GetMyOfflineNotificationsForbidden with default headers values
func NewGetMyOfflineNotificationsForbidden() *GetMyOfflineNotificationsForbidden {
	return &GetMyOfflineNotificationsForbidden{}
}

/*GetMyOfflineNotificationsForbidden handles this case with default header values.

  Forbidden
*/
type GetMyOfflineNotificationsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyOfflineNotificationsForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsForbidden) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyOfflineNotificationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyOfflineNotificationsNotFound creates a GetMyOfflineNotificationsNotFound with default headers values
func NewGetMyOfflineNotificationsNotFound() *GetMyOfflineNotificationsNotFound {
	return &GetMyOfflineNotificationsNotFound{}
}

/*GetMyOfflineNotificationsNotFound handles this case with default header values.

  Not Found
*/
type GetMyOfflineNotificationsNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyOfflineNotificationsNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsNotFound) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyOfflineNotificationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyOfflineNotificationsInternalServerError creates a GetMyOfflineNotificationsInternalServerError with default headers values
func NewGetMyOfflineNotificationsInternalServerError() *GetMyOfflineNotificationsInternalServerError {
	return &GetMyOfflineNotificationsInternalServerError{}
}

/*GetMyOfflineNotificationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMyOfflineNotificationsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetMyOfflineNotificationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/notification/offline/me][%d] getMyOfflineNotificationsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMyOfflineNotificationsInternalServerError) ToJSONString() string {
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

func (o *GetMyOfflineNotificationsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetMyOfflineNotificationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
