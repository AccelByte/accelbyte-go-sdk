// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugins

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// AdminDeleteAssignmentPluginReader is a Reader for the AdminDeleteAssignmentPlugin structure.
type AdminDeleteAssignmentPluginReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAssignmentPluginReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAssignmentPluginNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteAssignmentPluginBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAssignmentPluginUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteAssignmentPluginForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAssignmentPluginNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAssignmentPluginInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAssignmentPluginNoContent creates a AdminDeleteAssignmentPluginNoContent with default headers values
func NewAdminDeleteAssignmentPluginNoContent() *AdminDeleteAssignmentPluginNoContent {
	return &AdminDeleteAssignmentPluginNoContent{}
}

/*AdminDeleteAssignmentPluginNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteAssignmentPluginNoContent struct {
}

func (o *AdminDeleteAssignmentPluginNoContent) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginNoContent ", 204)
}

func (o *AdminDeleteAssignmentPluginNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAssignmentPluginBadRequest creates a AdminDeleteAssignmentPluginBadRequest with default headers values
func NewAdminDeleteAssignmentPluginBadRequest() *AdminDeleteAssignmentPluginBadRequest {
	return &AdminDeleteAssignmentPluginBadRequest{}
}

/*AdminDeleteAssignmentPluginBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminDeleteAssignmentPluginBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteAssignmentPluginBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteAssignmentPluginBadRequest) ToJSONString() string {
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

func (o *AdminDeleteAssignmentPluginBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAssignmentPluginBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAssignmentPluginUnauthorized creates a AdminDeleteAssignmentPluginUnauthorized with default headers values
func NewAdminDeleteAssignmentPluginUnauthorized() *AdminDeleteAssignmentPluginUnauthorized {
	return &AdminDeleteAssignmentPluginUnauthorized{}
}

/*AdminDeleteAssignmentPluginUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteAssignmentPluginUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminDeleteAssignmentPluginUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAssignmentPluginUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAssignmentPluginUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminDeleteAssignmentPluginUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAssignmentPluginForbidden creates a AdminDeleteAssignmentPluginForbidden with default headers values
func NewAdminDeleteAssignmentPluginForbidden() *AdminDeleteAssignmentPluginForbidden {
	return &AdminDeleteAssignmentPluginForbidden{}
}

/*AdminDeleteAssignmentPluginForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteAssignmentPluginForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminDeleteAssignmentPluginForbidden) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteAssignmentPluginForbidden) ToJSONString() string {
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

func (o *AdminDeleteAssignmentPluginForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminDeleteAssignmentPluginForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAssignmentPluginNotFound creates a AdminDeleteAssignmentPluginNotFound with default headers values
func NewAdminDeleteAssignmentPluginNotFound() *AdminDeleteAssignmentPluginNotFound {
	return &AdminDeleteAssignmentPluginNotFound{}
}

/*AdminDeleteAssignmentPluginNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminDeleteAssignmentPluginNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminDeleteAssignmentPluginNotFound) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAssignmentPluginNotFound) ToJSONString() string {
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

func (o *AdminDeleteAssignmentPluginNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminDeleteAssignmentPluginNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.IamErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAssignmentPluginInternalServerError creates a AdminDeleteAssignmentPluginInternalServerError with default headers values
func NewAdminDeleteAssignmentPluginInternalServerError() *AdminDeleteAssignmentPluginInternalServerError {
	return &AdminDeleteAssignmentPluginInternalServerError{}
}

/*AdminDeleteAssignmentPluginInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminDeleteAssignmentPluginInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteAssignmentPluginInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminDeleteAssignmentPluginInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAssignmentPluginInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAssignmentPluginInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAssignmentPluginInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
