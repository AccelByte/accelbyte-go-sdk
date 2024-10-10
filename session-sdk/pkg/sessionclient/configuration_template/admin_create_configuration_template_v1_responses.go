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

// AdminCreateConfigurationTemplateV1Reader is a Reader for the AdminCreateConfigurationTemplateV1 structure.
type AdminCreateConfigurationTemplateV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateConfigurationTemplateV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateConfigurationTemplateV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateConfigurationTemplateV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateConfigurationTemplateV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateConfigurationTemplateV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateConfigurationTemplateV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateConfigurationTemplateV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/admin/namespaces/{namespace}/configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateConfigurationTemplateV1Created creates a AdminCreateConfigurationTemplateV1Created with default headers values
func NewAdminCreateConfigurationTemplateV1Created() *AdminCreateConfigurationTemplateV1Created {
	return &AdminCreateConfigurationTemplateV1Created{}
}

/*AdminCreateConfigurationTemplateV1Created handles this case with default header values.

  Created
*/
type AdminCreateConfigurationTemplateV1Created struct {
	Payload *sessionclientmodels.ApimodelsConfigurationTemplateResponse
}

func (o *AdminCreateConfigurationTemplateV1Created) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1Created) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1Created) GetPayload() *sessionclientmodels.ApimodelsConfigurationTemplateResponse {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateConfigurationTemplateV1BadRequest creates a AdminCreateConfigurationTemplateV1BadRequest with default headers values
func NewAdminCreateConfigurationTemplateV1BadRequest() *AdminCreateConfigurationTemplateV1BadRequest {
	return &AdminCreateConfigurationTemplateV1BadRequest{}
}

/*AdminCreateConfigurationTemplateV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateConfigurationTemplateV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationTemplateV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1BadRequest) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateConfigurationTemplateV1Unauthorized creates a AdminCreateConfigurationTemplateV1Unauthorized with default headers values
func NewAdminCreateConfigurationTemplateV1Unauthorized() *AdminCreateConfigurationTemplateV1Unauthorized {
	return &AdminCreateConfigurationTemplateV1Unauthorized{}
}

/*AdminCreateConfigurationTemplateV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateConfigurationTemplateV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationTemplateV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1Unauthorized) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateConfigurationTemplateV1Forbidden creates a AdminCreateConfigurationTemplateV1Forbidden with default headers values
func NewAdminCreateConfigurationTemplateV1Forbidden() *AdminCreateConfigurationTemplateV1Forbidden {
	return &AdminCreateConfigurationTemplateV1Forbidden{}
}

/*AdminCreateConfigurationTemplateV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminCreateConfigurationTemplateV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationTemplateV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1Forbidden) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateConfigurationTemplateV1Conflict creates a AdminCreateConfigurationTemplateV1Conflict with default headers values
func NewAdminCreateConfigurationTemplateV1Conflict() *AdminCreateConfigurationTemplateV1Conflict {
	return &AdminCreateConfigurationTemplateV1Conflict{}
}

/*AdminCreateConfigurationTemplateV1Conflict handles this case with default header values.

  Conflict
*/
type AdminCreateConfigurationTemplateV1Conflict struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationTemplateV1Conflict) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1Conflict) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1Conflict) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateConfigurationTemplateV1InternalServerError creates a AdminCreateConfigurationTemplateV1InternalServerError with default headers values
func NewAdminCreateConfigurationTemplateV1InternalServerError() *AdminCreateConfigurationTemplateV1InternalServerError {
	return &AdminCreateConfigurationTemplateV1InternalServerError{}
}

/*AdminCreateConfigurationTemplateV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateConfigurationTemplateV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationTemplateV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/configuration][%d] adminCreateConfigurationTemplateV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateConfigurationTemplateV1InternalServerError) ToJSONString() string {
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

func (o *AdminCreateConfigurationTemplateV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationTemplateV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
