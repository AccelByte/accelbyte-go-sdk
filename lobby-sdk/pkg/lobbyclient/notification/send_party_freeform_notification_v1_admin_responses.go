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

// SendPartyFreeformNotificationV1AdminReader is a Reader for the SendPartyFreeformNotificationV1Admin structure.
type SendPartyFreeformNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendPartyFreeformNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendPartyFreeformNotificationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendPartyFreeformNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendPartyFreeformNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendPartyFreeformNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendPartyFreeformNotificationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendPartyFreeformNotificationV1AdminNoContent creates a SendPartyFreeformNotificationV1AdminNoContent with default headers values
func NewSendPartyFreeformNotificationV1AdminNoContent() *SendPartyFreeformNotificationV1AdminNoContent {
	return &SendPartyFreeformNotificationV1AdminNoContent{}
}

/*SendPartyFreeformNotificationV1AdminNoContent handles this case with default header values.

  No Content
*/
type SendPartyFreeformNotificationV1AdminNoContent struct {
}

func (o *SendPartyFreeformNotificationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify][%d] sendPartyFreeformNotificationV1AdminNoContent ", 204)
}

func (o *SendPartyFreeformNotificationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendPartyFreeformNotificationV1AdminBadRequest creates a SendPartyFreeformNotificationV1AdminBadRequest with default headers values
func NewSendPartyFreeformNotificationV1AdminBadRequest() *SendPartyFreeformNotificationV1AdminBadRequest {
	return &SendPartyFreeformNotificationV1AdminBadRequest{}
}

/*SendPartyFreeformNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendPartyFreeformNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyFreeformNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify][%d] sendPartyFreeformNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendPartyFreeformNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendPartyFreeformNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyFreeformNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyFreeformNotificationV1AdminUnauthorized creates a SendPartyFreeformNotificationV1AdminUnauthorized with default headers values
func NewSendPartyFreeformNotificationV1AdminUnauthorized() *SendPartyFreeformNotificationV1AdminUnauthorized {
	return &SendPartyFreeformNotificationV1AdminUnauthorized{}
}

/*SendPartyFreeformNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendPartyFreeformNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyFreeformNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify][%d] sendPartyFreeformNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendPartyFreeformNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendPartyFreeformNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyFreeformNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyFreeformNotificationV1AdminForbidden creates a SendPartyFreeformNotificationV1AdminForbidden with default headers values
func NewSendPartyFreeformNotificationV1AdminForbidden() *SendPartyFreeformNotificationV1AdminForbidden {
	return &SendPartyFreeformNotificationV1AdminForbidden{}
}

/*SendPartyFreeformNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendPartyFreeformNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyFreeformNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify][%d] sendPartyFreeformNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendPartyFreeformNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendPartyFreeformNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyFreeformNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyFreeformNotificationV1AdminNotFound creates a SendPartyFreeformNotificationV1AdminNotFound with default headers values
func NewSendPartyFreeformNotificationV1AdminNotFound() *SendPartyFreeformNotificationV1AdminNotFound {
	return &SendPartyFreeformNotificationV1AdminNotFound{}
}

/*SendPartyFreeformNotificationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type SendPartyFreeformNotificationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyFreeformNotificationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify][%d] sendPartyFreeformNotificationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendPartyFreeformNotificationV1AdminNotFound) ToJSONString() string {
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

func (o *SendPartyFreeformNotificationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyFreeformNotificationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
