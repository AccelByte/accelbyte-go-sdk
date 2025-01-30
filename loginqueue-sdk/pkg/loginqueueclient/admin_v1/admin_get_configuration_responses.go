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

// AdminGetConfigurationReader is a Reader for the AdminGetConfiguration structure.
type AdminGetConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /login-queue/v1/admin/namespaces/{namespace}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetConfigurationOK creates a AdminGetConfigurationOK with default headers values
func NewAdminGetConfigurationOK() *AdminGetConfigurationOK {
	return &AdminGetConfigurationOK{}
}

/*
AdminGetConfigurationOK handles this case with default header values.

	OK
*/
type AdminGetConfigurationOK struct {
	Payload *loginqueueclientmodels.ApimodelsConfigurationResponse
}

func (o *AdminGetConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminGetConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetConfigurationOK) ToJSONString() string {
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

func (o *AdminGetConfigurationOK) GetPayload() *loginqueueclientmodels.ApimodelsConfigurationResponse {
	return o.Payload
}

func (o *AdminGetConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetConfigurationUnauthorized creates a AdminGetConfigurationUnauthorized with default headers values
func NewAdminGetConfigurationUnauthorized() *AdminGetConfigurationUnauthorized {
	return &AdminGetConfigurationUnauthorized{}
}

/*
AdminGetConfigurationUnauthorized handles this case with default header values.

	Unauthorized
*/
type AdminGetConfigurationUnauthorized struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminGetConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminGetConfigurationUnauthorized) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetConfigurationForbidden creates a AdminGetConfigurationForbidden with default headers values
func NewAdminGetConfigurationForbidden() *AdminGetConfigurationForbidden {
	return &AdminGetConfigurationForbidden{}
}

/*
AdminGetConfigurationForbidden handles this case with default header values.

	Forbidden
*/
type AdminGetConfigurationForbidden struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetConfigurationForbidden) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminGetConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetConfigurationForbidden) ToJSONString() string {
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

func (o *AdminGetConfigurationForbidden) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetConfigurationInternalServerError creates a AdminGetConfigurationInternalServerError with default headers values
func NewAdminGetConfigurationInternalServerError() *AdminGetConfigurationInternalServerError {
	return &AdminGetConfigurationInternalServerError{}
}

/*
AdminGetConfigurationInternalServerError handles this case with default header values.

	Internal Server Error
*/
type AdminGetConfigurationInternalServerError struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/config][%d] adminGetConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminGetConfigurationInternalServerError) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
