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

// PublicListSchedulesByGoalReader is a Reader for the PublicListSchedulesByGoal structure.
type PublicListSchedulesByGoalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListSchedulesByGoalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListSchedulesByGoalOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListSchedulesByGoalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListSchedulesByGoalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListSchedulesByGoalForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListSchedulesByGoalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListSchedulesByGoalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListSchedulesByGoalOK creates a PublicListSchedulesByGoalOK with default headers values
func NewPublicListSchedulesByGoalOK() *PublicListSchedulesByGoalOK {
	return &PublicListSchedulesByGoalOK{}
}

/*PublicListSchedulesByGoalOK handles this case with default header values.

  OK
*/
type PublicListSchedulesByGoalOK struct {
	Payload *challengeclientmodels.ModelListScheduleByGoalResponse
}

func (o *PublicListSchedulesByGoalOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalOK) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalOK) GetPayload() *challengeclientmodels.ModelListScheduleByGoalResponse {
	return o.Payload
}

func (o *PublicListSchedulesByGoalOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListSchedulesByGoalBadRequest creates a PublicListSchedulesByGoalBadRequest with default headers values
func NewPublicListSchedulesByGoalBadRequest() *PublicListSchedulesByGoalBadRequest {
	return &PublicListSchedulesByGoalBadRequest{}
}

/*PublicListSchedulesByGoalBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type PublicListSchedulesByGoalBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicListSchedulesByGoalBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalBadRequest) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicListSchedulesByGoalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListSchedulesByGoalUnauthorized creates a PublicListSchedulesByGoalUnauthorized with default headers values
func NewPublicListSchedulesByGoalUnauthorized() *PublicListSchedulesByGoalUnauthorized {
	return &PublicListSchedulesByGoalUnauthorized{}
}

/*PublicListSchedulesByGoalUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicListSchedulesByGoalUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicListSchedulesByGoalUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalUnauthorized) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicListSchedulesByGoalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListSchedulesByGoalForbidden creates a PublicListSchedulesByGoalForbidden with default headers values
func NewPublicListSchedulesByGoalForbidden() *PublicListSchedulesByGoalForbidden {
	return &PublicListSchedulesByGoalForbidden{}
}

/*PublicListSchedulesByGoalForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicListSchedulesByGoalForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicListSchedulesByGoalForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalForbidden) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicListSchedulesByGoalForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListSchedulesByGoalNotFound creates a PublicListSchedulesByGoalNotFound with default headers values
func NewPublicListSchedulesByGoalNotFound() *PublicListSchedulesByGoalNotFound {
	return &PublicListSchedulesByGoalNotFound{}
}

/*PublicListSchedulesByGoalNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type PublicListSchedulesByGoalNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicListSchedulesByGoalNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalNotFound) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListSchedulesByGoalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListSchedulesByGoalInternalServerError creates a PublicListSchedulesByGoalInternalServerError with default headers values
func NewPublicListSchedulesByGoalInternalServerError() *PublicListSchedulesByGoalInternalServerError {
	return &PublicListSchedulesByGoalInternalServerError{}
}

/*PublicListSchedulesByGoalInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicListSchedulesByGoalInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicListSchedulesByGoalInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules][%d] publicListSchedulesByGoalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListSchedulesByGoalInternalServerError) ToJSONString() string {
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

func (o *PublicListSchedulesByGoalInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListSchedulesByGoalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
