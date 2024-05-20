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

// AdminUpdateGoalsReader is a Reader for the AdminUpdateGoals structure.
type AdminUpdateGoalsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateGoalsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateGoalsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateGoalsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateGoalsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateGoalsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateGoalsOK creates a AdminUpdateGoalsOK with default headers values
func NewAdminUpdateGoalsOK() *AdminUpdateGoalsOK {
	return &AdminUpdateGoalsOK{}
}

/*AdminUpdateGoalsOK handles this case with default header values.

  OK
*/
type AdminUpdateGoalsOK struct {
	Payload *challengeclientmodels.ModelGoalResponse
}

func (o *AdminUpdateGoalsOK) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminUpdateGoalsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateGoalsOK) ToJSONString() string {
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

func (o *AdminUpdateGoalsOK) GetPayload() *challengeclientmodels.ModelGoalResponse {
	return o.Payload
}

func (o *AdminUpdateGoalsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateGoalsBadRequest creates a AdminUpdateGoalsBadRequest with default headers values
func NewAdminUpdateGoalsBadRequest() *AdminUpdateGoalsBadRequest {
	return &AdminUpdateGoalsBadRequest{}
}

/*AdminUpdateGoalsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminUpdateGoalsBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateGoalsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminUpdateGoalsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateGoalsBadRequest) ToJSONString() string {
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

func (o *AdminUpdateGoalsBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGoalsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateGoalsNotFound creates a AdminUpdateGoalsNotFound with default headers values
func NewAdminUpdateGoalsNotFound() *AdminUpdateGoalsNotFound {
	return &AdminUpdateGoalsNotFound{}
}

/*AdminUpdateGoalsNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateGoalsNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateGoalsNotFound) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminUpdateGoalsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateGoalsNotFound) ToJSONString() string {
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

func (o *AdminUpdateGoalsNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGoalsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateGoalsInternalServerError creates a AdminUpdateGoalsInternalServerError with default headers values
func NewAdminUpdateGoalsInternalServerError() *AdminUpdateGoalsInternalServerError {
	return &AdminUpdateGoalsInternalServerError{}
}

/*AdminUpdateGoalsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateGoalsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateGoalsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}][%d] adminUpdateGoalsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateGoalsInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateGoalsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGoalsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
