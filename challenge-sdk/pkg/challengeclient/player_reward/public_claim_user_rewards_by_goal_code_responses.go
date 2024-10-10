// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player_reward

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

// PublicClaimUserRewardsByGoalCodeReader is a Reader for the PublicClaimUserRewardsByGoalCode structure.
type PublicClaimUserRewardsByGoalCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicClaimUserRewardsByGoalCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicClaimUserRewardsByGoalCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicClaimUserRewardsByGoalCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicClaimUserRewardsByGoalCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicClaimUserRewardsByGoalCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicClaimUserRewardsByGoalCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicClaimUserRewardsByGoalCodeUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicClaimUserRewardsByGoalCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicClaimUserRewardsByGoalCodeOK creates a PublicClaimUserRewardsByGoalCodeOK with default headers values
func NewPublicClaimUserRewardsByGoalCodeOK() *PublicClaimUserRewardsByGoalCodeOK {
	return &PublicClaimUserRewardsByGoalCodeOK{}
}

/*PublicClaimUserRewardsByGoalCodeOK handles this case with default header values.

  OK
*/
type PublicClaimUserRewardsByGoalCodeOK struct {
	Payload []*challengeclientmodels.ModelUserReward
}

func (o *PublicClaimUserRewardsByGoalCodeOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeOK) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeOK) GetPayload() []*challengeclientmodels.ModelUserReward {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicClaimUserRewardsByGoalCodeBadRequest creates a PublicClaimUserRewardsByGoalCodeBadRequest with default headers values
func NewPublicClaimUserRewardsByGoalCodeBadRequest() *PublicClaimUserRewardsByGoalCodeBadRequest {
	return &PublicClaimUserRewardsByGoalCodeBadRequest{}
}

/*PublicClaimUserRewardsByGoalCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsByGoalCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeBadRequest) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardsByGoalCodeUnauthorized creates a PublicClaimUserRewardsByGoalCodeUnauthorized with default headers values
func NewPublicClaimUserRewardsByGoalCodeUnauthorized() *PublicClaimUserRewardsByGoalCodeUnauthorized {
	return &PublicClaimUserRewardsByGoalCodeUnauthorized{}
}

/*PublicClaimUserRewardsByGoalCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsByGoalCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeUnauthorized) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardsByGoalCodeForbidden creates a PublicClaimUserRewardsByGoalCodeForbidden with default headers values
func NewPublicClaimUserRewardsByGoalCodeForbidden() *PublicClaimUserRewardsByGoalCodeForbidden {
	return &PublicClaimUserRewardsByGoalCodeForbidden{}
}

/*PublicClaimUserRewardsByGoalCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsByGoalCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeForbidden) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardsByGoalCodeNotFound creates a PublicClaimUserRewardsByGoalCodeNotFound with default headers values
func NewPublicClaimUserRewardsByGoalCodeNotFound() *PublicClaimUserRewardsByGoalCodeNotFound {
	return &PublicClaimUserRewardsByGoalCodeNotFound{}
}

/*PublicClaimUserRewardsByGoalCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsByGoalCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeNotFound) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardsByGoalCodeUnprocessableEntity creates a PublicClaimUserRewardsByGoalCodeUnprocessableEntity with default headers values
func NewPublicClaimUserRewardsByGoalCodeUnprocessableEntity() *PublicClaimUserRewardsByGoalCodeUnprocessableEntity {
	return &PublicClaimUserRewardsByGoalCodeUnprocessableEntity{}
}

/*PublicClaimUserRewardsByGoalCodeUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeUnprocessableEntity struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicClaimUserRewardsByGoalCodeUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeUnprocessableEntity) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeUnprocessableEntity) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicClaimUserRewardsByGoalCodeInternalServerError creates a PublicClaimUserRewardsByGoalCodeInternalServerError with default headers values
func NewPublicClaimUserRewardsByGoalCodeInternalServerError() *PublicClaimUserRewardsByGoalCodeInternalServerError {
	return &PublicClaimUserRewardsByGoalCodeInternalServerError{}
}

/*PublicClaimUserRewardsByGoalCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicClaimUserRewardsByGoalCodeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicClaimUserRewardsByGoalCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim][%d] publicClaimUserRewardsByGoalCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicClaimUserRewardsByGoalCodeInternalServerError) ToJSONString() string {
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

func (o *PublicClaimUserRewardsByGoalCodeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicClaimUserRewardsByGoalCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
