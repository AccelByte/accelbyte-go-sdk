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

// AdminDeleteGoalReader is a Reader for the AdminDeleteGoal structure.
type AdminDeleteGoalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGoalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGoalNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteGoalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteGoalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteGoalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGoalNoContent creates a AdminDeleteGoalNoContent with default headers values
func NewAdminDeleteGoalNoContent() *AdminDeleteGoalNoContent {
	return &AdminDeleteGoalNoContent{}
}

/*AdminDeleteGoalNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteGoalNoContent struct {
}

func (o *AdminDeleteGoalNoContent) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminDeleteGoalNoContent ", 204)
}

func (o *AdminDeleteGoalNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteGoalBadRequest creates a AdminDeleteGoalBadRequest with default headers values
func NewAdminDeleteGoalBadRequest() *AdminDeleteGoalBadRequest {
	return &AdminDeleteGoalBadRequest{}
}

/*AdminDeleteGoalBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminDeleteGoalBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteGoalBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminDeleteGoalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteGoalBadRequest) ToJSONString() string {
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

func (o *AdminDeleteGoalBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGoalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGoalNotFound creates a AdminDeleteGoalNotFound with default headers values
func NewAdminDeleteGoalNotFound() *AdminDeleteGoalNotFound {
	return &AdminDeleteGoalNotFound{}
}

/*AdminDeleteGoalNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminDeleteGoalNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteGoalNotFound) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminDeleteGoalNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteGoalNotFound) ToJSONString() string {
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

func (o *AdminDeleteGoalNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGoalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGoalInternalServerError creates a AdminDeleteGoalInternalServerError with default headers values
func NewAdminDeleteGoalInternalServerError() *AdminDeleteGoalInternalServerError {
	return &AdminDeleteGoalInternalServerError{}
}

/*AdminDeleteGoalInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminDeleteGoalInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteGoalInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminDeleteGoalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteGoalInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteGoalInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGoalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
