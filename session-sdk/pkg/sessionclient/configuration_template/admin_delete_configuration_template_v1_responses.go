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

// AdminDeleteConfigurationTemplateV1Reader is a Reader for the AdminDeleteConfigurationTemplateV1 structure.
type AdminDeleteConfigurationTemplateV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteConfigurationTemplateV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteConfigurationTemplateV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteConfigurationTemplateV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteConfigurationTemplateV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteConfigurationTemplateV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteConfigurationTemplateV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteConfigurationTemplateV1NoContent creates a AdminDeleteConfigurationTemplateV1NoContent with default headers values
func NewAdminDeleteConfigurationTemplateV1NoContent() *AdminDeleteConfigurationTemplateV1NoContent {
	return &AdminDeleteConfigurationTemplateV1NoContent{}
}

/*AdminDeleteConfigurationTemplateV1NoContent handles this case with default header values.

  No Content
*/
type AdminDeleteConfigurationTemplateV1NoContent struct {
}

func (o *AdminDeleteConfigurationTemplateV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminDeleteConfigurationTemplateV1NoContent ", 204)
}

func (o *AdminDeleteConfigurationTemplateV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteConfigurationTemplateV1BadRequest creates a AdminDeleteConfigurationTemplateV1BadRequest with default headers values
func NewAdminDeleteConfigurationTemplateV1BadRequest() *AdminDeleteConfigurationTemplateV1BadRequest {
	return &AdminDeleteConfigurationTemplateV1BadRequest{}
}

/*AdminDeleteConfigurationTemplateV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteConfigurationTemplateV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationTemplateV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminDeleteConfigurationTemplateV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteConfigurationTemplateV1BadRequest) ToJSONString() string {
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

func (o *AdminDeleteConfigurationTemplateV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationTemplateV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteConfigurationTemplateV1Unauthorized creates a AdminDeleteConfigurationTemplateV1Unauthorized with default headers values
func NewAdminDeleteConfigurationTemplateV1Unauthorized() *AdminDeleteConfigurationTemplateV1Unauthorized {
	return &AdminDeleteConfigurationTemplateV1Unauthorized{}
}

/*AdminDeleteConfigurationTemplateV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteConfigurationTemplateV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationTemplateV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminDeleteConfigurationTemplateV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteConfigurationTemplateV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteConfigurationTemplateV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationTemplateV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteConfigurationTemplateV1Forbidden creates a AdminDeleteConfigurationTemplateV1Forbidden with default headers values
func NewAdminDeleteConfigurationTemplateV1Forbidden() *AdminDeleteConfigurationTemplateV1Forbidden {
	return &AdminDeleteConfigurationTemplateV1Forbidden{}
}

/*AdminDeleteConfigurationTemplateV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteConfigurationTemplateV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationTemplateV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminDeleteConfigurationTemplateV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteConfigurationTemplateV1Forbidden) ToJSONString() string {
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

func (o *AdminDeleteConfigurationTemplateV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationTemplateV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteConfigurationTemplateV1InternalServerError creates a AdminDeleteConfigurationTemplateV1InternalServerError with default headers values
func NewAdminDeleteConfigurationTemplateV1InternalServerError() *AdminDeleteConfigurationTemplateV1InternalServerError {
	return &AdminDeleteConfigurationTemplateV1InternalServerError{}
}

/*AdminDeleteConfigurationTemplateV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteConfigurationTemplateV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationTemplateV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/configurations/{name}][%d] adminDeleteConfigurationTemplateV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteConfigurationTemplateV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteConfigurationTemplateV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationTemplateV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
