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

// AdminDeleteTiedChallengeReader is a Reader for the AdminDeleteTiedChallenge structure.
type AdminDeleteTiedChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteTiedChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteTiedChallengeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteTiedChallengeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteTiedChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteTiedChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteTiedChallengeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteTiedChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteTiedChallengeNoContent creates a AdminDeleteTiedChallengeNoContent with default headers values
func NewAdminDeleteTiedChallengeNoContent() *AdminDeleteTiedChallengeNoContent {
	return &AdminDeleteTiedChallengeNoContent{}
}

/*AdminDeleteTiedChallengeNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteTiedChallengeNoContent struct {
}

func (o *AdminDeleteTiedChallengeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeNoContent ", 204)
}

func (o *AdminDeleteTiedChallengeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteTiedChallengeBadRequest creates a AdminDeleteTiedChallengeBadRequest with default headers values
func NewAdminDeleteTiedChallengeBadRequest() *AdminDeleteTiedChallengeBadRequest {
	return &AdminDeleteTiedChallengeBadRequest{}
}

/*AdminDeleteTiedChallengeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminDeleteTiedChallengeBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteTiedChallengeBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteTiedChallengeBadRequest) ToJSONString() string {
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

func (o *AdminDeleteTiedChallengeBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteTiedChallengeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTiedChallengeUnauthorized creates a AdminDeleteTiedChallengeUnauthorized with default headers values
func NewAdminDeleteTiedChallengeUnauthorized() *AdminDeleteTiedChallengeUnauthorized {
	return &AdminDeleteTiedChallengeUnauthorized{}
}

/*AdminDeleteTiedChallengeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteTiedChallengeUnauthorized struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteTiedChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteTiedChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteTiedChallengeUnauthorized) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteTiedChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTiedChallengeForbidden creates a AdminDeleteTiedChallengeForbidden with default headers values
func NewAdminDeleteTiedChallengeForbidden() *AdminDeleteTiedChallengeForbidden {
	return &AdminDeleteTiedChallengeForbidden{}
}

/*AdminDeleteTiedChallengeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteTiedChallengeForbidden struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteTiedChallengeForbidden) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteTiedChallengeForbidden) ToJSONString() string {
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

func (o *AdminDeleteTiedChallengeForbidden) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteTiedChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTiedChallengeNotFound creates a AdminDeleteTiedChallengeNotFound with default headers values
func NewAdminDeleteTiedChallengeNotFound() *AdminDeleteTiedChallengeNotFound {
	return &AdminDeleteTiedChallengeNotFound{}
}

/*AdminDeleteTiedChallengeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminDeleteTiedChallengeNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteTiedChallengeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteTiedChallengeNotFound) ToJSONString() string {
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

func (o *AdminDeleteTiedChallengeNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteTiedChallengeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteTiedChallengeInternalServerError creates a AdminDeleteTiedChallengeInternalServerError with default headers values
func NewAdminDeleteTiedChallengeInternalServerError() *AdminDeleteTiedChallengeInternalServerError {
	return &AdminDeleteTiedChallengeInternalServerError{}
}

/*AdminDeleteTiedChallengeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminDeleteTiedChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteTiedChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied][%d] adminDeleteTiedChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteTiedChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteTiedChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteTiedChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
