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

// AdminGetAllConfigurationTemplatesV1Reader is a Reader for the AdminGetAllConfigurationTemplatesV1 structure.
type AdminGetAllConfigurationTemplatesV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllConfigurationTemplatesV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllConfigurationTemplatesV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAllConfigurationTemplatesV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAllConfigurationTemplatesV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAllConfigurationTemplatesV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllConfigurationTemplatesV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllConfigurationTemplatesV1OK creates a AdminGetAllConfigurationTemplatesV1OK with default headers values
func NewAdminGetAllConfigurationTemplatesV1OK() *AdminGetAllConfigurationTemplatesV1OK {
	return &AdminGetAllConfigurationTemplatesV1OK{}
}

/*AdminGetAllConfigurationTemplatesV1OK handles this case with default header values.

  OK
*/
type AdminGetAllConfigurationTemplatesV1OK struct {
	Payload *sessionclientmodels.ApimodelsConfigurationTemplatesResponse
}

func (o *AdminGetAllConfigurationTemplatesV1OK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations][%d] adminGetAllConfigurationTemplatesV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllConfigurationTemplatesV1OK) ToJSONString() string {
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

func (o *AdminGetAllConfigurationTemplatesV1OK) GetPayload() *sessionclientmodels.ApimodelsConfigurationTemplatesResponse {
	return o.Payload
}

func (o *AdminGetAllConfigurationTemplatesV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsConfigurationTemplatesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllConfigurationTemplatesV1BadRequest creates a AdminGetAllConfigurationTemplatesV1BadRequest with default headers values
func NewAdminGetAllConfigurationTemplatesV1BadRequest() *AdminGetAllConfigurationTemplatesV1BadRequest {
	return &AdminGetAllConfigurationTemplatesV1BadRequest{}
}

/*AdminGetAllConfigurationTemplatesV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetAllConfigurationTemplatesV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetAllConfigurationTemplatesV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations][%d] adminGetAllConfigurationTemplatesV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAllConfigurationTemplatesV1BadRequest) ToJSONString() string {
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

func (o *AdminGetAllConfigurationTemplatesV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigurationTemplatesV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigurationTemplatesV1Unauthorized creates a AdminGetAllConfigurationTemplatesV1Unauthorized with default headers values
func NewAdminGetAllConfigurationTemplatesV1Unauthorized() *AdminGetAllConfigurationTemplatesV1Unauthorized {
	return &AdminGetAllConfigurationTemplatesV1Unauthorized{}
}

/*AdminGetAllConfigurationTemplatesV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetAllConfigurationTemplatesV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetAllConfigurationTemplatesV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations][%d] adminGetAllConfigurationTemplatesV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAllConfigurationTemplatesV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetAllConfigurationTemplatesV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigurationTemplatesV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigurationTemplatesV1Forbidden creates a AdminGetAllConfigurationTemplatesV1Forbidden with default headers values
func NewAdminGetAllConfigurationTemplatesV1Forbidden() *AdminGetAllConfigurationTemplatesV1Forbidden {
	return &AdminGetAllConfigurationTemplatesV1Forbidden{}
}

/*AdminGetAllConfigurationTemplatesV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetAllConfigurationTemplatesV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetAllConfigurationTemplatesV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations][%d] adminGetAllConfigurationTemplatesV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAllConfigurationTemplatesV1Forbidden) ToJSONString() string {
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

func (o *AdminGetAllConfigurationTemplatesV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigurationTemplatesV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigurationTemplatesV1InternalServerError creates a AdminGetAllConfigurationTemplatesV1InternalServerError with default headers values
func NewAdminGetAllConfigurationTemplatesV1InternalServerError() *AdminGetAllConfigurationTemplatesV1InternalServerError {
	return &AdminGetAllConfigurationTemplatesV1InternalServerError{}
}

/*AdminGetAllConfigurationTemplatesV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetAllConfigurationTemplatesV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetAllConfigurationTemplatesV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/configurations][%d] adminGetAllConfigurationTemplatesV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllConfigurationTemplatesV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetAllConfigurationTemplatesV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigurationTemplatesV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
