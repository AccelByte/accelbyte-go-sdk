// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_list

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

// PublicGetScheduledGoalsReader is a Reader for the PublicGetScheduledGoals structure.
type PublicGetScheduledGoalsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetScheduledGoalsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetScheduledGoalsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetScheduledGoalsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetScheduledGoalsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetScheduledGoalsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetScheduledGoalsOK creates a PublicGetScheduledGoalsOK with default headers values
func NewPublicGetScheduledGoalsOK() *PublicGetScheduledGoalsOK {
	return &PublicGetScheduledGoalsOK{}
}

/*PublicGetScheduledGoalsOK handles this case with default header values.

  OK
*/
type PublicGetScheduledGoalsOK struct {
	Payload *challengeclientmodels.ModelGetGoalsResponse
}

func (o *PublicGetScheduledGoalsOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] publicGetScheduledGoalsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetScheduledGoalsOK) ToJSONString() string {
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

func (o *PublicGetScheduledGoalsOK) GetPayload() *challengeclientmodels.ModelGetGoalsResponse {
	return o.Payload
}

func (o *PublicGetScheduledGoalsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetScheduledGoalsUnauthorized creates a PublicGetScheduledGoalsUnauthorized with default headers values
func NewPublicGetScheduledGoalsUnauthorized() *PublicGetScheduledGoalsUnauthorized {
	return &PublicGetScheduledGoalsUnauthorized{}
}

/*PublicGetScheduledGoalsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetScheduledGoalsUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetScheduledGoalsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] publicGetScheduledGoalsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetScheduledGoalsUnauthorized) ToJSONString() string {
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

func (o *PublicGetScheduledGoalsUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetScheduledGoalsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetScheduledGoalsForbidden creates a PublicGetScheduledGoalsForbidden with default headers values
func NewPublicGetScheduledGoalsForbidden() *PublicGetScheduledGoalsForbidden {
	return &PublicGetScheduledGoalsForbidden{}
}

/*PublicGetScheduledGoalsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetScheduledGoalsForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetScheduledGoalsForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] publicGetScheduledGoalsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetScheduledGoalsForbidden) ToJSONString() string {
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

func (o *PublicGetScheduledGoalsForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetScheduledGoalsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetScheduledGoalsInternalServerError creates a PublicGetScheduledGoalsInternalServerError with default headers values
func NewPublicGetScheduledGoalsInternalServerError() *PublicGetScheduledGoalsInternalServerError {
	return &PublicGetScheduledGoalsInternalServerError{}
}

/*PublicGetScheduledGoalsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicGetScheduledGoalsInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicGetScheduledGoalsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals][%d] publicGetScheduledGoalsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetScheduledGoalsInternalServerError) ToJSONString() string {
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

func (o *PublicGetScheduledGoalsInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetScheduledGoalsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
