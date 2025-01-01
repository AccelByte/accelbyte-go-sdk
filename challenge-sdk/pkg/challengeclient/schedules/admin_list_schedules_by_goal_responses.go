// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package schedules

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

// AdminListSchedulesByGoalReader is a Reader for the AdminListSchedulesByGoal structure.
type AdminListSchedulesByGoalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListSchedulesByGoalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListSchedulesByGoalOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListSchedulesByGoalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListSchedulesByGoalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListSchedulesByGoalForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListSchedulesByGoalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListSchedulesByGoalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListSchedulesByGoalOK creates a AdminListSchedulesByGoalOK with default headers values
func NewAdminListSchedulesByGoalOK() *AdminListSchedulesByGoalOK {
	return &AdminListSchedulesByGoalOK{}
}

/*AdminListSchedulesByGoalOK handles this case with default header values.

  OK
*/
type AdminListSchedulesByGoalOK struct {
	Payload *challengeclientmodels.ModelListScheduleByGoalResponse
}

func (o *AdminListSchedulesByGoalOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalOK) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalOK) GetPayload() *challengeclientmodels.ModelListScheduleByGoalResponse {
	return o.Payload
}

func (o *AdminListSchedulesByGoalOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelListScheduleByGoalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListSchedulesByGoalBadRequest creates a AdminListSchedulesByGoalBadRequest with default headers values
func NewAdminListSchedulesByGoalBadRequest() *AdminListSchedulesByGoalBadRequest {
	return &AdminListSchedulesByGoalBadRequest{}
}

/*AdminListSchedulesByGoalBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminListSchedulesByGoalBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminListSchedulesByGoalBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalBadRequest) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminListSchedulesByGoalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListSchedulesByGoalUnauthorized creates a AdminListSchedulesByGoalUnauthorized with default headers values
func NewAdminListSchedulesByGoalUnauthorized() *AdminListSchedulesByGoalUnauthorized {
	return &AdminListSchedulesByGoalUnauthorized{}
}

/*AdminListSchedulesByGoalUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListSchedulesByGoalUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminListSchedulesByGoalUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalUnauthorized) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminListSchedulesByGoalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListSchedulesByGoalForbidden creates a AdminListSchedulesByGoalForbidden with default headers values
func NewAdminListSchedulesByGoalForbidden() *AdminListSchedulesByGoalForbidden {
	return &AdminListSchedulesByGoalForbidden{}
}

/*AdminListSchedulesByGoalForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminListSchedulesByGoalForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminListSchedulesByGoalForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalForbidden) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminListSchedulesByGoalForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListSchedulesByGoalNotFound creates a AdminListSchedulesByGoalNotFound with default headers values
func NewAdminListSchedulesByGoalNotFound() *AdminListSchedulesByGoalNotFound {
	return &AdminListSchedulesByGoalNotFound{}
}

/*AdminListSchedulesByGoalNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminListSchedulesByGoalNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminListSchedulesByGoalNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalNotFound) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListSchedulesByGoalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListSchedulesByGoalInternalServerError creates a AdminListSchedulesByGoalInternalServerError with default headers values
func NewAdminListSchedulesByGoalInternalServerError() *AdminListSchedulesByGoalInternalServerError {
	return &AdminListSchedulesByGoalInternalServerError{}
}

/*AdminListSchedulesByGoalInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminListSchedulesByGoalInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminListSchedulesByGoalInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] adminListSchedulesByGoalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListSchedulesByGoalInternalServerError) ToJSONString() string {
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

func (o *AdminListSchedulesByGoalInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListSchedulesByGoalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
