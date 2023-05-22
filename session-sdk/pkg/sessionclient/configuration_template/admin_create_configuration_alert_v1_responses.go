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

// AdminCreateConfigurationAlertV1Reader is a Reader for the AdminCreateConfigurationAlertV1 structure.
type AdminCreateConfigurationAlertV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateConfigurationAlertV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateConfigurationAlertV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateConfigurationAlertV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateConfigurationAlertV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateConfigurationAlertV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateConfigurationAlertV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateConfigurationAlertV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateConfigurationAlertV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/admin/namespaces/{namespace}/alerts-configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateConfigurationAlertV1Created creates a AdminCreateConfigurationAlertV1Created with default headers values
func NewAdminCreateConfigurationAlertV1Created() *AdminCreateConfigurationAlertV1Created {
	return &AdminCreateConfigurationAlertV1Created{}
}

/*AdminCreateConfigurationAlertV1Created handles this case with default header values.

  Created
*/
type AdminCreateConfigurationAlertV1Created struct {
	Payload *sessionclientmodels.ApimodelsConfigAlertResponse
}

func (o *AdminCreateConfigurationAlertV1Created) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1Created) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1Created) GetPayload() *sessionclientmodels.ApimodelsConfigAlertResponse {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsConfigAlertResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateConfigurationAlertV1BadRequest creates a AdminCreateConfigurationAlertV1BadRequest with default headers values
func NewAdminCreateConfigurationAlertV1BadRequest() *AdminCreateConfigurationAlertV1BadRequest {
	return &AdminCreateConfigurationAlertV1BadRequest{}
}

/*AdminCreateConfigurationAlertV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateConfigurationAlertV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1BadRequest) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateConfigurationAlertV1Unauthorized creates a AdminCreateConfigurationAlertV1Unauthorized with default headers values
func NewAdminCreateConfigurationAlertV1Unauthorized() *AdminCreateConfigurationAlertV1Unauthorized {
	return &AdminCreateConfigurationAlertV1Unauthorized{}
}

/*AdminCreateConfigurationAlertV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateConfigurationAlertV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1Unauthorized) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateConfigurationAlertV1Forbidden creates a AdminCreateConfigurationAlertV1Forbidden with default headers values
func NewAdminCreateConfigurationAlertV1Forbidden() *AdminCreateConfigurationAlertV1Forbidden {
	return &AdminCreateConfigurationAlertV1Forbidden{}
}

/*AdminCreateConfigurationAlertV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminCreateConfigurationAlertV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1Forbidden) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateConfigurationAlertV1NotFound creates a AdminCreateConfigurationAlertV1NotFound with default headers values
func NewAdminCreateConfigurationAlertV1NotFound() *AdminCreateConfigurationAlertV1NotFound {
	return &AdminCreateConfigurationAlertV1NotFound{}
}

/*AdminCreateConfigurationAlertV1NotFound handles this case with default header values.

  Not Found
*/
type AdminCreateConfigurationAlertV1NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1NotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1NotFound) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateConfigurationAlertV1Conflict creates a AdminCreateConfigurationAlertV1Conflict with default headers values
func NewAdminCreateConfigurationAlertV1Conflict() *AdminCreateConfigurationAlertV1Conflict {
	return &AdminCreateConfigurationAlertV1Conflict{}
}

/*AdminCreateConfigurationAlertV1Conflict handles this case with default header values.

  Conflict
*/
type AdminCreateConfigurationAlertV1Conflict struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1Conflict) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1Conflict) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1Conflict) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateConfigurationAlertV1InternalServerError creates a AdminCreateConfigurationAlertV1InternalServerError with default headers values
func NewAdminCreateConfigurationAlertV1InternalServerError() *AdminCreateConfigurationAlertV1InternalServerError {
	return &AdminCreateConfigurationAlertV1InternalServerError{}
}

/*AdminCreateConfigurationAlertV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateConfigurationAlertV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminCreateConfigurationAlertV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminCreateConfigurationAlertV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateConfigurationAlertV1InternalServerError) ToJSONString() string {
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

func (o *AdminCreateConfigurationAlertV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateConfigurationAlertV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
