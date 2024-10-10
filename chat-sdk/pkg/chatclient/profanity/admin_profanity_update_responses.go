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

// AdminProfanityUpdateReader is a Reader for the AdminProfanityUpdate structure.
type AdminProfanityUpdateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityUpdateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityUpdateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityUpdateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityUpdateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityUpdateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminProfanityUpdateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityUpdateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityUpdateOK creates a AdminProfanityUpdateOK with default headers values
func NewAdminProfanityUpdateOK() *AdminProfanityUpdateOK {
	return &AdminProfanityUpdateOK{}
}

/*AdminProfanityUpdateOK handles this case with default header values.

  OK
*/
type AdminProfanityUpdateOK struct {
	Payload *chatclientmodels.ModelsDictionary
}

func (o *AdminProfanityUpdateOK) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityUpdateOK) ToJSONString() string {
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

func (o *AdminProfanityUpdateOK) GetPayload() *chatclientmodels.ModelsDictionary {
	return o.Payload
}

func (o *AdminProfanityUpdateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsDictionary)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminProfanityUpdateBadRequest creates a AdminProfanityUpdateBadRequest with default headers values
func NewAdminProfanityUpdateBadRequest() *AdminProfanityUpdateBadRequest {
	return &AdminProfanityUpdateBadRequest{}
}

/*AdminProfanityUpdateBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityUpdateBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityUpdateBadRequest) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityUpdateBadRequest) ToJSONString() string {
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

func (o *AdminProfanityUpdateBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityUpdateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityUpdateUnauthorized creates a AdminProfanityUpdateUnauthorized with default headers values
func NewAdminProfanityUpdateUnauthorized() *AdminProfanityUpdateUnauthorized {
	return &AdminProfanityUpdateUnauthorized{}
}

/*AdminProfanityUpdateUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityUpdateUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityUpdateUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityUpdateUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityUpdateUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityUpdateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityUpdateForbidden creates a AdminProfanityUpdateForbidden with default headers values
func NewAdminProfanityUpdateForbidden() *AdminProfanityUpdateForbidden {
	return &AdminProfanityUpdateForbidden{}
}

/*AdminProfanityUpdateForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityUpdateForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityUpdateForbidden) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityUpdateForbidden) ToJSONString() string {
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

func (o *AdminProfanityUpdateForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityUpdateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityUpdateNotFound creates a AdminProfanityUpdateNotFound with default headers values
func NewAdminProfanityUpdateNotFound() *AdminProfanityUpdateNotFound {
	return &AdminProfanityUpdateNotFound{}
}

/*AdminProfanityUpdateNotFound handles this case with default header values.

  Not Found
*/
type AdminProfanityUpdateNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityUpdateNotFound) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminProfanityUpdateNotFound) ToJSONString() string {
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

func (o *AdminProfanityUpdateNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityUpdateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityUpdateInternalServerError creates a AdminProfanityUpdateInternalServerError with default headers values
func NewAdminProfanityUpdateInternalServerError() *AdminProfanityUpdateInternalServerError {
	return &AdminProfanityUpdateInternalServerError{}
}

/*AdminProfanityUpdateInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityUpdateInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityUpdateInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}][%d] adminProfanityUpdateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityUpdateInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityUpdateInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityUpdateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
