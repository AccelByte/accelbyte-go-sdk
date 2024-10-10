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

// AdminSaveInboxMessageReader is a Reader for the AdminSaveInboxMessage structure.
type AdminSaveInboxMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSaveInboxMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSaveInboxMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSaveInboxMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSaveInboxMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSaveInboxMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSaveInboxMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/inbox/namespaces/{namespace}/messages returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSaveInboxMessageOK creates a AdminSaveInboxMessageOK with default headers values
func NewAdminSaveInboxMessageOK() *AdminSaveInboxMessageOK {
	return &AdminSaveInboxMessageOK{}
}

/*AdminSaveInboxMessageOK handles this case with default header values.

  OK
*/
type AdminSaveInboxMessageOK struct {
	Payload *chatclientmodels.ModelsSaveInboxMessageResponse
}

func (o *AdminSaveInboxMessageOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminSaveInboxMessageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSaveInboxMessageOK) ToJSONString() string {
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

func (o *AdminSaveInboxMessageOK) GetPayload() *chatclientmodels.ModelsSaveInboxMessageResponse {
	return o.Payload
}

func (o *AdminSaveInboxMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsSaveInboxMessageResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSaveInboxMessageBadRequest creates a AdminSaveInboxMessageBadRequest with default headers values
func NewAdminSaveInboxMessageBadRequest() *AdminSaveInboxMessageBadRequest {
	return &AdminSaveInboxMessageBadRequest{}
}

/*AdminSaveInboxMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSaveInboxMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSaveInboxMessageBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminSaveInboxMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSaveInboxMessageBadRequest) ToJSONString() string {
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

func (o *AdminSaveInboxMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSaveInboxMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveInboxMessageUnauthorized creates a AdminSaveInboxMessageUnauthorized with default headers values
func NewAdminSaveInboxMessageUnauthorized() *AdminSaveInboxMessageUnauthorized {
	return &AdminSaveInboxMessageUnauthorized{}
}

/*AdminSaveInboxMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSaveInboxMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSaveInboxMessageUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminSaveInboxMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSaveInboxMessageUnauthorized) ToJSONString() string {
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

func (o *AdminSaveInboxMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSaveInboxMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveInboxMessageForbidden creates a AdminSaveInboxMessageForbidden with default headers values
func NewAdminSaveInboxMessageForbidden() *AdminSaveInboxMessageForbidden {
	return &AdminSaveInboxMessageForbidden{}
}

/*AdminSaveInboxMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminSaveInboxMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSaveInboxMessageForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminSaveInboxMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSaveInboxMessageForbidden) ToJSONString() string {
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

func (o *AdminSaveInboxMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSaveInboxMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveInboxMessageInternalServerError creates a AdminSaveInboxMessageInternalServerError with default headers values
func NewAdminSaveInboxMessageInternalServerError() *AdminSaveInboxMessageInternalServerError {
	return &AdminSaveInboxMessageInternalServerError{}
}

/*AdminSaveInboxMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSaveInboxMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSaveInboxMessageInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages][%d] adminSaveInboxMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSaveInboxMessageInternalServerError) ToJSONString() string {
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

func (o *AdminSaveInboxMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSaveInboxMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
