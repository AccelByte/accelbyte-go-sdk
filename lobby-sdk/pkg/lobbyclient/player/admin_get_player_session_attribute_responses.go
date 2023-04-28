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

// AdminGetPlayerSessionAttributeReader is a Reader for the AdminGetPlayerSessionAttribute structure.
type AdminGetPlayerSessionAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerSessionAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerSessionAttributeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlayerSessionAttributeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerSessionAttributeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerSessionAttributeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerSessionAttributeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerSessionAttributeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerSessionAttributeOK creates a AdminGetPlayerSessionAttributeOK with default headers values
func NewAdminGetPlayerSessionAttributeOK() *AdminGetPlayerSessionAttributeOK {
	return &AdminGetPlayerSessionAttributeOK{}
}

/*AdminGetPlayerSessionAttributeOK handles this case with default header values.

  OK
*/
type AdminGetPlayerSessionAttributeOK struct {
	Payload *lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse
}

func (o *AdminGetPlayerSessionAttributeOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeOK) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeOK) GetPayload() *lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetPlayerSessionAttributeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerSessionAttributeBadRequest creates a AdminGetPlayerSessionAttributeBadRequest with default headers values
func NewAdminGetPlayerSessionAttributeBadRequest() *AdminGetPlayerSessionAttributeBadRequest {
	return &AdminGetPlayerSessionAttributeBadRequest{}
}

/*AdminGetPlayerSessionAttributeBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlayerSessionAttributeBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerSessionAttributeBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeBadRequest) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerSessionAttributeUnauthorized creates a AdminGetPlayerSessionAttributeUnauthorized with default headers values
func NewAdminGetPlayerSessionAttributeUnauthorized() *AdminGetPlayerSessionAttributeUnauthorized {
	return &AdminGetPlayerSessionAttributeUnauthorized{}
}

/*AdminGetPlayerSessionAttributeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlayerSessionAttributeUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerSessionAttributeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerSessionAttributeForbidden creates a AdminGetPlayerSessionAttributeForbidden with default headers values
func NewAdminGetPlayerSessionAttributeForbidden() *AdminGetPlayerSessionAttributeForbidden {
	return &AdminGetPlayerSessionAttributeForbidden{}
}

/*AdminGetPlayerSessionAttributeForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlayerSessionAttributeForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerSessionAttributeForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeForbidden) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerSessionAttributeNotFound creates a AdminGetPlayerSessionAttributeNotFound with default headers values
func NewAdminGetPlayerSessionAttributeNotFound() *AdminGetPlayerSessionAttributeNotFound {
	return &AdminGetPlayerSessionAttributeNotFound{}
}

/*AdminGetPlayerSessionAttributeNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlayerSessionAttributeNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerSessionAttributeNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeNotFound) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerSessionAttributeInternalServerError creates a AdminGetPlayerSessionAttributeInternalServerError with default headers values
func NewAdminGetPlayerSessionAttributeInternalServerError() *AdminGetPlayerSessionAttributeInternalServerError {
	return &AdminGetPlayerSessionAttributeInternalServerError{}
}

/*AdminGetPlayerSessionAttributeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlayerSessionAttributeInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerSessionAttributeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}][%d] adminGetPlayerSessionAttributeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerSessionAttributeInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerSessionAttributeInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerSessionAttributeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
