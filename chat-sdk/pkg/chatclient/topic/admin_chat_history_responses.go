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

// AdminChatHistoryReader is a Reader for the AdminChatHistory structure.
type AdminChatHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChatHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChatHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminChatHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChatHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChatHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChatHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/admin/namespaces/{namespace}/chats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChatHistoryOK creates a AdminChatHistoryOK with default headers values
func NewAdminChatHistoryOK() *AdminChatHistoryOK {
	return &AdminChatHistoryOK{}
}

/*AdminChatHistoryOK handles this case with default header values.

  OK
*/
type AdminChatHistoryOK struct {
	Payload *chatclientmodels.ModelsChatMessageWithPaginationResponse
}

func (o *AdminChatHistoryOK) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/chats][%d] adminChatHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminChatHistoryOK) ToJSONString() string {
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

func (o *AdminChatHistoryOK) GetPayload() *chatclientmodels.ModelsChatMessageWithPaginationResponse {
	return o.Payload
}

func (o *AdminChatHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChatHistoryBadRequest creates a AdminChatHistoryBadRequest with default headers values
func NewAdminChatHistoryBadRequest() *AdminChatHistoryBadRequest {
	return &AdminChatHistoryBadRequest{}
}

/*AdminChatHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminChatHistoryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChatHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/chats][%d] adminChatHistoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminChatHistoryBadRequest) ToJSONString() string {
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

func (o *AdminChatHistoryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChatHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChatHistoryUnauthorized creates a AdminChatHistoryUnauthorized with default headers values
func NewAdminChatHistoryUnauthorized() *AdminChatHistoryUnauthorized {
	return &AdminChatHistoryUnauthorized{}
}

/*AdminChatHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminChatHistoryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChatHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/chats][%d] adminChatHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChatHistoryUnauthorized) ToJSONString() string {
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

func (o *AdminChatHistoryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChatHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChatHistoryForbidden creates a AdminChatHistoryForbidden with default headers values
func NewAdminChatHistoryForbidden() *AdminChatHistoryForbidden {
	return &AdminChatHistoryForbidden{}
}

/*AdminChatHistoryForbidden handles this case with default header values.

  Forbidden
*/
type AdminChatHistoryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChatHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/chats][%d] adminChatHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChatHistoryForbidden) ToJSONString() string {
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

func (o *AdminChatHistoryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChatHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChatHistoryInternalServerError creates a AdminChatHistoryInternalServerError with default headers values
func NewAdminChatHistoryInternalServerError() *AdminChatHistoryInternalServerError {
	return &AdminChatHistoryInternalServerError{}
}

/*AdminChatHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminChatHistoryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminChatHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/admin/namespaces/{namespace}/chats][%d] adminChatHistoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChatHistoryInternalServerError) ToJSONString() string {
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

func (o *AdminChatHistoryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminChatHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
