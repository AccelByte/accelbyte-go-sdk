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

// AdminGetStatusReader is a Reader for the AdminGetStatus structure.
type AdminGetStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /login-queue/v1/admin/namespaces/{namespace}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetStatusOK creates a AdminGetStatusOK with default headers values
func NewAdminGetStatusOK() *AdminGetStatusOK {
	return &AdminGetStatusOK{}
}

/*
AdminGetStatusOK handles this case with default header values.

	OK
*/
type AdminGetStatusOK struct {
	Payload *loginqueueclientmodels.ApimodelsQueueStatusResponse
}

func (o *AdminGetStatusOK) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/status][%d] adminGetStatusOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetStatusOK) ToJSONString() string {
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

func (o *AdminGetStatusOK) GetPayload() *loginqueueclientmodels.ApimodelsQueueStatusResponse {
	return o.Payload
}

func (o *AdminGetStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(loginqueueclientmodels.ApimodelsQueueStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetStatusUnauthorized creates a AdminGetStatusUnauthorized with default headers values
func NewAdminGetStatusUnauthorized() *AdminGetStatusUnauthorized {
	return &AdminGetStatusUnauthorized{}
}

/*
AdminGetStatusUnauthorized handles this case with default header values.

	Unauthorized
*/
type AdminGetStatusUnauthorized struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/status][%d] adminGetStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetStatusUnauthorized) ToJSONString() string {
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

func (o *AdminGetStatusUnauthorized) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetStatusForbidden creates a AdminGetStatusForbidden with default headers values
func NewAdminGetStatusForbidden() *AdminGetStatusForbidden {
	return &AdminGetStatusForbidden{}
}

/*
AdminGetStatusForbidden handles this case with default header values.

	Forbidden
*/
type AdminGetStatusForbidden struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/status][%d] adminGetStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetStatusForbidden) ToJSONString() string {
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

func (o *AdminGetStatusForbidden) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetStatusInternalServerError creates a AdminGetStatusInternalServerError with default headers values
func NewAdminGetStatusInternalServerError() *AdminGetStatusInternalServerError {
	return &AdminGetStatusInternalServerError{}
}

/*
AdminGetStatusInternalServerError handles this case with default header values.

	Internal Server Error
*/
type AdminGetStatusInternalServerError struct {
	Payload *loginqueueclientmodels.ResponseError
}

func (o *AdminGetStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /login-queue/v1/admin/namespaces/{namespace}/status][%d] adminGetStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetStatusInternalServerError) ToJSONString() string {
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

func (o *AdminGetStatusInternalServerError) GetPayload() *loginqueueclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
