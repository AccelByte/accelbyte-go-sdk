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

// AdminGetChatSnapshotReader is a Reader for the AdminGetChatSnapshot structure.
type AdminGetChatSnapshotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetChatSnapshotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetChatSnapshotOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetChatSnapshotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetChatSnapshotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetChatSnapshotForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetChatSnapshotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetChatSnapshotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetChatSnapshotOK creates a AdminGetChatSnapshotOK with default headers values
func NewAdminGetChatSnapshotOK() *AdminGetChatSnapshotOK {
	return &AdminGetChatSnapshotOK{}
}

/*AdminGetChatSnapshotOK handles this case with default header values.

  OK
*/
type AdminGetChatSnapshotOK struct {
	Payload *chatclientmodels.ModelsChatSnapshots
}

func (o *AdminGetChatSnapshotOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetChatSnapshotOK) ToJSONString() string {
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

func (o *AdminGetChatSnapshotOK) GetPayload() *chatclientmodels.ModelsChatSnapshots {
	return o.Payload
}

func (o *AdminGetChatSnapshotOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsChatSnapshots)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetChatSnapshotBadRequest creates a AdminGetChatSnapshotBadRequest with default headers values
func NewAdminGetChatSnapshotBadRequest() *AdminGetChatSnapshotBadRequest {
	return &AdminGetChatSnapshotBadRequest{}
}

/*AdminGetChatSnapshotBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetChatSnapshotBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetChatSnapshotBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetChatSnapshotBadRequest) ToJSONString() string {
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

func (o *AdminGetChatSnapshotBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetChatSnapshotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetChatSnapshotUnauthorized creates a AdminGetChatSnapshotUnauthorized with default headers values
func NewAdminGetChatSnapshotUnauthorized() *AdminGetChatSnapshotUnauthorized {
	return &AdminGetChatSnapshotUnauthorized{}
}

/*AdminGetChatSnapshotUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetChatSnapshotUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetChatSnapshotUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetChatSnapshotUnauthorized) ToJSONString() string {
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

func (o *AdminGetChatSnapshotUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetChatSnapshotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetChatSnapshotForbidden creates a AdminGetChatSnapshotForbidden with default headers values
func NewAdminGetChatSnapshotForbidden() *AdminGetChatSnapshotForbidden {
	return &AdminGetChatSnapshotForbidden{}
}

/*AdminGetChatSnapshotForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetChatSnapshotForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetChatSnapshotForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetChatSnapshotForbidden) ToJSONString() string {
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

func (o *AdminGetChatSnapshotForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetChatSnapshotForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetChatSnapshotNotFound creates a AdminGetChatSnapshotNotFound with default headers values
func NewAdminGetChatSnapshotNotFound() *AdminGetChatSnapshotNotFound {
	return &AdminGetChatSnapshotNotFound{}
}

/*AdminGetChatSnapshotNotFound handles this case with default header values.

  Not Found
*/
type AdminGetChatSnapshotNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetChatSnapshotNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetChatSnapshotNotFound) ToJSONString() string {
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

func (o *AdminGetChatSnapshotNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetChatSnapshotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetChatSnapshotInternalServerError creates a AdminGetChatSnapshotInternalServerError with default headers values
func NewAdminGetChatSnapshotInternalServerError() *AdminGetChatSnapshotInternalServerError {
	return &AdminGetChatSnapshotInternalServerError{}
}

/*AdminGetChatSnapshotInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetChatSnapshotInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetChatSnapshotInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}][%d] adminGetChatSnapshotInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetChatSnapshotInternalServerError) ToJSONString() string {
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

func (o *AdminGetChatSnapshotInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetChatSnapshotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
