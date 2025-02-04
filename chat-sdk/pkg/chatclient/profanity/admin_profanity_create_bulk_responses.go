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

// AdminProfanityCreateBulkReader is a Reader for the AdminProfanityCreateBulk structure.
type AdminProfanityCreateBulkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityCreateBulkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminProfanityCreateBulkNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityCreateBulkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityCreateBulkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityCreateBulkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminProfanityCreateBulkNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityCreateBulkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityCreateBulkNoContent creates a AdminProfanityCreateBulkNoContent with default headers values
func NewAdminProfanityCreateBulkNoContent() *AdminProfanityCreateBulkNoContent {
	return &AdminProfanityCreateBulkNoContent{}
}

/*AdminProfanityCreateBulkNoContent handles this case with default header values.

  No Content
*/
type AdminProfanityCreateBulkNoContent struct {
}

func (o *AdminProfanityCreateBulkNoContent) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkNoContent ", 204)
}

func (o *AdminProfanityCreateBulkNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminProfanityCreateBulkBadRequest creates a AdminProfanityCreateBulkBadRequest with default headers values
func NewAdminProfanityCreateBulkBadRequest() *AdminProfanityCreateBulkBadRequest {
	return &AdminProfanityCreateBulkBadRequest{}
}

/*AdminProfanityCreateBulkBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityCreateBulkBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBulkBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityCreateBulkBadRequest) ToJSONString() string {
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

func (o *AdminProfanityCreateBulkBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBulkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityCreateBulkUnauthorized creates a AdminProfanityCreateBulkUnauthorized with default headers values
func NewAdminProfanityCreateBulkUnauthorized() *AdminProfanityCreateBulkUnauthorized {
	return &AdminProfanityCreateBulkUnauthorized{}
}

/*AdminProfanityCreateBulkUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityCreateBulkUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBulkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityCreateBulkUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityCreateBulkUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBulkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityCreateBulkForbidden creates a AdminProfanityCreateBulkForbidden with default headers values
func NewAdminProfanityCreateBulkForbidden() *AdminProfanityCreateBulkForbidden {
	return &AdminProfanityCreateBulkForbidden{}
}

/*AdminProfanityCreateBulkForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityCreateBulkForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBulkForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityCreateBulkForbidden) ToJSONString() string {
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

func (o *AdminProfanityCreateBulkForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBulkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityCreateBulkNotFound creates a AdminProfanityCreateBulkNotFound with default headers values
func NewAdminProfanityCreateBulkNotFound() *AdminProfanityCreateBulkNotFound {
	return &AdminProfanityCreateBulkNotFound{}
}

/*AdminProfanityCreateBulkNotFound handles this case with default header values.

  Not Found
*/
type AdminProfanityCreateBulkNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBulkNotFound) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminProfanityCreateBulkNotFound) ToJSONString() string {
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

func (o *AdminProfanityCreateBulkNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBulkNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityCreateBulkInternalServerError creates a AdminProfanityCreateBulkInternalServerError with default headers values
func NewAdminProfanityCreateBulkInternalServerError() *AdminProfanityCreateBulkInternalServerError {
	return &AdminProfanityCreateBulkInternalServerError{}
}

/*AdminProfanityCreateBulkInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityCreateBulkInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBulkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk][%d] adminProfanityCreateBulkInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityCreateBulkInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityCreateBulkInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBulkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
