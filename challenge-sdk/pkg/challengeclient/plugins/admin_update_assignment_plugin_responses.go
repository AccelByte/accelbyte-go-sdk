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

// AdminUpdateAssignmentPluginReader is a Reader for the AdminUpdateAssignmentPlugin structure.
type AdminUpdateAssignmentPluginReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAssignmentPluginReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateAssignmentPluginOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAssignmentPluginBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAssignmentPluginUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateAssignmentPluginForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateAssignmentPluginNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateAssignmentPluginInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAssignmentPluginOK creates a AdminUpdateAssignmentPluginOK with default headers values
func NewAdminUpdateAssignmentPluginOK() *AdminUpdateAssignmentPluginOK {
	return &AdminUpdateAssignmentPluginOK{}
}

/*AdminUpdateAssignmentPluginOK handles this case with default header values.

  OK
*/
type AdminUpdateAssignmentPluginOK struct {
	Payload *challengeclientmodels.ModelPluginAssignmentResponse
}

func (o *AdminUpdateAssignmentPluginOK) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginOK) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginOK) GetPayload() *challengeclientmodels.ModelPluginAssignmentResponse {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAssignmentPluginBadRequest creates a AdminUpdateAssignmentPluginBadRequest with default headers values
func NewAdminUpdateAssignmentPluginBadRequest() *AdminUpdateAssignmentPluginBadRequest {
	return &AdminUpdateAssignmentPluginBadRequest{}
}

/*AdminUpdateAssignmentPluginBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminUpdateAssignmentPluginBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateAssignmentPluginBadRequest) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginBadRequest) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAssignmentPluginUnauthorized creates a AdminUpdateAssignmentPluginUnauthorized with default headers values
func NewAdminUpdateAssignmentPluginUnauthorized() *AdminUpdateAssignmentPluginUnauthorized {
	return &AdminUpdateAssignmentPluginUnauthorized{}
}

/*AdminUpdateAssignmentPluginUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateAssignmentPluginUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminUpdateAssignmentPluginUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAssignmentPluginForbidden creates a AdminUpdateAssignmentPluginForbidden with default headers values
func NewAdminUpdateAssignmentPluginForbidden() *AdminUpdateAssignmentPluginForbidden {
	return &AdminUpdateAssignmentPluginForbidden{}
}

/*AdminUpdateAssignmentPluginForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminUpdateAssignmentPluginForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminUpdateAssignmentPluginForbidden) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginForbidden) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAssignmentPluginNotFound creates a AdminUpdateAssignmentPluginNotFound with default headers values
func NewAdminUpdateAssignmentPluginNotFound() *AdminUpdateAssignmentPluginNotFound {
	return &AdminUpdateAssignmentPluginNotFound{}
}

/*AdminUpdateAssignmentPluginNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminUpdateAssignmentPluginNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminUpdateAssignmentPluginNotFound) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginNotFound) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAssignmentPluginInternalServerError creates a AdminUpdateAssignmentPluginInternalServerError with default headers values
func NewAdminUpdateAssignmentPluginInternalServerError() *AdminUpdateAssignmentPluginInternalServerError {
	return &AdminUpdateAssignmentPluginInternalServerError{}
}

/*AdminUpdateAssignmentPluginInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminUpdateAssignmentPluginInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateAssignmentPluginInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminUpdateAssignmentPluginInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateAssignmentPluginInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateAssignmentPluginInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAssignmentPluginInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
