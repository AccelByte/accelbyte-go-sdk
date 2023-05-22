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

// AdminGetConfigurationAlertV1Reader is a Reader for the AdminGetConfigurationAlertV1 structure.
type AdminGetConfigurationAlertV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetConfigurationAlertV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetConfigurationAlertV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetConfigurationAlertV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetConfigurationAlertV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetConfigurationAlertV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetConfigurationAlertV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetConfigurationAlertV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/alerts-configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetConfigurationAlertV1OK creates a AdminGetConfigurationAlertV1OK with default headers values
func NewAdminGetConfigurationAlertV1OK() *AdminGetConfigurationAlertV1OK {
	return &AdminGetConfigurationAlertV1OK{}
}

/*AdminGetConfigurationAlertV1OK handles this case with default header values.

  Created
*/
type AdminGetConfigurationAlertV1OK struct {
	Payload *sessionclientmodels.ApimodelsConfigAlertResponse
}

func (o *AdminGetConfigurationAlertV1OK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1OK) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1OK) GetPayload() *sessionclientmodels.ApimodelsConfigAlertResponse {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigurationAlertV1BadRequest creates a AdminGetConfigurationAlertV1BadRequest with default headers values
func NewAdminGetConfigurationAlertV1BadRequest() *AdminGetConfigurationAlertV1BadRequest {
	return &AdminGetConfigurationAlertV1BadRequest{}
}

/*AdminGetConfigurationAlertV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetConfigurationAlertV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationAlertV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1BadRequest) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigurationAlertV1Unauthorized creates a AdminGetConfigurationAlertV1Unauthorized with default headers values
func NewAdminGetConfigurationAlertV1Unauthorized() *AdminGetConfigurationAlertV1Unauthorized {
	return &AdminGetConfigurationAlertV1Unauthorized{}
}

/*AdminGetConfigurationAlertV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetConfigurationAlertV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationAlertV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigurationAlertV1Forbidden creates a AdminGetConfigurationAlertV1Forbidden with default headers values
func NewAdminGetConfigurationAlertV1Forbidden() *AdminGetConfigurationAlertV1Forbidden {
	return &AdminGetConfigurationAlertV1Forbidden{}
}

/*AdminGetConfigurationAlertV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetConfigurationAlertV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationAlertV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1Forbidden) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigurationAlertV1NotFound creates a AdminGetConfigurationAlertV1NotFound with default headers values
func NewAdminGetConfigurationAlertV1NotFound() *AdminGetConfigurationAlertV1NotFound {
	return &AdminGetConfigurationAlertV1NotFound{}
}

/*AdminGetConfigurationAlertV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetConfigurationAlertV1NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationAlertV1NotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1NotFound) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigurationAlertV1InternalServerError creates a AdminGetConfigurationAlertV1InternalServerError with default headers values
func NewAdminGetConfigurationAlertV1InternalServerError() *AdminGetConfigurationAlertV1InternalServerError {
	return &AdminGetConfigurationAlertV1InternalServerError{}
}

/*AdminGetConfigurationAlertV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetConfigurationAlertV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetConfigurationAlertV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminGetConfigurationAlertV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetConfigurationAlertV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetConfigurationAlertV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationAlertV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
