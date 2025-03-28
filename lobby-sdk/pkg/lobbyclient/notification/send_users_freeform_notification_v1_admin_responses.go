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

// SendUsersFreeformNotificationV1AdminReader is a Reader for the SendUsersFreeformNotificationV1Admin structure.
type SendUsersFreeformNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendUsersFreeformNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewSendUsersFreeformNotificationV1AdminAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendUsersFreeformNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendUsersFreeformNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendUsersFreeformNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendUsersFreeformNotificationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendUsersFreeformNotificationV1AdminAccepted creates a SendUsersFreeformNotificationV1AdminAccepted with default headers values
func NewSendUsersFreeformNotificationV1AdminAccepted() *SendUsersFreeformNotificationV1AdminAccepted {
	return &SendUsersFreeformNotificationV1AdminAccepted{}
}

/*SendUsersFreeformNotificationV1AdminAccepted handles this case with default header values.

  Accepted
*/
type SendUsersFreeformNotificationV1AdminAccepted struct {
}

func (o *SendUsersFreeformNotificationV1AdminAccepted) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify][%d] sendUsersFreeformNotificationV1AdminAccepted ", 202)
}

func (o *SendUsersFreeformNotificationV1AdminAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendUsersFreeformNotificationV1AdminBadRequest creates a SendUsersFreeformNotificationV1AdminBadRequest with default headers values
func NewSendUsersFreeformNotificationV1AdminBadRequest() *SendUsersFreeformNotificationV1AdminBadRequest {
	return &SendUsersFreeformNotificationV1AdminBadRequest{}
}

/*SendUsersFreeformNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendUsersFreeformNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersFreeformNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify][%d] sendUsersFreeformNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendUsersFreeformNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendUsersFreeformNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersFreeformNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendUsersFreeformNotificationV1AdminUnauthorized creates a SendUsersFreeformNotificationV1AdminUnauthorized with default headers values
func NewSendUsersFreeformNotificationV1AdminUnauthorized() *SendUsersFreeformNotificationV1AdminUnauthorized {
	return &SendUsersFreeformNotificationV1AdminUnauthorized{}
}

/*SendUsersFreeformNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendUsersFreeformNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersFreeformNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify][%d] sendUsersFreeformNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendUsersFreeformNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendUsersFreeformNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersFreeformNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendUsersFreeformNotificationV1AdminForbidden creates a SendUsersFreeformNotificationV1AdminForbidden with default headers values
func NewSendUsersFreeformNotificationV1AdminForbidden() *SendUsersFreeformNotificationV1AdminForbidden {
	return &SendUsersFreeformNotificationV1AdminForbidden{}
}

/*SendUsersFreeformNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendUsersFreeformNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersFreeformNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify][%d] sendUsersFreeformNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendUsersFreeformNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendUsersFreeformNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersFreeformNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendUsersFreeformNotificationV1AdminNotFound creates a SendUsersFreeformNotificationV1AdminNotFound with default headers values
func NewSendUsersFreeformNotificationV1AdminNotFound() *SendUsersFreeformNotificationV1AdminNotFound {
	return &SendUsersFreeformNotificationV1AdminNotFound{}
}

/*SendUsersFreeformNotificationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type SendUsersFreeformNotificationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendUsersFreeformNotificationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify][%d] sendUsersFreeformNotificationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendUsersFreeformNotificationV1AdminNotFound) ToJSONString() string {
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

func (o *SendUsersFreeformNotificationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendUsersFreeformNotificationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
