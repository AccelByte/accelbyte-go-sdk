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

// NotificationWithTemplateByUserIDReader is a Reader for the NotificationWithTemplateByUserID structure.
type NotificationWithTemplateByUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *NotificationWithTemplateByUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewNotificationWithTemplateByUserIDNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewNotificationWithTemplateByUserIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewNotificationWithTemplateByUserIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewNotificationWithTemplateByUserIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewNotificationWithTemplateByUserIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/users/{userId}/templated returns an error %d: %s", response.Code(), string(data))
	}
}

// NewNotificationWithTemplateByUserIDNoContent creates a NotificationWithTemplateByUserIDNoContent with default headers values
func NewNotificationWithTemplateByUserIDNoContent() *NotificationWithTemplateByUserIDNoContent {
	return &NotificationWithTemplateByUserIDNoContent{}
}

/*NotificationWithTemplateByUserIDNoContent handles this case with default header values.

  No Content
*/
type NotificationWithTemplateByUserIDNoContent struct {
}

func (o *NotificationWithTemplateByUserIDNoContent) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/templated][%d] notificationWithTemplateByUserIdNoContent ", 204)
}

func (o *NotificationWithTemplateByUserIDNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewNotificationWithTemplateByUserIDBadRequest creates a NotificationWithTemplateByUserIDBadRequest with default headers values
func NewNotificationWithTemplateByUserIDBadRequest() *NotificationWithTemplateByUserIDBadRequest {
	return &NotificationWithTemplateByUserIDBadRequest{}
}

/*NotificationWithTemplateByUserIDBadRequest handles this case with default header values.

  Bad Request
*/
type NotificationWithTemplateByUserIDBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *NotificationWithTemplateByUserIDBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/templated][%d] notificationWithTemplateByUserIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *NotificationWithTemplateByUserIDBadRequest) ToJSONString() string {
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

func (o *NotificationWithTemplateByUserIDBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *NotificationWithTemplateByUserIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewNotificationWithTemplateByUserIDUnauthorized creates a NotificationWithTemplateByUserIDUnauthorized with default headers values
func NewNotificationWithTemplateByUserIDUnauthorized() *NotificationWithTemplateByUserIDUnauthorized {
	return &NotificationWithTemplateByUserIDUnauthorized{}
}

/*NotificationWithTemplateByUserIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type NotificationWithTemplateByUserIDUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *NotificationWithTemplateByUserIDUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/templated][%d] notificationWithTemplateByUserIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *NotificationWithTemplateByUserIDUnauthorized) ToJSONString() string {
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

func (o *NotificationWithTemplateByUserIDUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *NotificationWithTemplateByUserIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewNotificationWithTemplateByUserIDForbidden creates a NotificationWithTemplateByUserIDForbidden with default headers values
func NewNotificationWithTemplateByUserIDForbidden() *NotificationWithTemplateByUserIDForbidden {
	return &NotificationWithTemplateByUserIDForbidden{}
}

/*NotificationWithTemplateByUserIDForbidden handles this case with default header values.

  Forbidden
*/
type NotificationWithTemplateByUserIDForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *NotificationWithTemplateByUserIDForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/templated][%d] notificationWithTemplateByUserIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *NotificationWithTemplateByUserIDForbidden) ToJSONString() string {
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

func (o *NotificationWithTemplateByUserIDForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *NotificationWithTemplateByUserIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewNotificationWithTemplateByUserIDNotFound creates a NotificationWithTemplateByUserIDNotFound with default headers values
func NewNotificationWithTemplateByUserIDNotFound() *NotificationWithTemplateByUserIDNotFound {
	return &NotificationWithTemplateByUserIDNotFound{}
}

/*NotificationWithTemplateByUserIDNotFound handles this case with default header values.

  Not Found
*/
type NotificationWithTemplateByUserIDNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *NotificationWithTemplateByUserIDNotFound) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/templated][%d] notificationWithTemplateByUserIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *NotificationWithTemplateByUserIDNotFound) ToJSONString() string {
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

func (o *NotificationWithTemplateByUserIDNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *NotificationWithTemplateByUserIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
