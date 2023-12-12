// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

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

// AdminSendInboxMessageReader is a Reader for the AdminSendInboxMessage structure.
type AdminSendInboxMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSendInboxMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSendInboxMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSendInboxMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSendInboxMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSendInboxMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSendInboxMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSendInboxMessageOK creates a AdminSendInboxMessageOK with default headers values
func NewAdminSendInboxMessageOK() *AdminSendInboxMessageOK {
	return &AdminSendInboxMessageOK{}
}

/*AdminSendInboxMessageOK handles this case with default header values.

  OK
*/
type AdminSendInboxMessageOK struct {
	Payload *chatclientmodels.ModelsSendInboxMessageResponse
}

func (o *AdminSendInboxMessageOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send][%d] adminSendInboxMessageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSendInboxMessageOK) ToJSONString() string {
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

func (o *AdminSendInboxMessageOK) GetPayload() *chatclientmodels.ModelsSendInboxMessageResponse {
	return o.Payload
}

func (o *AdminSendInboxMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsSendInboxMessageResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSendInboxMessageBadRequest creates a AdminSendInboxMessageBadRequest with default headers values
func NewAdminSendInboxMessageBadRequest() *AdminSendInboxMessageBadRequest {
	return &AdminSendInboxMessageBadRequest{}
}

/*AdminSendInboxMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSendInboxMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendInboxMessageBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send][%d] adminSendInboxMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSendInboxMessageBadRequest) ToJSONString() string {
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

func (o *AdminSendInboxMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendInboxMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSendInboxMessageUnauthorized creates a AdminSendInboxMessageUnauthorized with default headers values
func NewAdminSendInboxMessageUnauthorized() *AdminSendInboxMessageUnauthorized {
	return &AdminSendInboxMessageUnauthorized{}
}

/*AdminSendInboxMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSendInboxMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendInboxMessageUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send][%d] adminSendInboxMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSendInboxMessageUnauthorized) ToJSONString() string {
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

func (o *AdminSendInboxMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendInboxMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSendInboxMessageForbidden creates a AdminSendInboxMessageForbidden with default headers values
func NewAdminSendInboxMessageForbidden() *AdminSendInboxMessageForbidden {
	return &AdminSendInboxMessageForbidden{}
}

/*AdminSendInboxMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminSendInboxMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendInboxMessageForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send][%d] adminSendInboxMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSendInboxMessageForbidden) ToJSONString() string {
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

func (o *AdminSendInboxMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendInboxMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSendInboxMessageInternalServerError creates a AdminSendInboxMessageInternalServerError with default headers values
func NewAdminSendInboxMessageInternalServerError() *AdminSendInboxMessageInternalServerError {
	return &AdminSendInboxMessageInternalServerError{}
}

/*AdminSendInboxMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSendInboxMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendInboxMessageInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send][%d] adminSendInboxMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSendInboxMessageInternalServerError) ToJSONString() string {
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

func (o *AdminSendInboxMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendInboxMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
