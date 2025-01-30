// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_v1

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclientmodels"
)

// AdminUpdateConfigurationReader is a Reader for the AdminUpdateConfiguration structure.
type AdminUpdateConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /login-queue/v1/admin/namespaces/{namespace}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateConfigurationOK creates a AdminUpdateConfigurationOK with default headers values
func NewAdminUpdateConfigurationOK() *AdminUpdateConfigurationOK {
	return &AdminUpdateConfigurationOK{}
}

/*
AdminUpdateConfigurationOK handles this case with default header values.

	OK
*/
type AdminUpdateConfigurationOK struct {
	Payload *loginqueueclientmodels.ApimodelsConfigurationResponse
}

func (o *AdminUpdateConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminUpdateConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateConfigurationOK) GetPayload() *loginqueueclientmodels.ApimodelsConfigurationResponse {
	return o.Payload
}

func (o *AdminUpdateConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ApimodelsConfigurationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigurationBadRequest creates a AdminUpdateConfigurationBadRequest with default headers values
func NewAdminUpdateConfigurationBadRequest() *AdminUpdateConfigurationBadRequest {
	return &AdminUpdateConfigurationBadRequest{}
}

/*
AdminUpdateConfigurationBadRequest handles this case with default header values.

	Bad Request
*/
type AdminUpdateConfigurationBadRequest struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminUpdateConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateConfigurationBadRequest) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigurationUnauthorized creates a AdminUpdateConfigurationUnauthorized with default headers values
func NewAdminUpdateConfigurationUnauthorized() *AdminUpdateConfigurationUnauthorized {
	return &AdminUpdateConfigurationUnauthorized{}
}

/*
AdminUpdateConfigurationUnauthorized handles this case with default header values.

	Unauthorized
*/
type AdminUpdateConfigurationUnauthorized struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminUpdateConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateConfigurationUnauthorized) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigurationForbidden creates a AdminUpdateConfigurationForbidden with default headers values
func NewAdminUpdateConfigurationForbidden() *AdminUpdateConfigurationForbidden {
	return &AdminUpdateConfigurationForbidden{}
}

/*
AdminUpdateConfigurationForbidden handles this case with default header values.

	Forbidden
*/
type AdminUpdateConfigurationForbidden struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationForbidden) Error() string {
	return fmt.Sprintf("[PUT /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminUpdateConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateConfigurationForbidden) ToJSONString() string {
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

func (o *AdminUpdateConfigurationForbidden) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigurationInternalServerError creates a AdminUpdateConfigurationInternalServerError with default headers values
func NewAdminUpdateConfigurationInternalServerError() *AdminUpdateConfigurationInternalServerError {
	return &AdminUpdateConfigurationInternalServerError{}
}

/*
AdminUpdateConfigurationInternalServerError handles this case with default header values.

	Internal Server Error
*/
type AdminUpdateConfigurationInternalServerError struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminUpdateConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminUpdateConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateConfigurationInternalServerError) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
