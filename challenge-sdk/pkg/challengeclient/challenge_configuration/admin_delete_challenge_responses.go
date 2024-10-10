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

// AdminDeleteChallengeReader is a Reader for the AdminDeleteChallenge structure.
type AdminDeleteChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteChallengeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteChallengeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteChallengeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteChallengeNoContent creates a AdminDeleteChallengeNoContent with default headers values
func NewAdminDeleteChallengeNoContent() *AdminDeleteChallengeNoContent {
	return &AdminDeleteChallengeNoContent{}
}

/*AdminDeleteChallengeNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteChallengeNoContent struct {
}

func (o *AdminDeleteChallengeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeNoContent ", 204)
}

func (o *AdminDeleteChallengeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteChallengeBadRequest creates a AdminDeleteChallengeBadRequest with default headers values
func NewAdminDeleteChallengeBadRequest() *AdminDeleteChallengeBadRequest {
	return &AdminDeleteChallengeBadRequest{}
}

/*AdminDeleteChallengeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type AdminDeleteChallengeBadRequest struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteChallengeBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteChallengeBadRequest) ToJSONString() string {
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

func (o *AdminDeleteChallengeBadRequest) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChallengeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteChallengeUnauthorized creates a AdminDeleteChallengeUnauthorized with default headers values
func NewAdminDeleteChallengeUnauthorized() *AdminDeleteChallengeUnauthorized {
	return &AdminDeleteChallengeUnauthorized{}
}

/*AdminDeleteChallengeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteChallengeUnauthorized struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteChallengeUnauthorized) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteChallengeForbidden creates a AdminDeleteChallengeForbidden with default headers values
func NewAdminDeleteChallengeForbidden() *AdminDeleteChallengeForbidden {
	return &AdminDeleteChallengeForbidden{}
}

/*AdminDeleteChallengeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteChallengeForbidden struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteChallengeForbidden) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteChallengeForbidden) ToJSONString() string {
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

func (o *AdminDeleteChallengeForbidden) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteChallengeNotFound creates a AdminDeleteChallengeNotFound with default headers values
func NewAdminDeleteChallengeNotFound() *AdminDeleteChallengeNotFound {
	return &AdminDeleteChallengeNotFound{}
}

/*AdminDeleteChallengeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminDeleteChallengeNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteChallengeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteChallengeNotFound) ToJSONString() string {
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

func (o *AdminDeleteChallengeNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChallengeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteChallengeInternalServerError creates a AdminDeleteChallengeInternalServerError with default headers values
func NewAdminDeleteChallengeInternalServerError() *AdminDeleteChallengeInternalServerError {
	return &AdminDeleteChallengeInternalServerError{}
}

/*AdminDeleteChallengeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminDeleteChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminDeleteChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminDeleteChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
