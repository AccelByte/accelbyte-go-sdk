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

// AdminGetAssignmentPluginReader is a Reader for the AdminGetAssignmentPlugin structure.
type AdminGetAssignmentPluginReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAssignmentPluginReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAssignmentPluginOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAssignmentPluginBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAssignmentPluginUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAssignmentPluginForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAssignmentPluginNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAssignmentPluginInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAssignmentPluginOK creates a AdminGetAssignmentPluginOK with default headers values
func NewAdminGetAssignmentPluginOK() *AdminGetAssignmentPluginOK {
	return &AdminGetAssignmentPluginOK{}
}

/*AdminGetAssignmentPluginOK handles this case with default header values.

  OK
*/
type AdminGetAssignmentPluginOK struct {
	Payload *challengeclientmodels.ModelPluginAssignmentResponse
}

func (o *AdminGetAssignmentPluginOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginOK) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginOK) GetPayload() *challengeclientmodels.ModelPluginAssignmentResponse {
	return o.Payload
}

func (o *AdminGetAssignmentPluginOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelPluginAssignmentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAssignmentPluginBadRequest creates a AdminGetAssignmentPluginBadRequest with default headers values
func NewAdminGetAssignmentPluginBadRequest() *AdminGetAssignmentPluginBadRequest {
	return &AdminGetAssignmentPluginBadRequest{}
}

/*AdminGetAssignmentPluginBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminGetAssignmentPluginBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetAssignmentPluginBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginBadRequest) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAssignmentPluginBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAssignmentPluginUnauthorized creates a AdminGetAssignmentPluginUnauthorized with default headers values
func NewAdminGetAssignmentPluginUnauthorized() *AdminGetAssignmentPluginUnauthorized {
	return &AdminGetAssignmentPluginUnauthorized{}
}

/*AdminGetAssignmentPluginUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetAssignmentPluginUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetAssignmentPluginUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginUnauthorized) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetAssignmentPluginUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAssignmentPluginForbidden creates a AdminGetAssignmentPluginForbidden with default headers values
func NewAdminGetAssignmentPluginForbidden() *AdminGetAssignmentPluginForbidden {
	return &AdminGetAssignmentPluginForbidden{}
}

/*AdminGetAssignmentPluginForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetAssignmentPluginForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetAssignmentPluginForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginForbidden) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetAssignmentPluginForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAssignmentPluginNotFound creates a AdminGetAssignmentPluginNotFound with default headers values
func NewAdminGetAssignmentPluginNotFound() *AdminGetAssignmentPluginNotFound {
	return &AdminGetAssignmentPluginNotFound{}
}

/*AdminGetAssignmentPluginNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetAssignmentPluginNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetAssignmentPluginNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginNotFound) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetAssignmentPluginNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAssignmentPluginInternalServerError creates a AdminGetAssignmentPluginInternalServerError with default headers values
func NewAdminGetAssignmentPluginInternalServerError() *AdminGetAssignmentPluginInternalServerError {
	return &AdminGetAssignmentPluginInternalServerError{}
}

/*AdminGetAssignmentPluginInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetAssignmentPluginInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetAssignmentPluginInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminGetAssignmentPluginInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAssignmentPluginInternalServerError) ToJSONString() string {
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

func (o *AdminGetAssignmentPluginInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAssignmentPluginInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
