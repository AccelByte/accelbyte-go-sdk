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

// AdminProfanityCreateReader is a Reader for the AdminProfanityCreate structure.
type AdminProfanityCreateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityCreateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityCreateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityCreateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityCreateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityCreateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminProfanityCreateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityCreateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityCreateOK creates a AdminProfanityCreateOK with default headers values
func NewAdminProfanityCreateOK() *AdminProfanityCreateOK {
	return &AdminProfanityCreateOK{}
}

/*AdminProfanityCreateOK handles this case with default header values.

  OK
*/
type AdminProfanityCreateOK struct {
	Payload *chatclientmodels.ModelsDictionary
}

func (o *AdminProfanityCreateOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityCreateOK) ToJSONString() string {
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

func (o *AdminProfanityCreateOK) GetPayload() *chatclientmodels.ModelsDictionary {
	return o.Payload
}

func (o *AdminProfanityCreateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityCreateBadRequest creates a AdminProfanityCreateBadRequest with default headers values
func NewAdminProfanityCreateBadRequest() *AdminProfanityCreateBadRequest {
	return &AdminProfanityCreateBadRequest{}
}

/*AdminProfanityCreateBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityCreateBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityCreateBadRequest) ToJSONString() string {
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

func (o *AdminProfanityCreateBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityCreateUnauthorized creates a AdminProfanityCreateUnauthorized with default headers values
func NewAdminProfanityCreateUnauthorized() *AdminProfanityCreateUnauthorized {
	return &AdminProfanityCreateUnauthorized{}
}

/*AdminProfanityCreateUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityCreateUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityCreateUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityCreateUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityCreateForbidden creates a AdminProfanityCreateForbidden with default headers values
func NewAdminProfanityCreateForbidden() *AdminProfanityCreateForbidden {
	return &AdminProfanityCreateForbidden{}
}

/*AdminProfanityCreateForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityCreateForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityCreateForbidden) ToJSONString() string {
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

func (o *AdminProfanityCreateForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityCreateNotFound creates a AdminProfanityCreateNotFound with default headers values
func NewAdminProfanityCreateNotFound() *AdminProfanityCreateNotFound {
	return &AdminProfanityCreateNotFound{}
}

/*AdminProfanityCreateNotFound handles this case with default header values.

  Not Found
*/
type AdminProfanityCreateNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateNotFound) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminProfanityCreateNotFound) ToJSONString() string {
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

func (o *AdminProfanityCreateNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityCreateInternalServerError creates a AdminProfanityCreateInternalServerError with default headers values
func NewAdminProfanityCreateInternalServerError() *AdminProfanityCreateInternalServerError {
	return &AdminProfanityCreateInternalServerError{}
}

/*AdminProfanityCreateInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityCreateInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityCreateInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityCreateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityCreateInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityCreateInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityCreateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
