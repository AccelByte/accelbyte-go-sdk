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

// AdminProfanityImportReader is a Reader for the AdminProfanityImport structure.
type AdminProfanityImportReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminProfanityImportReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminProfanityImportOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewAdminProfanityImportNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminProfanityImportBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminProfanityImportUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminProfanityImportForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminProfanityImportInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminProfanityImportOK creates a AdminProfanityImportOK with default headers values
func NewAdminProfanityImportOK() *AdminProfanityImportOK {
	return &AdminProfanityImportOK{}
}

/*AdminProfanityImportOK handles this case with default header values.

  returned when showResult=true
*/
type AdminProfanityImportOK struct {
	Payload *chatclientmodels.ModelsDictionaryImportResult
}

func (o *AdminProfanityImportOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportOK  %+v", 200, o.ToJSONString())
}

func (o *AdminProfanityImportOK) ToJSONString() string {
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

func (o *AdminProfanityImportOK) GetPayload() *chatclientmodels.ModelsDictionaryImportResult {
	return o.Payload
}

func (o *AdminProfanityImportOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsDictionaryImportResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminProfanityImportNoContent creates a AdminProfanityImportNoContent with default headers values
func NewAdminProfanityImportNoContent() *AdminProfanityImportNoContent {
	return &AdminProfanityImportNoContent{}
}

/*AdminProfanityImportNoContent handles this case with default header values.

  No Content returned when showResult=false or not defined
*/
type AdminProfanityImportNoContent struct {
}

func (o *AdminProfanityImportNoContent) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportNoContent ", 204)
}

func (o *AdminProfanityImportNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminProfanityImportBadRequest creates a AdminProfanityImportBadRequest with default headers values
func NewAdminProfanityImportBadRequest() *AdminProfanityImportBadRequest {
	return &AdminProfanityImportBadRequest{}
}

/*AdminProfanityImportBadRequest handles this case with default header values.

  Bad Request
*/
type AdminProfanityImportBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityImportBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminProfanityImportBadRequest) ToJSONString() string {
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

func (o *AdminProfanityImportBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityImportBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityImportUnauthorized creates a AdminProfanityImportUnauthorized with default headers values
func NewAdminProfanityImportUnauthorized() *AdminProfanityImportUnauthorized {
	return &AdminProfanityImportUnauthorized{}
}

/*AdminProfanityImportUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminProfanityImportUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityImportUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminProfanityImportUnauthorized) ToJSONString() string {
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

func (o *AdminProfanityImportUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityImportUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityImportForbidden creates a AdminProfanityImportForbidden with default headers values
func NewAdminProfanityImportForbidden() *AdminProfanityImportForbidden {
	return &AdminProfanityImportForbidden{}
}

/*AdminProfanityImportForbidden handles this case with default header values.

  Forbidden
*/
type AdminProfanityImportForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityImportForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminProfanityImportForbidden) ToJSONString() string {
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

func (o *AdminProfanityImportForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityImportForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminProfanityImportInternalServerError creates a AdminProfanityImportInternalServerError with default headers values
func NewAdminProfanityImportInternalServerError() *AdminProfanityImportInternalServerError {
	return &AdminProfanityImportInternalServerError{}
}

/*AdminProfanityImportInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminProfanityImportInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminProfanityImportInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import][%d] adminProfanityImportInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminProfanityImportInternalServerError) ToJSONString() string {
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

func (o *AdminProfanityImportInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminProfanityImportInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
