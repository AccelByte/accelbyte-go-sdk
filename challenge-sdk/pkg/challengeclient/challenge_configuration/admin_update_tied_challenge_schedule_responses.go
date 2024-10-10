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

// AdminUpdateTiedChallengeScheduleReader is a Reader for the AdminUpdateTiedChallengeSchedule structure.
type AdminUpdateTiedChallengeScheduleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateTiedChallengeScheduleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateTiedChallengeScheduleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateTiedChallengeScheduleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateTiedChallengeScheduleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateTiedChallengeScheduleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateTiedChallengeScheduleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateTiedChallengeScheduleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateTiedChallengeScheduleOK creates a AdminUpdateTiedChallengeScheduleOK with default headers values
func NewAdminUpdateTiedChallengeScheduleOK() *AdminUpdateTiedChallengeScheduleOK {
	return &AdminUpdateTiedChallengeScheduleOK{}
}

/*AdminUpdateTiedChallengeScheduleOK handles this case with default header values.

  OK
*/
type AdminUpdateTiedChallengeScheduleOK struct {
	Payload *challengeclientmodels.ModelChallengeResponse
}

func (o *AdminUpdateTiedChallengeScheduleOK) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleOK) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleOK) GetPayload() *challengeclientmodels.ModelChallengeResponse {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTiedChallengeScheduleBadRequest creates a AdminUpdateTiedChallengeScheduleBadRequest with default headers values
func NewAdminUpdateTiedChallengeScheduleBadRequest() *AdminUpdateTiedChallengeScheduleBadRequest {
	return &AdminUpdateTiedChallengeScheduleBadRequest{}
}

/*AdminUpdateTiedChallengeScheduleBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminUpdateTiedChallengeScheduleBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateTiedChallengeScheduleBadRequest) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleBadRequest) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTiedChallengeScheduleUnauthorized creates a AdminUpdateTiedChallengeScheduleUnauthorized with default headers values
func NewAdminUpdateTiedChallengeScheduleUnauthorized() *AdminUpdateTiedChallengeScheduleUnauthorized {
	return &AdminUpdateTiedChallengeScheduleUnauthorized{}
}

/*AdminUpdateTiedChallengeScheduleUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateTiedChallengeScheduleUnauthorized struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateTiedChallengeScheduleUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleUnauthorized) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTiedChallengeScheduleForbidden creates a AdminUpdateTiedChallengeScheduleForbidden with default headers values
func NewAdminUpdateTiedChallengeScheduleForbidden() *AdminUpdateTiedChallengeScheduleForbidden {
	return &AdminUpdateTiedChallengeScheduleForbidden{}
}

/*AdminUpdateTiedChallengeScheduleForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateTiedChallengeScheduleForbidden struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateTiedChallengeScheduleForbidden) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleForbidden) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleForbidden) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTiedChallengeScheduleNotFound creates a AdminUpdateTiedChallengeScheduleNotFound with default headers values
func NewAdminUpdateTiedChallengeScheduleNotFound() *AdminUpdateTiedChallengeScheduleNotFound {
	return &AdminUpdateTiedChallengeScheduleNotFound{}
}

/*AdminUpdateTiedChallengeScheduleNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateTiedChallengeScheduleNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateTiedChallengeScheduleNotFound) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleNotFound) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateTiedChallengeScheduleInternalServerError creates a AdminUpdateTiedChallengeScheduleInternalServerError with default headers values
func NewAdminUpdateTiedChallengeScheduleInternalServerError() *AdminUpdateTiedChallengeScheduleInternalServerError {
	return &AdminUpdateTiedChallengeScheduleInternalServerError{}
}

/*AdminUpdateTiedChallengeScheduleInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateTiedChallengeScheduleInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminUpdateTiedChallengeScheduleInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule][%d] adminUpdateTiedChallengeScheduleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateTiedChallengeScheduleInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateTiedChallengeScheduleInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateTiedChallengeScheduleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
