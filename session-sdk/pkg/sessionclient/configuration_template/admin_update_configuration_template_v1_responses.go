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

// AdminUpdateConfigurationTemplateV1Reader is a Reader for the AdminUpdateConfigurationTemplateV1 structure.
type AdminUpdateConfigurationTemplateV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateConfigurationTemplateV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateConfigurationTemplateV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateConfigurationTemplateV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateConfigurationTemplateV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateConfigurationTemplateV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateConfigurationTemplateV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateConfigurationTemplateV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/configurations/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateConfigurationTemplateV1OK creates a AdminUpdateConfigurationTemplateV1OK with default headers values
func NewAdminUpdateConfigurationTemplateV1OK() *AdminUpdateConfigurationTemplateV1OK {
	return &AdminUpdateConfigurationTemplateV1OK{}
}

/*AdminUpdateConfigurationTemplateV1OK handles this case with default header values.

  OK
*/
type AdminUpdateConfigurationTemplateV1OK struct {
	Payload *sessionclientmodels.ApimodelsConfigurationTemplateResponse
}

func (o *AdminUpdateConfigurationTemplateV1OK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1OK) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1OK) GetPayload() *sessionclientmodels.ApimodelsConfigurationTemplateResponse {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationTemplateV1BadRequest creates a AdminUpdateConfigurationTemplateV1BadRequest with default headers values
func NewAdminUpdateConfigurationTemplateV1BadRequest() *AdminUpdateConfigurationTemplateV1BadRequest {
	return &AdminUpdateConfigurationTemplateV1BadRequest{}
}

/*AdminUpdateConfigurationTemplateV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateConfigurationTemplateV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationTemplateV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1BadRequest) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationTemplateV1Unauthorized creates a AdminUpdateConfigurationTemplateV1Unauthorized with default headers values
func NewAdminUpdateConfigurationTemplateV1Unauthorized() *AdminUpdateConfigurationTemplateV1Unauthorized {
	return &AdminUpdateConfigurationTemplateV1Unauthorized{}
}

/*AdminUpdateConfigurationTemplateV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateConfigurationTemplateV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationTemplateV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationTemplateV1Forbidden creates a AdminUpdateConfigurationTemplateV1Forbidden with default headers values
func NewAdminUpdateConfigurationTemplateV1Forbidden() *AdminUpdateConfigurationTemplateV1Forbidden {
	return &AdminUpdateConfigurationTemplateV1Forbidden{}
}

/*AdminUpdateConfigurationTemplateV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateConfigurationTemplateV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationTemplateV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1Forbidden) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationTemplateV1NotFound creates a AdminUpdateConfigurationTemplateV1NotFound with default headers values
func NewAdminUpdateConfigurationTemplateV1NotFound() *AdminUpdateConfigurationTemplateV1NotFound {
	return &AdminUpdateConfigurationTemplateV1NotFound{}
}

/*AdminUpdateConfigurationTemplateV1NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateConfigurationTemplateV1NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationTemplateV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1NotFound) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationTemplateV1InternalServerError creates a AdminUpdateConfigurationTemplateV1InternalServerError with default headers values
func NewAdminUpdateConfigurationTemplateV1InternalServerError() *AdminUpdateConfigurationTemplateV1InternalServerError {
	return &AdminUpdateConfigurationTemplateV1InternalServerError{}
}

/*AdminUpdateConfigurationTemplateV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateConfigurationTemplateV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationTemplateV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminUpdateConfigurationTemplateV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateConfigurationTemplateV1InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateConfigurationTemplateV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationTemplateV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
