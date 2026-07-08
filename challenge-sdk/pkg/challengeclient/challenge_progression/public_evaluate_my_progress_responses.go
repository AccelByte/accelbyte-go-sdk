// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_progression

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

// PublicEvaluateMyProgressReader is a Reader for the PublicEvaluateMyProgress structure.
type PublicEvaluateMyProgressReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicEvaluateMyProgressReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicEvaluateMyProgressNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicEvaluateMyProgressUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicEvaluateMyProgressForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicEvaluateMyProgressInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicEvaluateMyProgressNoContent creates a PublicEvaluateMyProgressNoContent with default headers values
func NewPublicEvaluateMyProgressNoContent() *PublicEvaluateMyProgressNoContent {
	return &PublicEvaluateMyProgressNoContent{}
}

/*PublicEvaluateMyProgressNoContent handles this case with default header values.

  No Content
*/
type PublicEvaluateMyProgressNoContent struct {
}

func (o *PublicEvaluateMyProgressNoContent) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] publicEvaluateMyProgressNoContent ", 204)
}

func (o *PublicEvaluateMyProgressNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicEvaluateMyProgressUnauthorized creates a PublicEvaluateMyProgressUnauthorized with default headers values
func NewPublicEvaluateMyProgressUnauthorized() *PublicEvaluateMyProgressUnauthorized {
	return &PublicEvaluateMyProgressUnauthorized{}
}

/*PublicEvaluateMyProgressUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicEvaluateMyProgressUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicEvaluateMyProgressUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] publicEvaluateMyProgressUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicEvaluateMyProgressUnauthorized) ToJSONString() string {
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

func (o *PublicEvaluateMyProgressUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicEvaluateMyProgressUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEvaluateMyProgressForbidden creates a PublicEvaluateMyProgressForbidden with default headers values
func NewPublicEvaluateMyProgressForbidden() *PublicEvaluateMyProgressForbidden {
	return &PublicEvaluateMyProgressForbidden{}
}

/*PublicEvaluateMyProgressForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicEvaluateMyProgressForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicEvaluateMyProgressForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] publicEvaluateMyProgressForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicEvaluateMyProgressForbidden) ToJSONString() string {
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

func (o *PublicEvaluateMyProgressForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicEvaluateMyProgressForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEvaluateMyProgressInternalServerError creates a PublicEvaluateMyProgressInternalServerError with default headers values
func NewPublicEvaluateMyProgressInternalServerError() *PublicEvaluateMyProgressInternalServerError {
	return &PublicEvaluateMyProgressInternalServerError{}
}

/*PublicEvaluateMyProgressInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicEvaluateMyProgressInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicEvaluateMyProgressInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] publicEvaluateMyProgressInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicEvaluateMyProgressInternalServerError) ToJSONString() string {
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

func (o *PublicEvaluateMyProgressInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicEvaluateMyProgressInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
