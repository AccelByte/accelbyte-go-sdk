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

// AdminMoveGoalToSlotReader is a Reader for the AdminMoveGoalToSlot structure.
type AdminMoveGoalToSlotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminMoveGoalToSlotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminMoveGoalToSlotNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminMoveGoalToSlotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminMoveGoalToSlotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminMoveGoalToSlotForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminMoveGoalToSlotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminMoveGoalToSlotUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminMoveGoalToSlotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminMoveGoalToSlotNoContent creates a AdminMoveGoalToSlotNoContent with default headers values
func NewAdminMoveGoalToSlotNoContent() *AdminMoveGoalToSlotNoContent {
	return &AdminMoveGoalToSlotNoContent{}
}

/*AdminMoveGoalToSlotNoContent handles this case with default header values.

  goal moved successfully
*/
type AdminMoveGoalToSlotNoContent struct {
}

func (o *AdminMoveGoalToSlotNoContent) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotNoContent ", 204)
}

func (o *AdminMoveGoalToSlotNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminMoveGoalToSlotBadRequest creates a AdminMoveGoalToSlotBadRequest with default headers values
func NewAdminMoveGoalToSlotBadRequest() *AdminMoveGoalToSlotBadRequest {
	return &AdminMoveGoalToSlotBadRequest{}
}

/*AdminMoveGoalToSlotBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminMoveGoalToSlotBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminMoveGoalToSlotBadRequest) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotBadRequest) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMoveGoalToSlotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMoveGoalToSlotUnauthorized creates a AdminMoveGoalToSlotUnauthorized with default headers values
func NewAdminMoveGoalToSlotUnauthorized() *AdminMoveGoalToSlotUnauthorized {
	return &AdminMoveGoalToSlotUnauthorized{}
}

/*AdminMoveGoalToSlotUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminMoveGoalToSlotUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminMoveGoalToSlotUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotUnauthorized) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminMoveGoalToSlotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMoveGoalToSlotForbidden creates a AdminMoveGoalToSlotForbidden with default headers values
func NewAdminMoveGoalToSlotForbidden() *AdminMoveGoalToSlotForbidden {
	return &AdminMoveGoalToSlotForbidden{}
}

/*AdminMoveGoalToSlotForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminMoveGoalToSlotForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminMoveGoalToSlotForbidden) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotForbidden) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminMoveGoalToSlotForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMoveGoalToSlotNotFound creates a AdminMoveGoalToSlotNotFound with default headers values
func NewAdminMoveGoalToSlotNotFound() *AdminMoveGoalToSlotNotFound {
	return &AdminMoveGoalToSlotNotFound{}
}

/*AdminMoveGoalToSlotNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminMoveGoalToSlotNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminMoveGoalToSlotNotFound) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotNotFound) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMoveGoalToSlotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMoveGoalToSlotUnprocessableEntity creates a AdminMoveGoalToSlotUnprocessableEntity with default headers values
func NewAdminMoveGoalToSlotUnprocessableEntity() *AdminMoveGoalToSlotUnprocessableEntity {
	return &AdminMoveGoalToSlotUnprocessableEntity{}
}

/*AdminMoveGoalToSlotUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminMoveGoalToSlotUnprocessableEntity struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminMoveGoalToSlotUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotUnprocessableEntity) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotUnprocessableEntity) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMoveGoalToSlotUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMoveGoalToSlotInternalServerError creates a AdminMoveGoalToSlotInternalServerError with default headers values
func NewAdminMoveGoalToSlotInternalServerError() *AdminMoveGoalToSlotInternalServerError {
	return &AdminMoveGoalToSlotInternalServerError{}
}

/*AdminMoveGoalToSlotInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminMoveGoalToSlotInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminMoveGoalToSlotInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/slots][%d] adminMoveGoalToSlotInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminMoveGoalToSlotInternalServerError) ToJSONString() string {
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

func (o *AdminMoveGoalToSlotInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMoveGoalToSlotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
