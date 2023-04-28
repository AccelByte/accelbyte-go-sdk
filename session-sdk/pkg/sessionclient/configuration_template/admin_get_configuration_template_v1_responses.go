// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetConfigurationTemplateV1Reader is a Reader for the AdminGetConfigurationTemplateV1 structure.
type AdminGetConfigurationTemplateV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetConfigurationTemplateV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetConfigurationTemplateV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetConfigurationTemplateV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetConfigurationTemplateV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetConfigurationTemplateV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetConfigurationTemplateV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetConfigurationTemplateV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/configurations/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetConfigurationTemplateV1OK creates a AdminGetConfigurationTemplateV1OK with default headers values
func NewAdminGetConfigurationTemplateV1OK() *AdminGetConfigurationTemplateV1OK {
	return &AdminGetConfigurationTemplateV1OK{}
}

/*AdminGetConfigurationTemplateV1OK handles this case with default header values.

  Created
*/
type AdminGetConfigurationTemplateV1OK struct {
	Payload *sessionclientmodels.ApimodelsConfigurationTemplateResponse
}

func (o *AdminGetConfigurationTemplateV1OK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1OK) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1OK) GetPayload() *sessionclientmodels.ApimodelsConfigurationTemplateResponse {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsConfigurationTemplateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigurationTemplateV1BadRequest creates a AdminGetConfigurationTemplateV1BadRequest with default headers values
func NewAdminGetConfigurationTemplateV1BadRequest() *AdminGetConfigurationTemplateV1BadRequest {
	return &AdminGetConfigurationTemplateV1BadRequest{}
}

/*AdminGetConfigurationTemplateV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetConfigurationTemplateV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationTemplateV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1BadRequest) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigurationTemplateV1Unauthorized creates a AdminGetConfigurationTemplateV1Unauthorized with default headers values
func NewAdminGetConfigurationTemplateV1Unauthorized() *AdminGetConfigurationTemplateV1Unauthorized {
	return &AdminGetConfigurationTemplateV1Unauthorized{}
}

/*AdminGetConfigurationTemplateV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetConfigurationTemplateV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationTemplateV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigurationTemplateV1Forbidden creates a AdminGetConfigurationTemplateV1Forbidden with default headers values
func NewAdminGetConfigurationTemplateV1Forbidden() *AdminGetConfigurationTemplateV1Forbidden {
	return &AdminGetConfigurationTemplateV1Forbidden{}
}

/*AdminGetConfigurationTemplateV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetConfigurationTemplateV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationTemplateV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1Forbidden) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigurationTemplateV1NotFound creates a AdminGetConfigurationTemplateV1NotFound with default headers values
func NewAdminGetConfigurationTemplateV1NotFound() *AdminGetConfigurationTemplateV1NotFound {
	return &AdminGetConfigurationTemplateV1NotFound{}
}

/*AdminGetConfigurationTemplateV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetConfigurationTemplateV1NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationTemplateV1NotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1NotFound) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigurationTemplateV1InternalServerError creates a AdminGetConfigurationTemplateV1InternalServerError with default headers values
func NewAdminGetConfigurationTemplateV1InternalServerError() *AdminGetConfigurationTemplateV1InternalServerError {
	return &AdminGetConfigurationTemplateV1InternalServerError{}
}

/*AdminGetConfigurationTemplateV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetConfigurationTemplateV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationTemplateV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminGetConfigurationTemplateV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetConfigurationTemplateV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetConfigurationTemplateV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationTemplateV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
