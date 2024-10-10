// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// AdminProfanityDeleteReader is a Reader for the AdminProfanityDelete structure.
type AdminProfanityDeleteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityDeleteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminProfanityDeleteNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityDeleteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityDeleteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityDeleteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminProfanityDeleteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityDeleteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityDeleteNoContent creates a AdminProfanityDeleteNoContent with default headers values
func NewAdminProfanityDeleteNoContent() *AdminProfanityDeleteNoContent {
	return &AdminProfanityDeleteNoContent{}
}

/*AdminProfanityDeleteNoContent handles this case with default header values.

  No Content
*/
type AdminProfanityDeleteNoContent struct {
}

func (o *AdminProfanityDeleteNoContent) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteNoContent ", 204)
}

func (o *AdminProfanityDeleteNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminProfanityDeleteBadRequest creates a AdminProfanityDeleteBadRequest with default headers values
func NewAdminProfanityDeleteBadRequest() *AdminProfanityDeleteBadRequest {
	return &AdminProfanityDeleteBadRequest{}
}

/*AdminProfanityDeleteBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityDeleteBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityDeleteBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityDeleteBadRequest) ToJSONString() string {
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

func (o *AdminProfanityDeleteBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityDeleteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityDeleteUnauthorized creates a AdminProfanityDeleteUnauthorized with default headers values
func NewAdminProfanityDeleteUnauthorized() *AdminProfanityDeleteUnauthorized {
	return &AdminProfanityDeleteUnauthorized{}
}

/*AdminProfanityDeleteUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityDeleteUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityDeleteUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityDeleteUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityDeleteUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityDeleteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityDeleteForbidden creates a AdminProfanityDeleteForbidden with default headers values
func NewAdminProfanityDeleteForbidden() *AdminProfanityDeleteForbidden {
	return &AdminProfanityDeleteForbidden{}
}

/*AdminProfanityDeleteForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityDeleteForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityDeleteForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityDeleteForbidden) ToJSONString() string {
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

func (o *AdminProfanityDeleteForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityDeleteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityDeleteNotFound creates a AdminProfanityDeleteNotFound with default headers values
func NewAdminProfanityDeleteNotFound() *AdminProfanityDeleteNotFound {
	return &AdminProfanityDeleteNotFound{}
}

/*AdminProfanityDeleteNotFound handles this case with default header values.

  Not Found
*/
type AdminProfanityDeleteNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityDeleteNotFound) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminProfanityDeleteNotFound) ToJSONString() string {
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

func (o *AdminProfanityDeleteNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityDeleteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityDeleteInternalServerError creates a AdminProfanityDeleteInternalServerError with default headers values
func NewAdminProfanityDeleteInternalServerError() *AdminProfanityDeleteInternalServerError {
	return &AdminProfanityDeleteInternalServerError{}
}

/*AdminProfanityDeleteInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityDeleteInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityDeleteInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityDeleteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityDeleteInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityDeleteInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityDeleteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
