// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

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

// AdminCreateChallengeReader is a Reader for the AdminCreateChallenge structure.
type AdminCreateChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateChallengeCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateChallengeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateChallengeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminCreateChallengeUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/challenges returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateChallengeCreated creates a AdminCreateChallengeCreated with default headers values
func NewAdminCreateChallengeCreated() *AdminCreateChallengeCreated {
	return &AdminCreateChallengeCreated{}
}

/*AdminCreateChallengeCreated handles this case with default header values.

  Created
*/
type AdminCreateChallengeCreated struct {
	Payload *challengeclientmodels.ModelChallengeResponse
}

func (o *AdminCreateChallengeCreated) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateChallengeCreated) ToJSONString() string {
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

func (o *AdminCreateChallengeCreated) GetPayload() *challengeclientmodels.ModelChallengeResponse {
	return o.Payload
}

func (o *AdminCreateChallengeCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelChallengeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChallengeBadRequest creates a AdminCreateChallengeBadRequest with default headers values
func NewAdminCreateChallengeBadRequest() *AdminCreateChallengeBadRequest {
	return &AdminCreateChallengeBadRequest{}
}

/*AdminCreateChallengeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminCreateChallengeBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateChallengeBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateChallengeBadRequest) ToJSONString() string {
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

func (o *AdminCreateChallengeBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChallengeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateChallengeUnauthorized creates a AdminCreateChallengeUnauthorized with default headers values
func NewAdminCreateChallengeUnauthorized() *AdminCreateChallengeUnauthorized {
	return &AdminCreateChallengeUnauthorized{}
}

/*AdminCreateChallengeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateChallengeUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminCreateChallengeUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateChallengeForbidden creates a AdminCreateChallengeForbidden with default headers values
func NewAdminCreateChallengeForbidden() *AdminCreateChallengeForbidden {
	return &AdminCreateChallengeForbidden{}
}

/*AdminCreateChallengeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminCreateChallengeForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminCreateChallengeForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateChallengeForbidden) ToJSONString() string {
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

func (o *AdminCreateChallengeForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminCreateChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateChallengeConflict creates a AdminCreateChallengeConflict with default headers values
func NewAdminCreateChallengeConflict() *AdminCreateChallengeConflict {
	return &AdminCreateChallengeConflict{}
}

/*AdminCreateChallengeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99002</td><td>duplicate key error: {{message}}</td></tr></table>
*/
type AdminCreateChallengeConflict struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateChallengeConflict) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateChallengeConflict) ToJSONString() string {
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

func (o *AdminCreateChallengeConflict) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChallengeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateChallengeUnprocessableEntity creates a AdminCreateChallengeUnprocessableEntity with default headers values
func NewAdminCreateChallengeUnprocessableEntity() *AdminCreateChallengeUnprocessableEntity {
	return &AdminCreateChallengeUnprocessableEntity{}
}

/*AdminCreateChallengeUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>99003</td><td>challenge validation error: {{message}}</td></tr></table>
*/
type AdminCreateChallengeUnprocessableEntity struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateChallengeUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminCreateChallengeUnprocessableEntity) ToJSONString() string {
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

func (o *AdminCreateChallengeUnprocessableEntity) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChallengeUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateChallengeInternalServerError creates a AdminCreateChallengeInternalServerError with default headers values
func NewAdminCreateChallengeInternalServerError() *AdminCreateChallengeInternalServerError {
	return &AdminCreateChallengeInternalServerError{}
}

/*AdminCreateChallengeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminCreateChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminCreateChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges][%d] adminCreateChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminCreateChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
