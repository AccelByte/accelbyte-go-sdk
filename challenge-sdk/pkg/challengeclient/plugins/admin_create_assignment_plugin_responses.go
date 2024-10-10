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

// AdminCreateAssignmentPluginReader is a Reader for the AdminCreateAssignmentPlugin structure.
type AdminCreateAssignmentPluginReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateAssignmentPluginReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateAssignmentPluginCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateAssignmentPluginBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateAssignmentPluginUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateAssignmentPluginForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateAssignmentPluginInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateAssignmentPluginCreated creates a AdminCreateAssignmentPluginCreated with default headers values
func NewAdminCreateAssignmentPluginCreated() *AdminCreateAssignmentPluginCreated {
	return &AdminCreateAssignmentPluginCreated{}
}

/*AdminCreateAssignmentPluginCreated handles this case with default header values.

  Created
*/
type AdminCreateAssignmentPluginCreated struct {
	Payload *challengeclientmodels.ModelPluginAssignmentResponse
}

func (o *AdminCreateAssignmentPluginCreated) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminCreateAssignmentPluginCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateAssignmentPluginCreated) ToJSONString() string {
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

func (o *AdminCreateAssignmentPluginCreated) GetPayload() *challengeclientmodels.ModelPluginAssignmentResponse {
	return o.Payload
}

func (o *AdminCreateAssignmentPluginCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateAssignmentPluginBadRequest creates a AdminCreateAssignmentPluginBadRequest with default headers values
func NewAdminCreateAssignmentPluginBadRequest() *AdminCreateAssignmentPluginBadRequest {
	return &AdminCreateAssignmentPluginBadRequest{}
}

/*AdminCreateAssignmentPluginBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminCreateAssignmentPluginBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateAssignmentPluginBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminCreateAssignmentPluginBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateAssignmentPluginBadRequest) ToJSONString() string {
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

func (o *AdminCreateAssignmentPluginBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateAssignmentPluginBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateAssignmentPluginUnauthorized creates a AdminCreateAssignmentPluginUnauthorized with default headers values
func NewAdminCreateAssignmentPluginUnauthorized() *AdminCreateAssignmentPluginUnauthorized {
	return &AdminCreateAssignmentPluginUnauthorized{}
}

/*AdminCreateAssignmentPluginUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateAssignmentPluginUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateAssignmentPluginUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminCreateAssignmentPluginUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateAssignmentPluginUnauthorized) ToJSONString() string {
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

func (o *AdminCreateAssignmentPluginUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateAssignmentPluginUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateAssignmentPluginForbidden creates a AdminCreateAssignmentPluginForbidden with default headers values
func NewAdminCreateAssignmentPluginForbidden() *AdminCreateAssignmentPluginForbidden {
	return &AdminCreateAssignmentPluginForbidden{}
}

/*AdminCreateAssignmentPluginForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminCreateAssignmentPluginForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateAssignmentPluginForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminCreateAssignmentPluginForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateAssignmentPluginForbidden) ToJSONString() string {
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

func (o *AdminCreateAssignmentPluginForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateAssignmentPluginForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateAssignmentPluginInternalServerError creates a AdminCreateAssignmentPluginInternalServerError with default headers values
func NewAdminCreateAssignmentPluginInternalServerError() *AdminCreateAssignmentPluginInternalServerError {
	return &AdminCreateAssignmentPluginInternalServerError{}
}

/*AdminCreateAssignmentPluginInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminCreateAssignmentPluginInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateAssignmentPluginInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/plugins/assignment][%d] adminCreateAssignmentPluginInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateAssignmentPluginInternalServerError) ToJSONString() string {
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

func (o *AdminCreateAssignmentPluginInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateAssignmentPluginInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
