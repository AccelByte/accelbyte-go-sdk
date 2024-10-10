// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package goal_configuration

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

// AdminCreateGoalReader is a Reader for the AdminCreateGoal structure.
type AdminCreateGoalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateGoalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateGoalCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateGoalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateGoalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateGoalForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateGoalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateGoalConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminCreateGoalUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateGoalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateGoalCreated creates a AdminCreateGoalCreated with default headers values
func NewAdminCreateGoalCreated() *AdminCreateGoalCreated {
	return &AdminCreateGoalCreated{}
}

/*AdminCreateGoalCreated handles this case with default header values.

  Created
*/
type AdminCreateGoalCreated struct {
	Payload *challengeclientmodels.ModelGoalResponse
}

func (o *AdminCreateGoalCreated) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateGoalCreated) ToJSONString() string {
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

func (o *AdminCreateGoalCreated) GetPayload() *challengeclientmodels.ModelGoalResponse {
	return o.Payload
}

func (o *AdminCreateGoalCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelGoalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateGoalBadRequest creates a AdminCreateGoalBadRequest with default headers values
func NewAdminCreateGoalBadRequest() *AdminCreateGoalBadRequest {
	return &AdminCreateGoalBadRequest{}
}

/*AdminCreateGoalBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminCreateGoalBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateGoalBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateGoalBadRequest) ToJSONString() string {
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

func (o *AdminCreateGoalBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateGoalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalUnauthorized creates a AdminCreateGoalUnauthorized with default headers values
func NewAdminCreateGoalUnauthorized() *AdminCreateGoalUnauthorized {
	return &AdminCreateGoalUnauthorized{}
}

/*AdminCreateGoalUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateGoalUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateGoalUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateGoalUnauthorized) ToJSONString() string {
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

func (o *AdminCreateGoalUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateGoalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalForbidden creates a AdminCreateGoalForbidden with default headers values
func NewAdminCreateGoalForbidden() *AdminCreateGoalForbidden {
	return &AdminCreateGoalForbidden{}
}

/*AdminCreateGoalForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminCreateGoalForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateGoalForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateGoalForbidden) ToJSONString() string {
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

func (o *AdminCreateGoalForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateGoalForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalNotFound creates a AdminCreateGoalNotFound with default headers values
func NewAdminCreateGoalNotFound() *AdminCreateGoalNotFound {
	return &AdminCreateGoalNotFound{}
}

/*AdminCreateGoalNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminCreateGoalNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateGoalNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCreateGoalNotFound) ToJSONString() string {
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

func (o *AdminCreateGoalNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGoalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalConflict creates a AdminCreateGoalConflict with default headers values
func NewAdminCreateGoalConflict() *AdminCreateGoalConflict {
	return &AdminCreateGoalConflict{}
}

/*AdminCreateGoalConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99002</td><td>duplicate key error: {{message}}</td></tr></table>
*/
type AdminCreateGoalConflict struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateGoalConflict) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateGoalConflict) ToJSONString() string {
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

func (o *AdminCreateGoalConflict) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGoalConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalUnprocessableEntity creates a AdminCreateGoalUnprocessableEntity with default headers values
func NewAdminCreateGoalUnprocessableEntity() *AdminCreateGoalUnprocessableEntity {
	return &AdminCreateGoalUnprocessableEntity{}
}

/*AdminCreateGoalUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminCreateGoalUnprocessableEntity struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateGoalUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminCreateGoalUnprocessableEntity) ToJSONString() string {
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

func (o *AdminCreateGoalUnprocessableEntity) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateGoalUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateGoalInternalServerError creates a AdminCreateGoalInternalServerError with default headers values
func NewAdminCreateGoalInternalServerError() *AdminCreateGoalInternalServerError {
	return &AdminCreateGoalInternalServerError{}
}

/*AdminCreateGoalInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminCreateGoalInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateGoalInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminCreateGoalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateGoalInternalServerError) ToJSONString() string {
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

func (o *AdminCreateGoalInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateGoalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
