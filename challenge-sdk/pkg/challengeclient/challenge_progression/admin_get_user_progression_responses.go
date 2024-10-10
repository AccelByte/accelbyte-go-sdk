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

// AdminGetUserProgressionReader is a Reader for the AdminGetUserProgression structure.
type AdminGetUserProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserProgressionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserProgressionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserProgressionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserProgressionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminGetUserProgressionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserProgressionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserProgressionOK creates a AdminGetUserProgressionOK with default headers values
func NewAdminGetUserProgressionOK() *AdminGetUserProgressionOK {
	return &AdminGetUserProgressionOK{}
}

/*AdminGetUserProgressionOK handles this case with default header values.

  OK
*/
type AdminGetUserProgressionOK struct {
	Payload *challengeclientmodels.ModelUserProgressionResponse
}

func (o *AdminGetUserProgressionOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserProgressionOK) ToJSONString() string {
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

func (o *AdminGetUserProgressionOK) GetPayload() *challengeclientmodels.ModelUserProgressionResponse {
	return o.Payload
}

func (o *AdminGetUserProgressionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelUserProgressionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserProgressionBadRequest creates a AdminGetUserProgressionBadRequest with default headers values
func NewAdminGetUserProgressionBadRequest() *AdminGetUserProgressionBadRequest {
	return &AdminGetUserProgressionBadRequest{}
}

/*AdminGetUserProgressionBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminGetUserProgressionBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetUserProgressionBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserProgressionBadRequest) ToJSONString() string {
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

func (o *AdminGetUserProgressionBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetUserProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserProgressionUnauthorized creates a AdminGetUserProgressionUnauthorized with default headers values
func NewAdminGetUserProgressionUnauthorized() *AdminGetUserProgressionUnauthorized {
	return &AdminGetUserProgressionUnauthorized{}
}

/*AdminGetUserProgressionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserProgressionUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetUserProgressionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserProgressionUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserProgressionUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetUserProgressionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserProgressionForbidden creates a AdminGetUserProgressionForbidden with default headers values
func NewAdminGetUserProgressionForbidden() *AdminGetUserProgressionForbidden {
	return &AdminGetUserProgressionForbidden{}
}

/*AdminGetUserProgressionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetUserProgressionForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetUserProgressionForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserProgressionForbidden) ToJSONString() string {
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

func (o *AdminGetUserProgressionForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetUserProgressionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserProgressionNotFound creates a AdminGetUserProgressionNotFound with default headers values
func NewAdminGetUserProgressionNotFound() *AdminGetUserProgressionNotFound {
	return &AdminGetUserProgressionNotFound{}
}

/*AdminGetUserProgressionNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetUserProgressionNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetUserProgressionNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserProgressionNotFound) ToJSONString() string {
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

func (o *AdminGetUserProgressionNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetUserProgressionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserProgressionUnprocessableEntity creates a AdminGetUserProgressionUnprocessableEntity with default headers values
func NewAdminGetUserProgressionUnprocessableEntity() *AdminGetUserProgressionUnprocessableEntity {
	return &AdminGetUserProgressionUnprocessableEntity{}
}

/*AdminGetUserProgressionUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminGetUserProgressionUnprocessableEntity struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetUserProgressionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminGetUserProgressionUnprocessableEntity) ToJSONString() string {
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

func (o *AdminGetUserProgressionUnprocessableEntity) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserProgressionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserProgressionInternalServerError creates a AdminGetUserProgressionInternalServerError with default headers values
func NewAdminGetUserProgressionInternalServerError() *AdminGetUserProgressionInternalServerError {
	return &AdminGetUserProgressionInternalServerError{}
}

/*AdminGetUserProgressionInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetUserProgressionInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetUserProgressionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}][%d] adminGetUserProgressionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserProgressionInternalServerError) ToJSONString() string {
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

func (o *AdminGetUserProgressionInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserProgressionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
