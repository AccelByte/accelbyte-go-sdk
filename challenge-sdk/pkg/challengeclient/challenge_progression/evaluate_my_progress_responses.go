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

// EvaluateMyProgressReader is a Reader for the EvaluateMyProgress structure.
type EvaluateMyProgressReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EvaluateMyProgressReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewEvaluateMyProgressNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewEvaluateMyProgressUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewEvaluateMyProgressForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewEvaluateMyProgressInternalServerError()
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

// NewEvaluateMyProgressNoContent creates a EvaluateMyProgressNoContent with default headers values
func NewEvaluateMyProgressNoContent() *EvaluateMyProgressNoContent {
	return &EvaluateMyProgressNoContent{}
}

/*EvaluateMyProgressNoContent handles this case with default header values.

  No Content
*/
type EvaluateMyProgressNoContent struct {
}

func (o *EvaluateMyProgressNoContent) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] evaluateMyProgressNoContent ", 204)
}

func (o *EvaluateMyProgressNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewEvaluateMyProgressUnauthorized creates a EvaluateMyProgressUnauthorized with default headers values
func NewEvaluateMyProgressUnauthorized() *EvaluateMyProgressUnauthorized {
	return &EvaluateMyProgressUnauthorized{}
}

/*EvaluateMyProgressUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type EvaluateMyProgressUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *EvaluateMyProgressUnauthorized) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] evaluateMyProgressUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *EvaluateMyProgressUnauthorized) ToJSONString() string {
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

func (o *EvaluateMyProgressUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *EvaluateMyProgressUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewEvaluateMyProgressForbidden creates a EvaluateMyProgressForbidden with default headers values
func NewEvaluateMyProgressForbidden() *EvaluateMyProgressForbidden {
	return &EvaluateMyProgressForbidden{}
}

/*EvaluateMyProgressForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type EvaluateMyProgressForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *EvaluateMyProgressForbidden) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] evaluateMyProgressForbidden  %+v", 403, o.ToJSONString())
}

func (o *EvaluateMyProgressForbidden) ToJSONString() string {
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

func (o *EvaluateMyProgressForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *EvaluateMyProgressForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewEvaluateMyProgressInternalServerError creates a EvaluateMyProgressInternalServerError with default headers values
func NewEvaluateMyProgressInternalServerError() *EvaluateMyProgressInternalServerError {
	return &EvaluateMyProgressInternalServerError{}
}

/*EvaluateMyProgressInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type EvaluateMyProgressInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *EvaluateMyProgressInternalServerError) Error() string {
	return fmt.Sprintf("[POST /challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate][%d] evaluateMyProgressInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *EvaluateMyProgressInternalServerError) ToJSONString() string {
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

func (o *EvaluateMyProgressInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *EvaluateMyProgressInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
