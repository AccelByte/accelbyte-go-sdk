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

// AdminGetAllPlayerSessionAttributeReader is a Reader for the AdminGetAllPlayerSessionAttribute structure.
type AdminGetAllPlayerSessionAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllPlayerSessionAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllPlayerSessionAttributeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAllPlayerSessionAttributeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAllPlayerSessionAttributeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllPlayerSessionAttributeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllPlayerSessionAttributeOK creates a AdminGetAllPlayerSessionAttributeOK with default headers values
func NewAdminGetAllPlayerSessionAttributeOK() *AdminGetAllPlayerSessionAttributeOK {
	return &AdminGetAllPlayerSessionAttributeOK{}
}

/*AdminGetAllPlayerSessionAttributeOK handles this case with default header values.

  OK
*/
type AdminGetAllPlayerSessionAttributeOK struct {
	Payload *lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse
}

func (o *AdminGetAllPlayerSessionAttributeOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetAllPlayerSessionAttributeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllPlayerSessionAttributeOK) ToJSONString() string {
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

func (o *AdminGetAllPlayerSessionAttributeOK) GetPayload() *lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse {
	return o.Payload
}

func (o *AdminGetAllPlayerSessionAttributeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetAllPlayerSessionAttributeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllPlayerSessionAttributeUnauthorized creates a AdminGetAllPlayerSessionAttributeUnauthorized with default headers values
func NewAdminGetAllPlayerSessionAttributeUnauthorized() *AdminGetAllPlayerSessionAttributeUnauthorized {
	return &AdminGetAllPlayerSessionAttributeUnauthorized{}
}

/*AdminGetAllPlayerSessionAttributeUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetAllPlayerSessionAttributeUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllPlayerSessionAttributeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetAllPlayerSessionAttributeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAllPlayerSessionAttributeUnauthorized) ToJSONString() string {
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

func (o *AdminGetAllPlayerSessionAttributeUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllPlayerSessionAttributeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllPlayerSessionAttributeForbidden creates a AdminGetAllPlayerSessionAttributeForbidden with default headers values
func NewAdminGetAllPlayerSessionAttributeForbidden() *AdminGetAllPlayerSessionAttributeForbidden {
	return &AdminGetAllPlayerSessionAttributeForbidden{}
}

/*AdminGetAllPlayerSessionAttributeForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetAllPlayerSessionAttributeForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllPlayerSessionAttributeForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetAllPlayerSessionAttributeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAllPlayerSessionAttributeForbidden) ToJSONString() string {
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

func (o *AdminGetAllPlayerSessionAttributeForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllPlayerSessionAttributeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllPlayerSessionAttributeInternalServerError creates a AdminGetAllPlayerSessionAttributeInternalServerError with default headers values
func NewAdminGetAllPlayerSessionAttributeInternalServerError() *AdminGetAllPlayerSessionAttributeInternalServerError {
	return &AdminGetAllPlayerSessionAttributeInternalServerError{}
}

/*AdminGetAllPlayerSessionAttributeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetAllPlayerSessionAttributeInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllPlayerSessionAttributeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetAllPlayerSessionAttributeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllPlayerSessionAttributeInternalServerError) ToJSONString() string {
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

func (o *AdminGetAllPlayerSessionAttributeInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllPlayerSessionAttributeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
