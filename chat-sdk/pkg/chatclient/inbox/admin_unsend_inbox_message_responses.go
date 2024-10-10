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

// AdminUnsendInboxMessageReader is a Reader for the AdminUnsendInboxMessage structure.
type AdminUnsendInboxMessageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUnsendInboxMessageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUnsendInboxMessageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUnsendInboxMessageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUnsendInboxMessageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUnsendInboxMessageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUnsendInboxMessageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUnsendInboxMessageOK creates a AdminUnsendInboxMessageOK with default headers values
func NewAdminUnsendInboxMessageOK() *AdminUnsendInboxMessageOK {
	return &AdminUnsendInboxMessageOK{}
}

/*AdminUnsendInboxMessageOK handles this case with default header values.

  OK
*/
type AdminUnsendInboxMessageOK struct {
	Payload *chatclientmodels.ModelsUnsendInboxMessageResponse
}

func (o *AdminUnsendInboxMessageOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend][%d] adminUnsendInboxMessageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUnsendInboxMessageOK) ToJSONString() string {
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

func (o *AdminUnsendInboxMessageOK) GetPayload() *chatclientmodels.ModelsUnsendInboxMessageResponse {
	return o.Payload
}

func (o *AdminUnsendInboxMessageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsUnsendInboxMessageResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUnsendInboxMessageBadRequest creates a AdminUnsendInboxMessageBadRequest with default headers values
func NewAdminUnsendInboxMessageBadRequest() *AdminUnsendInboxMessageBadRequest {
	return &AdminUnsendInboxMessageBadRequest{}
}

/*AdminUnsendInboxMessageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUnsendInboxMessageBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnsendInboxMessageBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend][%d] adminUnsendInboxMessageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUnsendInboxMessageBadRequest) ToJSONString() string {
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

func (o *AdminUnsendInboxMessageBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnsendInboxMessageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnsendInboxMessageUnauthorized creates a AdminUnsendInboxMessageUnauthorized with default headers values
func NewAdminUnsendInboxMessageUnauthorized() *AdminUnsendInboxMessageUnauthorized {
	return &AdminUnsendInboxMessageUnauthorized{}
}

/*AdminUnsendInboxMessageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUnsendInboxMessageUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnsendInboxMessageUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend][%d] adminUnsendInboxMessageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUnsendInboxMessageUnauthorized) ToJSONString() string {
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

func (o *AdminUnsendInboxMessageUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnsendInboxMessageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnsendInboxMessageForbidden creates a AdminUnsendInboxMessageForbidden with default headers values
func NewAdminUnsendInboxMessageForbidden() *AdminUnsendInboxMessageForbidden {
	return &AdminUnsendInboxMessageForbidden{}
}

/*AdminUnsendInboxMessageForbidden handles this case with default header values.

  Forbidden
*/
type AdminUnsendInboxMessageForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnsendInboxMessageForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend][%d] adminUnsendInboxMessageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUnsendInboxMessageForbidden) ToJSONString() string {
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

func (o *AdminUnsendInboxMessageForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnsendInboxMessageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnsendInboxMessageInternalServerError creates a AdminUnsendInboxMessageInternalServerError with default headers values
func NewAdminUnsendInboxMessageInternalServerError() *AdminUnsendInboxMessageInternalServerError {
	return &AdminUnsendInboxMessageInternalServerError{}
}

/*AdminUnsendInboxMessageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUnsendInboxMessageInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminUnsendInboxMessageInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend][%d] adminUnsendInboxMessageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUnsendInboxMessageInternalServerError) ToJSONString() string {
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

func (o *AdminUnsendInboxMessageInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUnsendInboxMessageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
