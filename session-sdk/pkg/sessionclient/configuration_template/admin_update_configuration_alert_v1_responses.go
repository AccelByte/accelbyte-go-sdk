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

// AdminUpdateConfigurationAlertV1Reader is a Reader for the AdminUpdateConfigurationAlertV1 structure.
type AdminUpdateConfigurationAlertV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateConfigurationAlertV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateConfigurationAlertV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateConfigurationAlertV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateConfigurationAlertV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateConfigurationAlertV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateConfigurationAlertV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateConfigurationAlertV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateConfigurationAlertV1OK creates a AdminUpdateConfigurationAlertV1OK with default headers values
func NewAdminUpdateConfigurationAlertV1OK() *AdminUpdateConfigurationAlertV1OK {
	return &AdminUpdateConfigurationAlertV1OK{}
}

/*AdminUpdateConfigurationAlertV1OK handles this case with default header values.

  OK
*/
type AdminUpdateConfigurationAlertV1OK struct {
	Payload *sessionclientmodels.ApimodelsConfigAlertResponse
}

func (o *AdminUpdateConfigurationAlertV1OK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1OK) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1OK) GetPayload() *sessionclientmodels.ApimodelsConfigAlertResponse {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationAlertV1BadRequest creates a AdminUpdateConfigurationAlertV1BadRequest with default headers values
func NewAdminUpdateConfigurationAlertV1BadRequest() *AdminUpdateConfigurationAlertV1BadRequest {
	return &AdminUpdateConfigurationAlertV1BadRequest{}
}

/*AdminUpdateConfigurationAlertV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateConfigurationAlertV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationAlertV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1BadRequest) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationAlertV1Unauthorized creates a AdminUpdateConfigurationAlertV1Unauthorized with default headers values
func NewAdminUpdateConfigurationAlertV1Unauthorized() *AdminUpdateConfigurationAlertV1Unauthorized {
	return &AdminUpdateConfigurationAlertV1Unauthorized{}
}

/*AdminUpdateConfigurationAlertV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateConfigurationAlertV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationAlertV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationAlertV1Forbidden creates a AdminUpdateConfigurationAlertV1Forbidden with default headers values
func NewAdminUpdateConfigurationAlertV1Forbidden() *AdminUpdateConfigurationAlertV1Forbidden {
	return &AdminUpdateConfigurationAlertV1Forbidden{}
}

/*AdminUpdateConfigurationAlertV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateConfigurationAlertV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationAlertV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1Forbidden) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationAlertV1NotFound creates a AdminUpdateConfigurationAlertV1NotFound with default headers values
func NewAdminUpdateConfigurationAlertV1NotFound() *AdminUpdateConfigurationAlertV1NotFound {
	return &AdminUpdateConfigurationAlertV1NotFound{}
}

/*AdminUpdateConfigurationAlertV1NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateConfigurationAlertV1NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationAlertV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1NotFound) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateConfigurationAlertV1InternalServerError creates a AdminUpdateConfigurationAlertV1InternalServerError with default headers values
func NewAdminUpdateConfigurationAlertV1InternalServerError() *AdminUpdateConfigurationAlertV1InternalServerError {
	return &AdminUpdateConfigurationAlertV1InternalServerError{}
}

/*AdminUpdateConfigurationAlertV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateConfigurationAlertV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationAlertV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminUpdateConfigurationAlertV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateConfigurationAlertV1InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateConfigurationAlertV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationAlertV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
