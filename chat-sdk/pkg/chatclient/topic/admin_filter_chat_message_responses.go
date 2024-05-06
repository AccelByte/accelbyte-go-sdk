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

// AdminFilterChatMessageReader is a Reader for the AdminFilterChatMessage structure.
type AdminFilterChatMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminFilterChatMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminFilterChatMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminFilterChatMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminFilterChatMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminFilterChatMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminFilterChatMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/admin/namespaces/{namespace}/chat/filter returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminFilterChatMessageOK creates a AdminFilterChatMessageOK with default headers values
func NewAdminFilterChatMessageOK() *AdminFilterChatMessageOK {
	return &AdminFilterChatMessageOK{}
}

/*AdminFilterChatMessageOK handles this case with default header values.

  OK
*/
type AdminFilterChatMessageOK struct {
	Payload *chatclientmodels.ModelsMessageResultWithAttributes
}

func (o *AdminFilterChatMessageOK) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/chat/filter][%d] adminFilterChatMessageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminFilterChatMessageOK) ToJSONString() string {
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

func (o *AdminFilterChatMessageOK) GetPayload() *chatclientmodels.ModelsMessageResultWithAttributes {
	return o.Payload
}

func (o *AdminFilterChatMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsMessageResultWithAttributes)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminFilterChatMessageBadRequest creates a AdminFilterChatMessageBadRequest with default headers values
func NewAdminFilterChatMessageBadRequest() *AdminFilterChatMessageBadRequest {
	return &AdminFilterChatMessageBadRequest{}
}

/*AdminFilterChatMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminFilterChatMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminFilterChatMessageBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/chat/filter][%d] adminFilterChatMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminFilterChatMessageBadRequest) ToJSONString() string {
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

func (o *AdminFilterChatMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminFilterChatMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminFilterChatMessageUnauthorized creates a AdminFilterChatMessageUnauthorized with default headers values
func NewAdminFilterChatMessageUnauthorized() *AdminFilterChatMessageUnauthorized {
	return &AdminFilterChatMessageUnauthorized{}
}

/*AdminFilterChatMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminFilterChatMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminFilterChatMessageUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/chat/filter][%d] adminFilterChatMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminFilterChatMessageUnauthorized) ToJSONString() string {
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

func (o *AdminFilterChatMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminFilterChatMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminFilterChatMessageForbidden creates a AdminFilterChatMessageForbidden with default headers values
func NewAdminFilterChatMessageForbidden() *AdminFilterChatMessageForbidden {
	return &AdminFilterChatMessageForbidden{}
}

/*AdminFilterChatMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminFilterChatMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminFilterChatMessageForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/chat/filter][%d] adminFilterChatMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminFilterChatMessageForbidden) ToJSONString() string {
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

func (o *AdminFilterChatMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminFilterChatMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminFilterChatMessageInternalServerError creates a AdminFilterChatMessageInternalServerError with default headers values
func NewAdminFilterChatMessageInternalServerError() *AdminFilterChatMessageInternalServerError {
	return &AdminFilterChatMessageInternalServerError{}
}

/*AdminFilterChatMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminFilterChatMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminFilterChatMessageInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/chat/filter][%d] adminFilterChatMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminFilterChatMessageInternalServerError) ToJSONString() string {
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

func (o *AdminFilterChatMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminFilterChatMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
