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

// AdminProfanityQueryReader is a Reader for the AdminProfanityQuery structure.
type AdminProfanityQueryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityQueryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityQueryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityQueryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityQueryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityQueryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminProfanityQueryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityQueryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityQueryOK creates a AdminProfanityQueryOK with default headers values
func NewAdminProfanityQueryOK() *AdminProfanityQueryOK {
	return &AdminProfanityQueryOK{}
}

/*AdminProfanityQueryOK handles this case with default header values.

  OK
*/
type AdminProfanityQueryOK struct {
	Payload *chatclientmodels.ModelsDictionaryQueryResult
}

func (o *AdminProfanityQueryOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityQueryOK) ToJSONString() string {
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

func (o *AdminProfanityQueryOK) GetPayload() *chatclientmodels.ModelsDictionaryQueryResult {
	return o.Payload
}

func (o *AdminProfanityQueryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsDictionaryQueryResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminProfanityQueryBadRequest creates a AdminProfanityQueryBadRequest with default headers values
func NewAdminProfanityQueryBadRequest() *AdminProfanityQueryBadRequest {
	return &AdminProfanityQueryBadRequest{}
}

/*AdminProfanityQueryBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityQueryBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityQueryBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityQueryBadRequest) ToJSONString() string {
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

func (o *AdminProfanityQueryBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityQueryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityQueryUnauthorized creates a AdminProfanityQueryUnauthorized with default headers values
func NewAdminProfanityQueryUnauthorized() *AdminProfanityQueryUnauthorized {
	return &AdminProfanityQueryUnauthorized{}
}

/*AdminProfanityQueryUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityQueryUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityQueryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityQueryUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityQueryUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityQueryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityQueryForbidden creates a AdminProfanityQueryForbidden with default headers values
func NewAdminProfanityQueryForbidden() *AdminProfanityQueryForbidden {
	return &AdminProfanityQueryForbidden{}
}

/*AdminProfanityQueryForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityQueryForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityQueryForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityQueryForbidden) ToJSONString() string {
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

func (o *AdminProfanityQueryForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityQueryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityQueryNotFound creates a AdminProfanityQueryNotFound with default headers values
func NewAdminProfanityQueryNotFound() *AdminProfanityQueryNotFound {
	return &AdminProfanityQueryNotFound{}
}

/*AdminProfanityQueryNotFound handles this case with default header values.

  Not Found
*/
type AdminProfanityQueryNotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityQueryNotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminProfanityQueryNotFound) ToJSONString() string {
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

func (o *AdminProfanityQueryNotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityQueryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminProfanityQueryInternalServerError creates a AdminProfanityQueryInternalServerError with default headers values
func NewAdminProfanityQueryInternalServerError() *AdminProfanityQueryInternalServerError {
	return &AdminProfanityQueryInternalServerError{}
}

/*AdminProfanityQueryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityQueryInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityQueryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary][%d] adminProfanityQueryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityQueryInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityQueryInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityQueryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
