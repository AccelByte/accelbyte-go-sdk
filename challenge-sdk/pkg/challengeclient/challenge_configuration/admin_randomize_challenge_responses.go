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

// AdminRandomizeChallengeReader is a Reader for the AdminRandomizeChallenge structure.
type AdminRandomizeChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRandomizeChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRandomizeChallengeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRandomizeChallengeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRandomizeChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRandomizeChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRandomizeChallengeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRandomizeChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRandomizeChallengeOK creates a AdminRandomizeChallengeOK with default headers values
func NewAdminRandomizeChallengeOK() *AdminRandomizeChallengeOK {
	return &AdminRandomizeChallengeOK{}
}

/*AdminRandomizeChallengeOK handles this case with default header values.

  OK
*/
type AdminRandomizeChallengeOK struct {
	Payload []*challengeclientmodels.ModelSchedule
}

func (o *AdminRandomizeChallengeOK) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminRandomizeChallengeOK) ToJSONString() string {
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

func (o *AdminRandomizeChallengeOK) GetPayload() []*challengeclientmodels.ModelSchedule {
	return o.Payload
}

func (o *AdminRandomizeChallengeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRandomizeChallengeBadRequest creates a AdminRandomizeChallengeBadRequest with default headers values
func NewAdminRandomizeChallengeBadRequest() *AdminRandomizeChallengeBadRequest {
	return &AdminRandomizeChallengeBadRequest{}
}

/*AdminRandomizeChallengeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminRandomizeChallengeBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminRandomizeChallengeBadRequest) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRandomizeChallengeBadRequest) ToJSONString() string {
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

func (o *AdminRandomizeChallengeBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminRandomizeChallengeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRandomizeChallengeUnauthorized creates a AdminRandomizeChallengeUnauthorized with default headers values
func NewAdminRandomizeChallengeUnauthorized() *AdminRandomizeChallengeUnauthorized {
	return &AdminRandomizeChallengeUnauthorized{}
}

/*AdminRandomizeChallengeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRandomizeChallengeUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminRandomizeChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRandomizeChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminRandomizeChallengeUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminRandomizeChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRandomizeChallengeForbidden creates a AdminRandomizeChallengeForbidden with default headers values
func NewAdminRandomizeChallengeForbidden() *AdminRandomizeChallengeForbidden {
	return &AdminRandomizeChallengeForbidden{}
}

/*AdminRandomizeChallengeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminRandomizeChallengeForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminRandomizeChallengeForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRandomizeChallengeForbidden) ToJSONString() string {
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

func (o *AdminRandomizeChallengeForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminRandomizeChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRandomizeChallengeNotFound creates a AdminRandomizeChallengeNotFound with default headers values
func NewAdminRandomizeChallengeNotFound() *AdminRandomizeChallengeNotFound {
	return &AdminRandomizeChallengeNotFound{}
}

/*AdminRandomizeChallengeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminRandomizeChallengeNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminRandomizeChallengeNotFound) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRandomizeChallengeNotFound) ToJSONString() string {
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

func (o *AdminRandomizeChallengeNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRandomizeChallengeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRandomizeChallengeInternalServerError creates a AdminRandomizeChallengeInternalServerError with default headers values
func NewAdminRandomizeChallengeInternalServerError() *AdminRandomizeChallengeInternalServerError {
	return &AdminRandomizeChallengeInternalServerError{}
}

/*AdminRandomizeChallengeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminRandomizeChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminRandomizeChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize][%d] adminRandomizeChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRandomizeChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminRandomizeChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRandomizeChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
