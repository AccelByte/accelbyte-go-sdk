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

// AdminDeleteConfigurationAlertV1Reader is a Reader for the AdminDeleteConfigurationAlertV1 structure.
type AdminDeleteConfigurationAlertV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteConfigurationAlertV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteConfigurationAlertV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteConfigurationAlertV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteConfigurationAlertV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteConfigurationAlertV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteConfigurationAlertV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteConfigurationAlertV1NoContent creates a AdminDeleteConfigurationAlertV1NoContent with default headers values
func NewAdminDeleteConfigurationAlertV1NoContent() *AdminDeleteConfigurationAlertV1NoContent {
	return &AdminDeleteConfigurationAlertV1NoContent{}
}

/*AdminDeleteConfigurationAlertV1NoContent handles this case with default header values.

  No Content
*/
type AdminDeleteConfigurationAlertV1NoContent struct {
}

func (o *AdminDeleteConfigurationAlertV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminDeleteConfigurationAlertV1NoContent ", 204)
}

func (o *AdminDeleteConfigurationAlertV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteConfigurationAlertV1BadRequest creates a AdminDeleteConfigurationAlertV1BadRequest with default headers values
func NewAdminDeleteConfigurationAlertV1BadRequest() *AdminDeleteConfigurationAlertV1BadRequest {
	return &AdminDeleteConfigurationAlertV1BadRequest{}
}

/*AdminDeleteConfigurationAlertV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteConfigurationAlertV1BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationAlertV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminDeleteConfigurationAlertV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteConfigurationAlertV1BadRequest) ToJSONString() string {
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

func (o *AdminDeleteConfigurationAlertV1BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationAlertV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteConfigurationAlertV1Unauthorized creates a AdminDeleteConfigurationAlertV1Unauthorized with default headers values
func NewAdminDeleteConfigurationAlertV1Unauthorized() *AdminDeleteConfigurationAlertV1Unauthorized {
	return &AdminDeleteConfigurationAlertV1Unauthorized{}
}

/*AdminDeleteConfigurationAlertV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteConfigurationAlertV1Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationAlertV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminDeleteConfigurationAlertV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteConfigurationAlertV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteConfigurationAlertV1Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationAlertV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteConfigurationAlertV1Forbidden creates a AdminDeleteConfigurationAlertV1Forbidden with default headers values
func NewAdminDeleteConfigurationAlertV1Forbidden() *AdminDeleteConfigurationAlertV1Forbidden {
	return &AdminDeleteConfigurationAlertV1Forbidden{}
}

/*AdminDeleteConfigurationAlertV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteConfigurationAlertV1Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationAlertV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminDeleteConfigurationAlertV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteConfigurationAlertV1Forbidden) ToJSONString() string {
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

func (o *AdminDeleteConfigurationAlertV1Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationAlertV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteConfigurationAlertV1InternalServerError creates a AdminDeleteConfigurationAlertV1InternalServerError with default headers values
func NewAdminDeleteConfigurationAlertV1InternalServerError() *AdminDeleteConfigurationAlertV1InternalServerError {
	return &AdminDeleteConfigurationAlertV1InternalServerError{}
}

/*AdminDeleteConfigurationAlertV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteConfigurationAlertV1InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteConfigurationAlertV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/alerts-configuration][%d] adminDeleteConfigurationAlertV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteConfigurationAlertV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteConfigurationAlertV1InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteConfigurationAlertV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
