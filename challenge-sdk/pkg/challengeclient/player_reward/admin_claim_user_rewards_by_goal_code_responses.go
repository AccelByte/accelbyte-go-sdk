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

// AdminClaimUserRewardsByGoalCodeReader is a Reader for the AdminClaimUserRewardsByGoalCode structure.
type AdminClaimUserRewardsByGoalCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminClaimUserRewardsByGoalCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminClaimUserRewardsByGoalCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminClaimUserRewardsByGoalCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminClaimUserRewardsByGoalCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminClaimUserRewardsByGoalCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminClaimUserRewardsByGoalCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminClaimUserRewardsByGoalCodeUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminClaimUserRewardsByGoalCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminClaimUserRewardsByGoalCodeOK creates a AdminClaimUserRewardsByGoalCodeOK with default headers values
func NewAdminClaimUserRewardsByGoalCodeOK() *AdminClaimUserRewardsByGoalCodeOK {
	return &AdminClaimUserRewardsByGoalCodeOK{}
}

/*AdminClaimUserRewardsByGoalCodeOK handles this case with default header values.

  OK
*/
type AdminClaimUserRewardsByGoalCodeOK struct {
	Payload []*challengeclientmodels.ModelUserReward
}

func (o *AdminClaimUserRewardsByGoalCodeOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeOK) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeOK) GetPayload() []*challengeclientmodels.ModelUserReward {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeBadRequest creates a AdminClaimUserRewardsByGoalCodeBadRequest with default headers values
func NewAdminClaimUserRewardsByGoalCodeBadRequest() *AdminClaimUserRewardsByGoalCodeBadRequest {
	return &AdminClaimUserRewardsByGoalCodeBadRequest{}
}

/*AdminClaimUserRewardsByGoalCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsByGoalCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeBadRequest) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeUnauthorized creates a AdminClaimUserRewardsByGoalCodeUnauthorized with default headers values
func NewAdminClaimUserRewardsByGoalCodeUnauthorized() *AdminClaimUserRewardsByGoalCodeUnauthorized {
	return &AdminClaimUserRewardsByGoalCodeUnauthorized{}
}

/*AdminClaimUserRewardsByGoalCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsByGoalCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeUnauthorized) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeForbidden creates a AdminClaimUserRewardsByGoalCodeForbidden with default headers values
func NewAdminClaimUserRewardsByGoalCodeForbidden() *AdminClaimUserRewardsByGoalCodeForbidden {
	return &AdminClaimUserRewardsByGoalCodeForbidden{}
}

/*AdminClaimUserRewardsByGoalCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsByGoalCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeForbidden) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeNotFound creates a AdminClaimUserRewardsByGoalCodeNotFound with default headers values
func NewAdminClaimUserRewardsByGoalCodeNotFound() *AdminClaimUserRewardsByGoalCodeNotFound {
	return &AdminClaimUserRewardsByGoalCodeNotFound{}
}

/*AdminClaimUserRewardsByGoalCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsByGoalCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeNotFound) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeUnprocessableEntity creates a AdminClaimUserRewardsByGoalCodeUnprocessableEntity with default headers values
func NewAdminClaimUserRewardsByGoalCodeUnprocessableEntity() *AdminClaimUserRewardsByGoalCodeUnprocessableEntity {
	return &AdminClaimUserRewardsByGoalCodeUnprocessableEntity{}
}

/*AdminClaimUserRewardsByGoalCodeUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99004</td><td>unprocessable entity: {{message}}</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeUnprocessableEntity struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminClaimUserRewardsByGoalCodeUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeUnprocessableEntity) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeUnprocessableEntity) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminClaimUserRewardsByGoalCodeInternalServerError creates a AdminClaimUserRewardsByGoalCodeInternalServerError with default headers values
func NewAdminClaimUserRewardsByGoalCodeInternalServerError() *AdminClaimUserRewardsByGoalCodeInternalServerError {
	return &AdminClaimUserRewardsByGoalCodeInternalServerError{}
}

/*AdminClaimUserRewardsByGoalCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminClaimUserRewardsByGoalCodeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminClaimUserRewardsByGoalCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim][%d] adminClaimUserRewardsByGoalCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminClaimUserRewardsByGoalCodeInternalServerError) ToJSONString() string {
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

func (o *AdminClaimUserRewardsByGoalCodeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminClaimUserRewardsByGoalCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
