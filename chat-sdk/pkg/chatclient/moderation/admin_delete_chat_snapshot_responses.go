// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package moderation

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// AdminDeleteChatSnapshotReader is a Reader for the AdminDeleteChatSnapshot structure.
type AdminDeleteChatSnapshotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteChatSnapshotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteChatSnapshotNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteChatSnapshotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteChatSnapshotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteChatSnapshotForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteChatSnapshotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteChatSnapshotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteChatSnapshotNoContent creates a AdminDeleteChatSnapshotNoContent with default headers values
func NewAdminDeleteChatSnapshotNoContent() *AdminDeleteChatSnapshotNoContent {
	return &AdminDeleteChatSnapshotNoContent{}
}

/*AdminDeleteChatSnapshotNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteChatSnapshotNoContent struct {
}

func (o *AdminDeleteChatSnapshotNoContent) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotNoContent ", 204)
}

func (o *AdminDeleteChatSnapshotNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteChatSnapshotBadRequest creates a AdminDeleteChatSnapshotBadRequest with default headers values
func NewAdminDeleteChatSnapshotBadRequest() *AdminDeleteChatSnapshotBadRequest {
	return &AdminDeleteChatSnapshotBadRequest{}
}

/*AdminDeleteChatSnapshotBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteChatSnapshotBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatSnapshotBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteChatSnapshotBadRequest) ToJSONString() string {
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

func (o *AdminDeleteChatSnapshotBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatSnapshotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatSnapshotUnauthorized creates a AdminDeleteChatSnapshotUnauthorized with default headers values
func NewAdminDeleteChatSnapshotUnauthorized() *AdminDeleteChatSnapshotUnauthorized {
	return &AdminDeleteChatSnapshotUnauthorized{}
}

/*AdminDeleteChatSnapshotUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteChatSnapshotUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatSnapshotUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteChatSnapshotUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteChatSnapshotUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatSnapshotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatSnapshotForbidden creates a AdminDeleteChatSnapshotForbidden with default headers values
func NewAdminDeleteChatSnapshotForbidden() *AdminDeleteChatSnapshotForbidden {
	return &AdminDeleteChatSnapshotForbidden{}
}

/*AdminDeleteChatSnapshotForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteChatSnapshotForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatSnapshotForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteChatSnapshotForbidden) ToJSONString() string {
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

func (o *AdminDeleteChatSnapshotForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatSnapshotForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatSnapshotNotFound creates a AdminDeleteChatSnapshotNotFound with default headers values
func NewAdminDeleteChatSnapshotNotFound() *AdminDeleteChatSnapshotNotFound {
	return &AdminDeleteChatSnapshotNotFound{}
}

/*AdminDeleteChatSnapshotNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteChatSnapshotNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatSnapshotNotFound) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteChatSnapshotNotFound) ToJSONString() string {
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

func (o *AdminDeleteChatSnapshotNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatSnapshotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatSnapshotInternalServerError creates a AdminDeleteChatSnapshotInternalServerError with default headers values
func NewAdminDeleteChatSnapshotInternalServerError() *AdminDeleteChatSnapshotInternalServerError {
	return &AdminDeleteChatSnapshotInternalServerError{}
}

/*AdminDeleteChatSnapshotInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteChatSnapshotInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatSnapshotInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminDeleteChatSnapshotInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteChatSnapshotInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteChatSnapshotInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatSnapshotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
