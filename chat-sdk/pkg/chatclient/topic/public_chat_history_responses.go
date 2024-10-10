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

// PublicChatHistoryReader is a Reader for the PublicChatHistory structure.
type PublicChatHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicChatHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicChatHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicChatHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicChatHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicChatHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicChatHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/public/namespaces/{namespace}/topic/{topic}/chats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicChatHistoryOK creates a PublicChatHistoryOK with default headers values
func NewPublicChatHistoryOK() *PublicChatHistoryOK {
	return &PublicChatHistoryOK{}
}

/*PublicChatHistoryOK handles this case with default header values.

  OK
*/
type PublicChatHistoryOK struct {
	Payload []*chatclientmodels.ModelsChatMessageResponse
}

func (o *PublicChatHistoryOK) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic/{topic}/chats][%d] publicChatHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *PublicChatHistoryOK) ToJSONString() string {
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

func (o *PublicChatHistoryOK) GetPayload() []*chatclientmodels.ModelsChatMessageResponse {
	return o.Payload
}

func (o *PublicChatHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicChatHistoryBadRequest creates a PublicChatHistoryBadRequest with default headers values
func NewPublicChatHistoryBadRequest() *PublicChatHistoryBadRequest {
	return &PublicChatHistoryBadRequest{}
}

/*PublicChatHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type PublicChatHistoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicChatHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic/{topic}/chats][%d] publicChatHistoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicChatHistoryBadRequest) ToJSONString() string {
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

func (o *PublicChatHistoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicChatHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChatHistoryUnauthorized creates a PublicChatHistoryUnauthorized with default headers values
func NewPublicChatHistoryUnauthorized() *PublicChatHistoryUnauthorized {
	return &PublicChatHistoryUnauthorized{}
}

/*PublicChatHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicChatHistoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicChatHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic/{topic}/chats][%d] publicChatHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicChatHistoryUnauthorized) ToJSONString() string {
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

func (o *PublicChatHistoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicChatHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChatHistoryForbidden creates a PublicChatHistoryForbidden with default headers values
func NewPublicChatHistoryForbidden() *PublicChatHistoryForbidden {
	return &PublicChatHistoryForbidden{}
}

/*PublicChatHistoryForbidden handles this case with default header values.

  Forbidden
*/
type PublicChatHistoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicChatHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic/{topic}/chats][%d] publicChatHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicChatHistoryForbidden) ToJSONString() string {
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

func (o *PublicChatHistoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicChatHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChatHistoryInternalServerError creates a PublicChatHistoryInternalServerError with default headers values
func NewPublicChatHistoryInternalServerError() *PublicChatHistoryInternalServerError {
	return &PublicChatHistoryInternalServerError{}
}

/*PublicChatHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicChatHistoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicChatHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/public/namespaces/{namespace}/topic/{topic}/chats][%d] publicChatHistoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicChatHistoryInternalServerError) ToJSONString() string {
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

func (o *PublicChatHistoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicChatHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
