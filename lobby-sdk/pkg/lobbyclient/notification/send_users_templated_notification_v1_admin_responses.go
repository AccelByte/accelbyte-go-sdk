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

// SendUsersTemplatedNotificationV1AdminReader is a Reader for the SendUsersTemplatedNotificationV1Admin structure.
type SendUsersTemplatedNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendUsersTemplatedNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewSendUsersTemplatedNotificationV1AdminAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendUsersTemplatedNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendUsersTemplatedNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendUsersTemplatedNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendUsersTemplatedNotificationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendUsersTemplatedNotificationV1AdminAccepted creates a SendUsersTemplatedNotificationV1AdminAccepted with default headers values
func NewSendUsersTemplatedNotificationV1AdminAccepted() *SendUsersTemplatedNotificationV1AdminAccepted {
	return &SendUsersTemplatedNotificationV1AdminAccepted{}
}

/*SendUsersTemplatedNotificationV1AdminAccepted handles this case with default header values.

  Accepted
*/
type SendUsersTemplatedNotificationV1AdminAccepted struct {
}

func (o *SendUsersTemplatedNotificationV1AdminAccepted) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify][%d] sendUsersTemplatedNotificationV1AdminAccepted ", 202)
}

func (o *SendUsersTemplatedNotificationV1AdminAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendUsersTemplatedNotificationV1AdminBadRequest creates a SendUsersTemplatedNotificationV1AdminBadRequest with default headers values
func NewSendUsersTemplatedNotificationV1AdminBadRequest() *SendUsersTemplatedNotificationV1AdminBadRequest {
	return &SendUsersTemplatedNotificationV1AdminBadRequest{}
}

/*SendUsersTemplatedNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendUsersTemplatedNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersTemplatedNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify][%d] sendUsersTemplatedNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendUsersTemplatedNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendUsersTemplatedNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersTemplatedNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendUsersTemplatedNotificationV1AdminUnauthorized creates a SendUsersTemplatedNotificationV1AdminUnauthorized with default headers values
func NewSendUsersTemplatedNotificationV1AdminUnauthorized() *SendUsersTemplatedNotificationV1AdminUnauthorized {
	return &SendUsersTemplatedNotificationV1AdminUnauthorized{}
}

/*SendUsersTemplatedNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendUsersTemplatedNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersTemplatedNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify][%d] sendUsersTemplatedNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendUsersTemplatedNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendUsersTemplatedNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersTemplatedNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendUsersTemplatedNotificationV1AdminForbidden creates a SendUsersTemplatedNotificationV1AdminForbidden with default headers values
func NewSendUsersTemplatedNotificationV1AdminForbidden() *SendUsersTemplatedNotificationV1AdminForbidden {
	return &SendUsersTemplatedNotificationV1AdminForbidden{}
}

/*SendUsersTemplatedNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendUsersTemplatedNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersTemplatedNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify][%d] sendUsersTemplatedNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendUsersTemplatedNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendUsersTemplatedNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersTemplatedNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendUsersTemplatedNotificationV1AdminNotFound creates a SendUsersTemplatedNotificationV1AdminNotFound with default headers values
func NewSendUsersTemplatedNotificationV1AdminNotFound() *SendUsersTemplatedNotificationV1AdminNotFound {
	return &SendUsersTemplatedNotificationV1AdminNotFound{}
}

/*SendUsersTemplatedNotificationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type SendUsersTemplatedNotificationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersTemplatedNotificationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates/notify][%d] sendUsersTemplatedNotificationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendUsersTemplatedNotificationV1AdminNotFound) ToJSONString() string {
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

func (o *SendUsersTemplatedNotificationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersTemplatedNotificationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
