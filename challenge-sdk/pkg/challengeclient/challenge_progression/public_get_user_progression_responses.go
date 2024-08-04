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

// PublicGetUserProgressionReader is a Reader for the PublicGetUserProgression structure.
type PublicGetUserProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserProgressionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserProgressionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserProgressionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserProgressionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserProgressionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserProgressionOK creates a PublicGetUserProgressionOK with default headers values
func NewPublicGetUserProgressionOK() *PublicGetUserProgressionOK {
	return &PublicGetUserProgressionOK{}
}

/*PublicGetUserProgressionOK handles this case with default header values.

  OK
*/
type PublicGetUserProgressionOK struct {
	Payload *challengeclientmodels.ModelUserProgressionResponse
}

func (o *PublicGetUserProgressionOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserProgressionOK) ToJSONString() string {
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

func (o *PublicGetUserProgressionOK) GetPayload() *challengeclientmodels.ModelUserProgressionResponse {
	return o.Payload
}

func (o *PublicGetUserProgressionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(challengeclientmodels.ModelUserProgressionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserProgressionBadRequest creates a PublicGetUserProgressionBadRequest with default headers values
func NewPublicGetUserProgressionBadRequest() *PublicGetUserProgressionBadRequest {
	return &PublicGetUserProgressionBadRequest{}
}

/*PublicGetUserProgressionBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type PublicGetUserProgressionBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserProgressionBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserProgressionBadRequest) ToJSONString() string {
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

func (o *PublicGetUserProgressionBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProgressionUnauthorized creates a PublicGetUserProgressionUnauthorized with default headers values
func NewPublicGetUserProgressionUnauthorized() *PublicGetUserProgressionUnauthorized {
	return &PublicGetUserProgressionUnauthorized{}
}

/*PublicGetUserProgressionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserProgressionUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserProgressionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserProgressionUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserProgressionUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserProgressionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProgressionForbidden creates a PublicGetUserProgressionForbidden with default headers values
func NewPublicGetUserProgressionForbidden() *PublicGetUserProgressionForbidden {
	return &PublicGetUserProgressionForbidden{}
}

/*PublicGetUserProgressionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetUserProgressionForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserProgressionForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserProgressionForbidden) ToJSONString() string {
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

func (o *PublicGetUserProgressionForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserProgressionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProgressionNotFound creates a PublicGetUserProgressionNotFound with default headers values
func NewPublicGetUserProgressionNotFound() *PublicGetUserProgressionNotFound {
	return &PublicGetUserProgressionNotFound{}
}

/*PublicGetUserProgressionNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type PublicGetUserProgressionNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetUserProgressionNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserProgressionNotFound) ToJSONString() string {
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

func (o *PublicGetUserProgressionNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetUserProgressionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProgressionInternalServerError creates a PublicGetUserProgressionInternalServerError with default headers values
func NewPublicGetUserProgressionInternalServerError() *PublicGetUserProgressionInternalServerError {
	return &PublicGetUserProgressionInternalServerError{}
}

/*PublicGetUserProgressionInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicGetUserProgressionInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicGetUserProgressionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}][%d] publicGetUserProgressionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserProgressionInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserProgressionInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserProgressionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
