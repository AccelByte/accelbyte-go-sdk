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

// AdminDeleteInboxMessageReader is a Reader for the AdminDeleteInboxMessage structure.
type AdminDeleteInboxMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteInboxMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteInboxMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteInboxMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteInboxMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteInboxMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteInboxMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteInboxMessageOK creates a AdminDeleteInboxMessageOK with default headers values
func NewAdminDeleteInboxMessageOK() *AdminDeleteInboxMessageOK {
	return &AdminDeleteInboxMessageOK{}
}

/*AdminDeleteInboxMessageOK handles this case with default header values.

  OK
*/
type AdminDeleteInboxMessageOK struct {
}

func (o *AdminDeleteInboxMessageOK) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}][%d] adminDeleteInboxMessageOK ", 200)
}

func (o *AdminDeleteInboxMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteInboxMessageBadRequest creates a AdminDeleteInboxMessageBadRequest with default headers values
func NewAdminDeleteInboxMessageBadRequest() *AdminDeleteInboxMessageBadRequest {
	return &AdminDeleteInboxMessageBadRequest{}
}

/*AdminDeleteInboxMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteInboxMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxMessageBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}][%d] adminDeleteInboxMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteInboxMessageBadRequest) ToJSONString() string {
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

func (o *AdminDeleteInboxMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxMessageUnauthorized creates a AdminDeleteInboxMessageUnauthorized with default headers values
func NewAdminDeleteInboxMessageUnauthorized() *AdminDeleteInboxMessageUnauthorized {
	return &AdminDeleteInboxMessageUnauthorized{}
}

/*AdminDeleteInboxMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteInboxMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxMessageUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}][%d] adminDeleteInboxMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteInboxMessageUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteInboxMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxMessageForbidden creates a AdminDeleteInboxMessageForbidden with default headers values
func NewAdminDeleteInboxMessageForbidden() *AdminDeleteInboxMessageForbidden {
	return &AdminDeleteInboxMessageForbidden{}
}

/*AdminDeleteInboxMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteInboxMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxMessageForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}][%d] adminDeleteInboxMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteInboxMessageForbidden) ToJSONString() string {
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

func (o *AdminDeleteInboxMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteInboxMessageInternalServerError creates a AdminDeleteInboxMessageInternalServerError with default headers values
func NewAdminDeleteInboxMessageInternalServerError() *AdminDeleteInboxMessageInternalServerError {
	return &AdminDeleteInboxMessageInternalServerError{}
}

/*AdminDeleteInboxMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteInboxMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteInboxMessageInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}][%d] adminDeleteInboxMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteInboxMessageInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteInboxMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteInboxMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
