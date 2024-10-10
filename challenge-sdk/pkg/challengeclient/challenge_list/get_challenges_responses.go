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

// GetChallengesReader is a Reader for the GetChallenges structure.
type GetChallengesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetChallengesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetChallengesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetChallengesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetChallengesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetChallengesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/challenges returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetChallengesOK creates a GetChallengesOK with default headers values
func NewGetChallengesOK() *GetChallengesOK {
	return &GetChallengesOK{}
}

/*GetChallengesOK handles this case with default header values.

  OK
*/
type GetChallengesOK struct {
	Payload *challengeclientmodels.ModelListChallengeResponse
}

func (o *GetChallengesOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges][%d] getChallengesOK  %+v", 200, o.ToJSONString())
}

func (o *GetChallengesOK) ToJSONString() string {
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

func (o *GetChallengesOK) GetPayload() *challengeclientmodels.ModelListChallengeResponse {
	return o.Payload
}

func (o *GetChallengesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetChallengesUnauthorized creates a GetChallengesUnauthorized with default headers values
func NewGetChallengesUnauthorized() *GetChallengesUnauthorized {
	return &GetChallengesUnauthorized{}
}

/*GetChallengesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetChallengesUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *GetChallengesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges][%d] getChallengesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetChallengesUnauthorized) ToJSONString() string {
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

func (o *GetChallengesUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *GetChallengesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetChallengesForbidden creates a GetChallengesForbidden with default headers values
func NewGetChallengesForbidden() *GetChallengesForbidden {
	return &GetChallengesForbidden{}
}

/*GetChallengesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetChallengesForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *GetChallengesForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges][%d] getChallengesForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetChallengesForbidden) ToJSONString() string {
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

func (o *GetChallengesForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *GetChallengesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetChallengesInternalServerError creates a GetChallengesInternalServerError with default headers values
func NewGetChallengesInternalServerError() *GetChallengesInternalServerError {
	return &GetChallengesInternalServerError{}
}

/*GetChallengesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type GetChallengesInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *GetChallengesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/challenges][%d] getChallengesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetChallengesInternalServerError) ToJSONString() string {
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

func (o *GetChallengesInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *GetChallengesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
