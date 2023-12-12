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

// AdminUpdateInboxMessageReader is a Reader for the AdminUpdateInboxMessage structure.
type AdminUpdateInboxMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateInboxMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateInboxMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateInboxMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateInboxMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateInboxMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateInboxMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateInboxMessageOK creates a AdminUpdateInboxMessageOK with default headers values
func NewAdminUpdateInboxMessageOK() *AdminUpdateInboxMessageOK {
	return &AdminUpdateInboxMessageOK{}
}

/*AdminUpdateInboxMessageOK handles this case with default header values.

  OK
*/
type AdminUpdateInboxMessageOK struct {
}

func (o *AdminUpdateInboxMessageOK) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}][%d] adminUpdateInboxMessageOK ", 200)
}

func (o *AdminUpdateInboxMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateInboxMessageBadRequest creates a AdminUpdateInboxMessageBadRequest with default headers values
func NewAdminUpdateInboxMessageBadRequest() *AdminUpdateInboxMessageBadRequest {
	return &AdminUpdateInboxMessageBadRequest{}
}

/*AdminUpdateInboxMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateInboxMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxMessageBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}][%d] adminUpdateInboxMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateInboxMessageBadRequest) ToJSONString() string {
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

func (o *AdminUpdateInboxMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateInboxMessageUnauthorized creates a AdminUpdateInboxMessageUnauthorized with default headers values
func NewAdminUpdateInboxMessageUnauthorized() *AdminUpdateInboxMessageUnauthorized {
	return &AdminUpdateInboxMessageUnauthorized{}
}

/*AdminUpdateInboxMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateInboxMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxMessageUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}][%d] adminUpdateInboxMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateInboxMessageUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateInboxMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateInboxMessageForbidden creates a AdminUpdateInboxMessageForbidden with default headers values
func NewAdminUpdateInboxMessageForbidden() *AdminUpdateInboxMessageForbidden {
	return &AdminUpdateInboxMessageForbidden{}
}

/*AdminUpdateInboxMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateInboxMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxMessageForbidden) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}][%d] adminUpdateInboxMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateInboxMessageForbidden) ToJSONString() string {
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

func (o *AdminUpdateInboxMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateInboxMessageInternalServerError creates a AdminUpdateInboxMessageInternalServerError with default headers values
func NewAdminUpdateInboxMessageInternalServerError() *AdminUpdateInboxMessageInternalServerError {
	return &AdminUpdateInboxMessageInternalServerError{}
}

/*AdminUpdateInboxMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateInboxMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateInboxMessageInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}][%d] adminUpdateInboxMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateInboxMessageInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateInboxMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateInboxMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
