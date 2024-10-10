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

// AdminGetGoalsReader is a Reader for the AdminGetGoals structure.
type AdminGetGoalsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetGoalsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetGoalsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetGoalsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetGoalsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetGoalsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetGoalsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetGoalsOK creates a AdminGetGoalsOK with default headers values
func NewAdminGetGoalsOK() *AdminGetGoalsOK {
	return &AdminGetGoalsOK{}
}

/*AdminGetGoalsOK handles this case with default header values.

  OK
*/
type AdminGetGoalsOK struct {
	Payload *challengeclientmodels.ModelGetGoalsResponse
}

func (o *AdminGetGoalsOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminGetGoalsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetGoalsOK) ToJSONString() string {
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

func (o *AdminGetGoalsOK) GetPayload() *challengeclientmodels.ModelGetGoalsResponse {
	return o.Payload
}

func (o *AdminGetGoalsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelGetGoalsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGoalsUnauthorized creates a AdminGetGoalsUnauthorized with default headers values
func NewAdminGetGoalsUnauthorized() *AdminGetGoalsUnauthorized {
	return &AdminGetGoalsUnauthorized{}
}

/*AdminGetGoalsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetGoalsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetGoalsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminGetGoalsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetGoalsUnauthorized) ToJSONString() string {
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

func (o *AdminGetGoalsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetGoalsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetGoalsForbidden creates a AdminGetGoalsForbidden with default headers values
func NewAdminGetGoalsForbidden() *AdminGetGoalsForbidden {
	return &AdminGetGoalsForbidden{}
}

/*AdminGetGoalsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetGoalsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetGoalsForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminGetGoalsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetGoalsForbidden) ToJSONString() string {
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

func (o *AdminGetGoalsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetGoalsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetGoalsNotFound creates a AdminGetGoalsNotFound with default headers values
func NewAdminGetGoalsNotFound() *AdminGetGoalsNotFound {
	return &AdminGetGoalsNotFound{}
}

/*AdminGetGoalsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetGoalsNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetGoalsNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminGetGoalsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetGoalsNotFound) ToJSONString() string {
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

func (o *AdminGetGoalsNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetGoalsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetGoalsInternalServerError creates a AdminGetGoalsInternalServerError with default headers values
func NewAdminGetGoalsInternalServerError() *AdminGetGoalsInternalServerError {
	return &AdminGetGoalsInternalServerError{}
}

/*AdminGetGoalsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetGoalsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetGoalsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] adminGetGoalsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetGoalsInternalServerError) ToJSONString() string {
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

func (o *AdminGetGoalsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetGoalsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
