// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminSetPlayerSessionAttributeReader is a Reader for the AdminSetPlayerSessionAttribute structure.
type AdminSetPlayerSessionAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSetPlayerSessionAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSetPlayerSessionAttributeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSetPlayerSessionAttributeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSetPlayerSessionAttributeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSetPlayerSessionAttributeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSetPlayerSessionAttributeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSetPlayerSessionAttributeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSetPlayerSessionAttributeNoContent creates a AdminSetPlayerSessionAttributeNoContent with default headers values
func NewAdminSetPlayerSessionAttributeNoContent() *AdminSetPlayerSessionAttributeNoContent {
	return &AdminSetPlayerSessionAttributeNoContent{}
}

/*AdminSetPlayerSessionAttributeNoContent handles this case with default header values.

  No Content
*/
type AdminSetPlayerSessionAttributeNoContent struct {
}

func (o *AdminSetPlayerSessionAttributeNoContent) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeNoContent ", 204)
}

func (o *AdminSetPlayerSessionAttributeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSetPlayerSessionAttributeBadRequest creates a AdminSetPlayerSessionAttributeBadRequest with default headers values
func NewAdminSetPlayerSessionAttributeBadRequest() *AdminSetPlayerSessionAttributeBadRequest {
	return &AdminSetPlayerSessionAttributeBadRequest{}
}

/*AdminSetPlayerSessionAttributeBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSetPlayerSessionAttributeBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetPlayerSessionAttributeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSetPlayerSessionAttributeBadRequest) ToJSONString() string {
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

func (o *AdminSetPlayerSessionAttributeBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetPlayerSessionAttributeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSetPlayerSessionAttributeUnauthorized creates a AdminSetPlayerSessionAttributeUnauthorized with default headers values
func NewAdminSetPlayerSessionAttributeUnauthorized() *AdminSetPlayerSessionAttributeUnauthorized {
	return &AdminSetPlayerSessionAttributeUnauthorized{}
}

/*AdminSetPlayerSessionAttributeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSetPlayerSessionAttributeUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetPlayerSessionAttributeUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSetPlayerSessionAttributeUnauthorized) ToJSONString() string {
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

func (o *AdminSetPlayerSessionAttributeUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetPlayerSessionAttributeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSetPlayerSessionAttributeForbidden creates a AdminSetPlayerSessionAttributeForbidden with default headers values
func NewAdminSetPlayerSessionAttributeForbidden() *AdminSetPlayerSessionAttributeForbidden {
	return &AdminSetPlayerSessionAttributeForbidden{}
}

/*AdminSetPlayerSessionAttributeForbidden handles this case with default header values.

  Forbidden
*/
type AdminSetPlayerSessionAttributeForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetPlayerSessionAttributeForbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSetPlayerSessionAttributeForbidden) ToJSONString() string {
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

func (o *AdminSetPlayerSessionAttributeForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetPlayerSessionAttributeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSetPlayerSessionAttributeNotFound creates a AdminSetPlayerSessionAttributeNotFound with default headers values
func NewAdminSetPlayerSessionAttributeNotFound() *AdminSetPlayerSessionAttributeNotFound {
	return &AdminSetPlayerSessionAttributeNotFound{}
}

/*AdminSetPlayerSessionAttributeNotFound handles this case with default header values.

  Not Found
*/
type AdminSetPlayerSessionAttributeNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetPlayerSessionAttributeNotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSetPlayerSessionAttributeNotFound) ToJSONString() string {
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

func (o *AdminSetPlayerSessionAttributeNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetPlayerSessionAttributeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSetPlayerSessionAttributeInternalServerError creates a AdminSetPlayerSessionAttributeInternalServerError with default headers values
func NewAdminSetPlayerSessionAttributeInternalServerError() *AdminSetPlayerSessionAttributeInternalServerError {
	return &AdminSetPlayerSessionAttributeInternalServerError{}
}

/*AdminSetPlayerSessionAttributeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSetPlayerSessionAttributeInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetPlayerSessionAttributeInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminSetPlayerSessionAttributeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSetPlayerSessionAttributeInternalServerError) ToJSONString() string {
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

func (o *AdminSetPlayerSessionAttributeInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetPlayerSessionAttributeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
