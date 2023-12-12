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

// PublicGetChatSnapshotReader is a Reader for the PublicGetChatSnapshot structure.
type PublicGetChatSnapshotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetChatSnapshotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetChatSnapshotOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetChatSnapshotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetChatSnapshotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetChatSnapshotForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetChatSnapshotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetChatSnapshotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetChatSnapshotOK creates a PublicGetChatSnapshotOK with default headers values
func NewPublicGetChatSnapshotOK() *PublicGetChatSnapshotOK {
	return &PublicGetChatSnapshotOK{}
}

/*PublicGetChatSnapshotOK handles this case with default header values.

  OK
*/
type PublicGetChatSnapshotOK struct {
	Payload *chatclientmodels.ModelsChatSnapshots
}

func (o *PublicGetChatSnapshotOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetChatSnapshotOK) ToJSONString() string {
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

func (o *PublicGetChatSnapshotOK) GetPayload() *chatclientmodels.ModelsChatSnapshots {
	return o.Payload
}

func (o *PublicGetChatSnapshotOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetChatSnapshotBadRequest creates a PublicGetChatSnapshotBadRequest with default headers values
func NewPublicGetChatSnapshotBadRequest() *PublicGetChatSnapshotBadRequest {
	return &PublicGetChatSnapshotBadRequest{}
}

/*PublicGetChatSnapshotBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetChatSnapshotBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetChatSnapshotBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetChatSnapshotBadRequest) ToJSONString() string {
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

func (o *PublicGetChatSnapshotBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetChatSnapshotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetChatSnapshotUnauthorized creates a PublicGetChatSnapshotUnauthorized with default headers values
func NewPublicGetChatSnapshotUnauthorized() *PublicGetChatSnapshotUnauthorized {
	return &PublicGetChatSnapshotUnauthorized{}
}

/*PublicGetChatSnapshotUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetChatSnapshotUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetChatSnapshotUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetChatSnapshotUnauthorized) ToJSONString() string {
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

func (o *PublicGetChatSnapshotUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetChatSnapshotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetChatSnapshotForbidden creates a PublicGetChatSnapshotForbidden with default headers values
func NewPublicGetChatSnapshotForbidden() *PublicGetChatSnapshotForbidden {
	return &PublicGetChatSnapshotForbidden{}
}

/*PublicGetChatSnapshotForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetChatSnapshotForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetChatSnapshotForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetChatSnapshotForbidden) ToJSONString() string {
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

func (o *PublicGetChatSnapshotForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetChatSnapshotForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetChatSnapshotNotFound creates a PublicGetChatSnapshotNotFound with default headers values
func NewPublicGetChatSnapshotNotFound() *PublicGetChatSnapshotNotFound {
	return &PublicGetChatSnapshotNotFound{}
}

/*PublicGetChatSnapshotNotFound handles this case with default header values.

  Not Found
*/
type PublicGetChatSnapshotNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetChatSnapshotNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetChatSnapshotNotFound) ToJSONString() string {
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

func (o *PublicGetChatSnapshotNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetChatSnapshotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetChatSnapshotInternalServerError creates a PublicGetChatSnapshotInternalServerError with default headers values
func NewPublicGetChatSnapshotInternalServerError() *PublicGetChatSnapshotInternalServerError {
	return &PublicGetChatSnapshotInternalServerError{}
}

/*PublicGetChatSnapshotInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetChatSnapshotInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetChatSnapshotInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}][%d] publicGetChatSnapshotInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetChatSnapshotInternalServerError) ToJSONString() string {
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

func (o *PublicGetChatSnapshotInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetChatSnapshotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
