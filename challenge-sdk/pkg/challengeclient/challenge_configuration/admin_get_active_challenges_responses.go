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

// AdminGetActiveChallengesReader is a Reader for the AdminGetActiveChallenges structure.
type AdminGetActiveChallengesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetActiveChallengesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetActiveChallengesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetActiveChallengesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetActiveChallengesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetActiveChallengesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetActiveChallengesOK creates a AdminGetActiveChallengesOK with default headers values
func NewAdminGetActiveChallengesOK() *AdminGetActiveChallengesOK {
	return &AdminGetActiveChallengesOK{}
}

/*AdminGetActiveChallengesOK handles this case with default header values.

  OK
*/
type AdminGetActiveChallengesOK struct {
	Payload *challengeclientmodels.ModelListChallengeResponse
}

func (o *AdminGetActiveChallengesOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}][%d] adminGetActiveChallengesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetActiveChallengesOK) ToJSONString() string {
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

func (o *AdminGetActiveChallengesOK) GetPayload() *challengeclientmodels.ModelListChallengeResponse {
	return o.Payload
}

func (o *AdminGetActiveChallengesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelListChallengeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetActiveChallengesUnauthorized creates a AdminGetActiveChallengesUnauthorized with default headers values
func NewAdminGetActiveChallengesUnauthorized() *AdminGetActiveChallengesUnauthorized {
	return &AdminGetActiveChallengesUnauthorized{}
}

/*AdminGetActiveChallengesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetActiveChallengesUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetActiveChallengesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}][%d] adminGetActiveChallengesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetActiveChallengesUnauthorized) ToJSONString() string {
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

func (o *AdminGetActiveChallengesUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetActiveChallengesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetActiveChallengesForbidden creates a AdminGetActiveChallengesForbidden with default headers values
func NewAdminGetActiveChallengesForbidden() *AdminGetActiveChallengesForbidden {
	return &AdminGetActiveChallengesForbidden{}
}

/*AdminGetActiveChallengesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetActiveChallengesForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *AdminGetActiveChallengesForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}][%d] adminGetActiveChallengesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetActiveChallengesForbidden) ToJSONString() string {
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

func (o *AdminGetActiveChallengesForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *AdminGetActiveChallengesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetActiveChallengesInternalServerError creates a AdminGetActiveChallengesInternalServerError with default headers values
func NewAdminGetActiveChallengesInternalServerError() *AdminGetActiveChallengesInternalServerError {
	return &AdminGetActiveChallengesInternalServerError{}
}

/*AdminGetActiveChallengesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type AdminGetActiveChallengesInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *AdminGetActiveChallengesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}][%d] adminGetActiveChallengesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetActiveChallengesInternalServerError) ToJSONString() string {
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

func (o *AdminGetActiveChallengesInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetActiveChallengesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
