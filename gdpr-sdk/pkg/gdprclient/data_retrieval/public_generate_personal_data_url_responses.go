// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// PublicGeneratePersonalDataURLReader is a Reader for the PublicGeneratePersonalDataURL structure.
type PublicGeneratePersonalDataURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGeneratePersonalDataURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGeneratePersonalDataURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGeneratePersonalDataURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGeneratePersonalDataURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGeneratePersonalDataURLNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGeneratePersonalDataURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGeneratePersonalDataURLOK creates a PublicGeneratePersonalDataURLOK with default headers values
func NewPublicGeneratePersonalDataURLOK() *PublicGeneratePersonalDataURLOK {
	return &PublicGeneratePersonalDataURLOK{}
}

/*PublicGeneratePersonalDataURLOK handles this case with default header values.

  OK
*/
type PublicGeneratePersonalDataURLOK struct {
	Payload *gdprclientmodels.ModelsUserDataURL
}

func (o *PublicGeneratePersonalDataURLOK) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] publicGeneratePersonalDataUrlOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGeneratePersonalDataURLOK) ToJSONString() string {
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

func (o *PublicGeneratePersonalDataURLOK) GetPayload() *gdprclientmodels.ModelsUserDataURL {
	return o.Payload
}

func (o *PublicGeneratePersonalDataURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsUserDataURL)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGeneratePersonalDataURLBadRequest creates a PublicGeneratePersonalDataURLBadRequest with default headers values
func NewPublicGeneratePersonalDataURLBadRequest() *PublicGeneratePersonalDataURLBadRequest {
	return &PublicGeneratePersonalDataURLBadRequest{}
}

/*PublicGeneratePersonalDataURLBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGeneratePersonalDataURLBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGeneratePersonalDataURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] publicGeneratePersonalDataUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGeneratePersonalDataURLBadRequest) ToJSONString() string {
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

func (o *PublicGeneratePersonalDataURLBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePersonalDataURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGeneratePersonalDataURLUnauthorized creates a PublicGeneratePersonalDataURLUnauthorized with default headers values
func NewPublicGeneratePersonalDataURLUnauthorized() *PublicGeneratePersonalDataURLUnauthorized {
	return &PublicGeneratePersonalDataURLUnauthorized{}
}

/*PublicGeneratePersonalDataURLUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGeneratePersonalDataURLUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGeneratePersonalDataURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] publicGeneratePersonalDataUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGeneratePersonalDataURLUnauthorized) ToJSONString() string {
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

func (o *PublicGeneratePersonalDataURLUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePersonalDataURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGeneratePersonalDataURLNotFound creates a PublicGeneratePersonalDataURLNotFound with default headers values
func NewPublicGeneratePersonalDataURLNotFound() *PublicGeneratePersonalDataURLNotFound {
	return &PublicGeneratePersonalDataURLNotFound{}
}

/*PublicGeneratePersonalDataURLNotFound handles this case with default header values.

  Not Found
*/
type PublicGeneratePersonalDataURLNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGeneratePersonalDataURLNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] publicGeneratePersonalDataUrlNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGeneratePersonalDataURLNotFound) ToJSONString() string {
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

func (o *PublicGeneratePersonalDataURLNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePersonalDataURLNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGeneratePersonalDataURLInternalServerError creates a PublicGeneratePersonalDataURLInternalServerError with default headers values
func NewPublicGeneratePersonalDataURLInternalServerError() *PublicGeneratePersonalDataURLInternalServerError {
	return &PublicGeneratePersonalDataURLInternalServerError{}
}

/*PublicGeneratePersonalDataURLInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGeneratePersonalDataURLInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGeneratePersonalDataURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate][%d] publicGeneratePersonalDataUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGeneratePersonalDataURLInternalServerError) ToJSONString() string {
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

func (o *PublicGeneratePersonalDataURLInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGeneratePersonalDataURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
