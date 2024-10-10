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

// AdminGetChallengeReader is a Reader for the AdminGetChallenge structure.
type AdminGetChallengeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetChallengeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetChallengeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetChallengeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetChallengeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetChallengeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetChallengeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetChallengeOK creates a AdminGetChallengeOK with default headers values
func NewAdminGetChallengeOK() *AdminGetChallengeOK {
	return &AdminGetChallengeOK{}
}

/*AdminGetChallengeOK handles this case with default header values.

  OK
*/
type AdminGetChallengeOK struct {
	Payload *challengeclientmodels.ModelChallengeResponse
}

func (o *AdminGetChallengeOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminGetChallengeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetChallengeOK) ToJSONString() string {
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

func (o *AdminGetChallengeOK) GetPayload() *challengeclientmodels.ModelChallengeResponse {
	return o.Payload
}

func (o *AdminGetChallengeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeUnauthorized creates a AdminGetChallengeUnauthorized with default headers values
func NewAdminGetChallengeUnauthorized() *AdminGetChallengeUnauthorized {
	return &AdminGetChallengeUnauthorized{}
}

/*AdminGetChallengeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetChallengeUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetChallengeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminGetChallengeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetChallengeUnauthorized) ToJSONString() string {
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

func (o *AdminGetChallengeUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetChallengeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeForbidden creates a AdminGetChallengeForbidden with default headers values
func NewAdminGetChallengeForbidden() *AdminGetChallengeForbidden {
	return &AdminGetChallengeForbidden{}
}

/*AdminGetChallengeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetChallengeForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetChallengeForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminGetChallengeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetChallengeForbidden) ToJSONString() string {
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

func (o *AdminGetChallengeForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetChallengeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeNotFound creates a AdminGetChallengeNotFound with default headers values
func NewAdminGetChallengeNotFound() *AdminGetChallengeNotFound {
	return &AdminGetChallengeNotFound{}
}

/*AdminGetChallengeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type AdminGetChallengeNotFound struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetChallengeNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminGetChallengeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetChallengeNotFound) ToJSONString() string {
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

func (o *AdminGetChallengeNotFound) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChallengeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetChallengeInternalServerError creates a AdminGetChallengeInternalServerError with default headers values
func NewAdminGetChallengeInternalServerError() *AdminGetChallengeInternalServerError {
	return &AdminGetChallengeInternalServerError{}
}

/*AdminGetChallengeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetChallengeInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetChallengeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}][%d] adminGetChallengeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetChallengeInternalServerError) ToJSONString() string {
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

func (o *AdminGetChallengeInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetChallengeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
