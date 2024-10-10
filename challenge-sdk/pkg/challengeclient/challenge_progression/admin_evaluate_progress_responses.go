// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_progression

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

// AdminEvaluateProgressReader is a Reader for the AdminEvaluateProgress structure.
type AdminEvaluateProgressReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEvaluateProgressReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminEvaluateProgressNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminEvaluateProgressBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEvaluateProgressUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEvaluateProgressForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEvaluateProgressNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEvaluateProgressInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEvaluateProgressNoContent creates a AdminEvaluateProgressNoContent with default headers values
func NewAdminEvaluateProgressNoContent() *AdminEvaluateProgressNoContent {
	return &AdminEvaluateProgressNoContent{}
}

/*AdminEvaluateProgressNoContent handles this case with default header values.

  No Content
*/
type AdminEvaluateProgressNoContent struct {
}

func (o *AdminEvaluateProgressNoContent) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressNoContent ", 204)
}

func (o *AdminEvaluateProgressNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEvaluateProgressBadRequest creates a AdminEvaluateProgressBadRequest with default headers values
func NewAdminEvaluateProgressBadRequest() *AdminEvaluateProgressBadRequest {
	return &AdminEvaluateProgressBadRequest{}
}

/*AdminEvaluateProgressBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminEvaluateProgressBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminEvaluateProgressBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminEvaluateProgressBadRequest) ToJSONString() string {
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

func (o *AdminEvaluateProgressBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminEvaluateProgressBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEvaluateProgressUnauthorized creates a AdminEvaluateProgressUnauthorized with default headers values
func NewAdminEvaluateProgressUnauthorized() *AdminEvaluateProgressUnauthorized {
	return &AdminEvaluateProgressUnauthorized{}
}

/*AdminEvaluateProgressUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEvaluateProgressUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminEvaluateProgressUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEvaluateProgressUnauthorized) ToJSONString() string {
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

func (o *AdminEvaluateProgressUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminEvaluateProgressUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEvaluateProgressForbidden creates a AdminEvaluateProgressForbidden with default headers values
func NewAdminEvaluateProgressForbidden() *AdminEvaluateProgressForbidden {
	return &AdminEvaluateProgressForbidden{}
}

/*AdminEvaluateProgressForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminEvaluateProgressForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminEvaluateProgressForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEvaluateProgressForbidden) ToJSONString() string {
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

func (o *AdminEvaluateProgressForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminEvaluateProgressForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEvaluateProgressNotFound creates a AdminEvaluateProgressNotFound with default headers values
func NewAdminEvaluateProgressNotFound() *AdminEvaluateProgressNotFound {
	return &AdminEvaluateProgressNotFound{}
}

/*AdminEvaluateProgressNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminEvaluateProgressNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminEvaluateProgressNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminEvaluateProgressNotFound) ToJSONString() string {
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

func (o *AdminEvaluateProgressNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminEvaluateProgressNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEvaluateProgressInternalServerError creates a AdminEvaluateProgressInternalServerError with default headers values
func NewAdminEvaluateProgressInternalServerError() *AdminEvaluateProgressInternalServerError {
	return &AdminEvaluateProgressInternalServerError{}
}

/*AdminEvaluateProgressInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminEvaluateProgressInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminEvaluateProgressInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/progress/evaluate][%d] adminEvaluateProgressInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminEvaluateProgressInternalServerError) ToJSONString() string {
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

func (o *AdminEvaluateProgressInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminEvaluateProgressInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
