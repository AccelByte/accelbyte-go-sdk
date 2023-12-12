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

// AdminTopicChatHistoryReader is a Reader for the AdminTopicChatHistory structure.
type AdminTopicChatHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminTopicChatHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminTopicChatHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminTopicChatHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminTopicChatHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminTopicChatHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminTopicChatHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminTopicChatHistoryOK creates a AdminTopicChatHistoryOK with default headers values
func NewAdminTopicChatHistoryOK() *AdminTopicChatHistoryOK {
	return &AdminTopicChatHistoryOK{}
}

/*AdminTopicChatHistoryOK handles this case with default header values.

  OK
*/
type AdminTopicChatHistoryOK struct {
	Payload *chatclientmodels.ModelsChatMessageWithPaginationResponse
}

func (o *AdminTopicChatHistoryOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminTopicChatHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminTopicChatHistoryOK) ToJSONString() string {
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

func (o *AdminTopicChatHistoryOK) GetPayload() *chatclientmodels.ModelsChatMessageWithPaginationResponse {
	return o.Payload
}

func (o *AdminTopicChatHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsChatMessageWithPaginationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTopicChatHistoryBadRequest creates a AdminTopicChatHistoryBadRequest with default headers values
func NewAdminTopicChatHistoryBadRequest() *AdminTopicChatHistoryBadRequest {
	return &AdminTopicChatHistoryBadRequest{}
}

/*AdminTopicChatHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminTopicChatHistoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicChatHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminTopicChatHistoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminTopicChatHistoryBadRequest) ToJSONString() string {
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

func (o *AdminTopicChatHistoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicChatHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicChatHistoryUnauthorized creates a AdminTopicChatHistoryUnauthorized with default headers values
func NewAdminTopicChatHistoryUnauthorized() *AdminTopicChatHistoryUnauthorized {
	return &AdminTopicChatHistoryUnauthorized{}
}

/*AdminTopicChatHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminTopicChatHistoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicChatHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminTopicChatHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminTopicChatHistoryUnauthorized) ToJSONString() string {
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

func (o *AdminTopicChatHistoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicChatHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicChatHistoryForbidden creates a AdminTopicChatHistoryForbidden with default headers values
func NewAdminTopicChatHistoryForbidden() *AdminTopicChatHistoryForbidden {
	return &AdminTopicChatHistoryForbidden{}
}

/*AdminTopicChatHistoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminTopicChatHistoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicChatHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminTopicChatHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminTopicChatHistoryForbidden) ToJSONString() string {
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

func (o *AdminTopicChatHistoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicChatHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTopicChatHistoryInternalServerError creates a AdminTopicChatHistoryInternalServerError with default headers values
func NewAdminTopicChatHistoryInternalServerError() *AdminTopicChatHistoryInternalServerError {
	return &AdminTopicChatHistoryInternalServerError{}
}

/*AdminTopicChatHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminTopicChatHistoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminTopicChatHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminTopicChatHistoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminTopicChatHistoryInternalServerError) ToJSONString() string {
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

func (o *AdminTopicChatHistoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminTopicChatHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
