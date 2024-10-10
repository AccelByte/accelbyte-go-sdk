// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

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

// PublicDeleteChatReader is a Reader for the PublicDeleteChat structure.
type PublicDeleteChatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeleteChatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeleteChatNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDeleteChatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeleteChatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDeleteChatForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeleteChatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeleteChatNoContent creates a PublicDeleteChatNoContent with default headers values
func NewPublicDeleteChatNoContent() *PublicDeleteChatNoContent {
	return &PublicDeleteChatNoContent{}
}

/*PublicDeleteChatNoContent handles this case with default header values.

  No Content
*/
type PublicDeleteChatNoContent struct {
}

func (o *PublicDeleteChatNoContent) Error() string {
	return fmt.Sprintf("[DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] publicDeleteChatNoContent ", 204)
}

func (o *PublicDeleteChatNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeleteChatBadRequest creates a PublicDeleteChatBadRequest with default headers values
func NewPublicDeleteChatBadRequest() *PublicDeleteChatBadRequest {
	return &PublicDeleteChatBadRequest{}
}

/*PublicDeleteChatBadRequest handles this case with default header values.

  Bad Request
*/
type PublicDeleteChatBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicDeleteChatBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] publicDeleteChatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDeleteChatBadRequest) ToJSONString() string {
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

func (o *PublicDeleteChatBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicDeleteChatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeleteChatUnauthorized creates a PublicDeleteChatUnauthorized with default headers values
func NewPublicDeleteChatUnauthorized() *PublicDeleteChatUnauthorized {
	return &PublicDeleteChatUnauthorized{}
}

/*PublicDeleteChatUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicDeleteChatUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicDeleteChatUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] publicDeleteChatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeleteChatUnauthorized) ToJSONString() string {
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

func (o *PublicDeleteChatUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicDeleteChatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeleteChatForbidden creates a PublicDeleteChatForbidden with default headers values
func NewPublicDeleteChatForbidden() *PublicDeleteChatForbidden {
	return &PublicDeleteChatForbidden{}
}

/*PublicDeleteChatForbidden handles this case with default header values.

  Forbidden
*/
type PublicDeleteChatForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicDeleteChatForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] publicDeleteChatForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDeleteChatForbidden) ToJSONString() string {
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

func (o *PublicDeleteChatForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicDeleteChatForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDeleteChatInternalServerError creates a PublicDeleteChatInternalServerError with default headers values
func NewPublicDeleteChatInternalServerError() *PublicDeleteChatInternalServerError {
	return &PublicDeleteChatInternalServerError{}
}

/*PublicDeleteChatInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicDeleteChatInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicDeleteChatInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] publicDeleteChatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeleteChatInternalServerError) ToJSONString() string {
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

func (o *PublicDeleteChatInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicDeleteChatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
