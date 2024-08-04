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

// PublicGetPastUserProgressionReader is a Reader for the PublicGetPastUserProgression structure.
type PublicGetPastUserProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPastUserProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPastUserProgressionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPastUserProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPastUserProgressionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPastUserProgressionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPastUserProgressionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPastUserProgressionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPastUserProgressionOK creates a PublicGetPastUserProgressionOK with default headers values
func NewPublicGetPastUserProgressionOK() *PublicGetPastUserProgressionOK {
	return &PublicGetPastUserProgressionOK{}
}

/*PublicGetPastUserProgressionOK handles this case with default header values.

  OK
*/
type PublicGetPastUserProgressionOK struct {
	Payload *challengeclientmodels.ModelUserProgressionResponse
}

func (o *PublicGetPastUserProgressionOK) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionOK) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionOK) GetPayload() *challengeclientmodels.ModelUserProgressionResponse {
	return o.Payload
}

func (o *PublicGetPastUserProgressionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPastUserProgressionBadRequest creates a PublicGetPastUserProgressionBadRequest with default headers values
func NewPublicGetPastUserProgressionBadRequest() *PublicGetPastUserProgressionBadRequest {
	return &PublicGetPastUserProgressionBadRequest{}
}

/*PublicGetPastUserProgressionBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20018</td><td>bad request: {{message}}</td></tr></table>
*/
type PublicGetPastUserProgressionBadRequest struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetPastUserProgressionBadRequest) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionBadRequest) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionBadRequest) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetPastUserProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPastUserProgressionUnauthorized creates a PublicGetPastUserProgressionUnauthorized with default headers values
func NewPublicGetPastUserProgressionUnauthorized() *PublicGetPastUserProgressionUnauthorized {
	return &PublicGetPastUserProgressionUnauthorized{}
}

/*PublicGetPastUserProgressionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetPastUserProgressionUnauthorized struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetPastUserProgressionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionUnauthorized) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionUnauthorized) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetPastUserProgressionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPastUserProgressionForbidden creates a PublicGetPastUserProgressionForbidden with default headers values
func NewPublicGetPastUserProgressionForbidden() *PublicGetPastUserProgressionForbidden {
	return &PublicGetPastUserProgressionForbidden{}
}

/*PublicGetPastUserProgressionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetPastUserProgressionForbidden struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetPastUserProgressionForbidden) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionForbidden) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionForbidden) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetPastUserProgressionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPastUserProgressionNotFound creates a PublicGetPastUserProgressionNotFound with default headers values
func NewPublicGetPastUserProgressionNotFound() *PublicGetPastUserProgressionNotFound {
	return &PublicGetPastUserProgressionNotFound{}
}

/*PublicGetPastUserProgressionNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20029</td><td>not found</td></tr></table>
*/
type PublicGetPastUserProgressionNotFound struct {
	Payload *challengeclientmodels.IamErrorResponse
}

func (o *PublicGetPastUserProgressionNotFound) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionNotFound) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionNotFound) GetPayload() *challengeclientmodels.IamErrorResponse {
	return o.Payload
}

func (o *PublicGetPastUserProgressionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPastUserProgressionInternalServerError creates a PublicGetPastUserProgressionInternalServerError with default headers values
func NewPublicGetPastUserProgressionInternalServerError() *PublicGetPastUserProgressionInternalServerError {
	return &PublicGetPastUserProgressionInternalServerError{}
}

/*PublicGetPastUserProgressionInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error: {{message}}</td></tr></table>
*/
type PublicGetPastUserProgressionInternalServerError struct {
	Payload *challengeclientmodels.ResponseError
}

func (o *PublicGetPastUserProgressionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}][%d] publicGetPastUserProgressionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPastUserProgressionInternalServerError) ToJSONString() string {
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

func (o *PublicGetPastUserProgressionInternalServerError) GetPayload() *challengeclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPastUserProgressionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
