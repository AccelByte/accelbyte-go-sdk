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

// AdminProfanityExportReader is a Reader for the AdminProfanityExport structure.
type AdminProfanityExportReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityExportReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityExportOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityExportBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityExportUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityExportForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityExportInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityExportOK creates a AdminProfanityExportOK with default headers values
func NewAdminProfanityExportOK() *AdminProfanityExportOK {
	return &AdminProfanityExportOK{}
}

/*AdminProfanityExportOK handles this case with default header values.

  OK
*/
type AdminProfanityExportOK struct {
	Payload *chatclientmodels.ModelsDictionaryExport
}

func (o *AdminProfanityExportOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export][%d] adminProfanityExportOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityExportOK) ToJSONString() string {
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

func (o *AdminProfanityExportOK) GetPayload() *chatclientmodels.ModelsDictionaryExport {
	return o.Payload
}

func (o *AdminProfanityExportOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsDictionaryExport)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminProfanityExportBadRequest creates a AdminProfanityExportBadRequest with default headers values
func NewAdminProfanityExportBadRequest() *AdminProfanityExportBadRequest {
	return &AdminProfanityExportBadRequest{}
}

/*AdminProfanityExportBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityExportBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityExportBadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export][%d] adminProfanityExportBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityExportBadRequest) ToJSONString() string {
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

func (o *AdminProfanityExportBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityExportBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityExportUnauthorized creates a AdminProfanityExportUnauthorized with default headers values
func NewAdminProfanityExportUnauthorized() *AdminProfanityExportUnauthorized {
	return &AdminProfanityExportUnauthorized{}
}

/*AdminProfanityExportUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityExportUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityExportUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export][%d] adminProfanityExportUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityExportUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityExportUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityExportUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityExportForbidden creates a AdminProfanityExportForbidden with default headers values
func NewAdminProfanityExportForbidden() *AdminProfanityExportForbidden {
	return &AdminProfanityExportForbidden{}
}

/*AdminProfanityExportForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityExportForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityExportForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export][%d] adminProfanityExportForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityExportForbidden) ToJSONString() string {
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

func (o *AdminProfanityExportForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityExportForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityExportInternalServerError creates a AdminProfanityExportInternalServerError with default headers values
func NewAdminProfanityExportInternalServerError() *AdminProfanityExportInternalServerError {
	return &AdminProfanityExportInternalServerError{}
}

/*AdminProfanityExportInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityExportInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityExportInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export][%d] adminProfanityExportInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityExportInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityExportInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityExportInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
