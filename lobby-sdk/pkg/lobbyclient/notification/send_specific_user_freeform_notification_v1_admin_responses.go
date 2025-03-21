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

// SendSpecificUserFreeformNotificationV1AdminReader is a Reader for the SendSpecificUserFreeformNotificationV1Admin structure.
type SendSpecificUserFreeformNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendSpecificUserFreeformNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendSpecificUserFreeformNotificationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendSpecificUserFreeformNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendSpecificUserFreeformNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendSpecificUserFreeformNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendSpecificUserFreeformNotificationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendSpecificUserFreeformNotificationV1AdminNoContent creates a SendSpecificUserFreeformNotificationV1AdminNoContent with default headers values
func NewSendSpecificUserFreeformNotificationV1AdminNoContent() *SendSpecificUserFreeformNotificationV1AdminNoContent {
	return &SendSpecificUserFreeformNotificationV1AdminNoContent{}
}

/*SendSpecificUserFreeformNotificationV1AdminNoContent handles this case with default header values.

  No Content
*/
type SendSpecificUserFreeformNotificationV1AdminNoContent struct {
}

func (o *SendSpecificUserFreeformNotificationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify][%d] sendSpecificUserFreeformNotificationV1AdminNoContent ", 204)
}

func (o *SendSpecificUserFreeformNotificationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendSpecificUserFreeformNotificationV1AdminBadRequest creates a SendSpecificUserFreeformNotificationV1AdminBadRequest with default headers values
func NewSendSpecificUserFreeformNotificationV1AdminBadRequest() *SendSpecificUserFreeformNotificationV1AdminBadRequest {
	return &SendSpecificUserFreeformNotificationV1AdminBadRequest{}
}

/*SendSpecificUserFreeformNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendSpecificUserFreeformNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendSpecificUserFreeformNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify][%d] sendSpecificUserFreeformNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendSpecificUserFreeformNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendSpecificUserFreeformNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendSpecificUserFreeformNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendSpecificUserFreeformNotificationV1AdminUnauthorized creates a SendSpecificUserFreeformNotificationV1AdminUnauthorized with default headers values
func NewSendSpecificUserFreeformNotificationV1AdminUnauthorized() *SendSpecificUserFreeformNotificationV1AdminUnauthorized {
	return &SendSpecificUserFreeformNotificationV1AdminUnauthorized{}
}

/*SendSpecificUserFreeformNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendSpecificUserFreeformNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendSpecificUserFreeformNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify][%d] sendSpecificUserFreeformNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendSpecificUserFreeformNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendSpecificUserFreeformNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendSpecificUserFreeformNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendSpecificUserFreeformNotificationV1AdminForbidden creates a SendSpecificUserFreeformNotificationV1AdminForbidden with default headers values
func NewSendSpecificUserFreeformNotificationV1AdminForbidden() *SendSpecificUserFreeformNotificationV1AdminForbidden {
	return &SendSpecificUserFreeformNotificationV1AdminForbidden{}
}

/*SendSpecificUserFreeformNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendSpecificUserFreeformNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendSpecificUserFreeformNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify][%d] sendSpecificUserFreeformNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendSpecificUserFreeformNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendSpecificUserFreeformNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendSpecificUserFreeformNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendSpecificUserFreeformNotificationV1AdminNotFound creates a SendSpecificUserFreeformNotificationV1AdminNotFound with default headers values
func NewSendSpecificUserFreeformNotificationV1AdminNotFound() *SendSpecificUserFreeformNotificationV1AdminNotFound {
	return &SendSpecificUserFreeformNotificationV1AdminNotFound{}
}

/*SendSpecificUserFreeformNotificationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type SendSpecificUserFreeformNotificationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendSpecificUserFreeformNotificationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify][%d] sendSpecificUserFreeformNotificationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendSpecificUserFreeformNotificationV1AdminNotFound) ToJSONString() string {
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

func (o *SendSpecificUserFreeformNotificationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendSpecificUserFreeformNotificationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
