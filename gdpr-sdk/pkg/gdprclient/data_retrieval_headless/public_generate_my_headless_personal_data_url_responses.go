// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_headless

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

// PublicGenerateMyHeadlessPersonalDataURLReader is a Reader for the PublicGenerateMyHeadlessPersonalDataURL structure.
type PublicGenerateMyHeadlessPersonalDataURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGenerateMyHeadlessPersonalDataURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGenerateMyHeadlessPersonalDataURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGenerateMyHeadlessPersonalDataURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGenerateMyHeadlessPersonalDataURLUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGenerateMyHeadlessPersonalDataURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGenerateMyHeadlessPersonalDataURLNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicGenerateMyHeadlessPersonalDataURLTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGenerateMyHeadlessPersonalDataURLInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/users/me/headless/requests/{requestDate}/generate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGenerateMyHeadlessPersonalDataURLOK creates a PublicGenerateMyHeadlessPersonalDataURLOK with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLOK() *PublicGenerateMyHeadlessPersonalDataURLOK {
	return &PublicGenerateMyHeadlessPersonalDataURLOK{}
}

/*PublicGenerateMyHeadlessPersonalDataURLOK handles this case with default header values.

  OK
*/
type PublicGenerateMyHeadlessPersonalDataURLOK struct {
	Payload *gdprclientmodels.ModelsUserDataURL
}

func (o *PublicGenerateMyHeadlessPersonalDataURLOK) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLOK) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLOK) GetPayload() *gdprclientmodels.ModelsUserDataURL {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLBadRequest creates a PublicGenerateMyHeadlessPersonalDataURLBadRequest with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLBadRequest() *PublicGenerateMyHeadlessPersonalDataURLBadRequest {
	return &PublicGenerateMyHeadlessPersonalDataURLBadRequest{}
}

/*PublicGenerateMyHeadlessPersonalDataURLBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGenerateMyHeadlessPersonalDataURLBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLBadRequest) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLUnauthorized creates a PublicGenerateMyHeadlessPersonalDataURLUnauthorized with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLUnauthorized() *PublicGenerateMyHeadlessPersonalDataURLUnauthorized {
	return &PublicGenerateMyHeadlessPersonalDataURLUnauthorized{}
}

/*PublicGenerateMyHeadlessPersonalDataURLUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGenerateMyHeadlessPersonalDataURLUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLUnauthorized) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLForbidden creates a PublicGenerateMyHeadlessPersonalDataURLForbidden with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLForbidden() *PublicGenerateMyHeadlessPersonalDataURLForbidden {
	return &PublicGenerateMyHeadlessPersonalDataURLForbidden{}
}

/*PublicGenerateMyHeadlessPersonalDataURLForbidden handles this case with default header values.

  Forbidden
*/
type PublicGenerateMyHeadlessPersonalDataURLForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLForbidden) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLNotFound creates a PublicGenerateMyHeadlessPersonalDataURLNotFound with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLNotFound() *PublicGenerateMyHeadlessPersonalDataURLNotFound {
	return &PublicGenerateMyHeadlessPersonalDataURLNotFound{}
}

/*PublicGenerateMyHeadlessPersonalDataURLNotFound handles this case with default header values.

  Not Found
*/
type PublicGenerateMyHeadlessPersonalDataURLNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLNotFound) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLTooManyRequests creates a PublicGenerateMyHeadlessPersonalDataURLTooManyRequests with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLTooManyRequests() *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests {
	return &PublicGenerateMyHeadlessPersonalDataURLTooManyRequests{}
}

/*PublicGenerateMyHeadlessPersonalDataURLTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type PublicGenerateMyHeadlessPersonalDataURLTooManyRequests struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyHeadlessPersonalDataURLInternalServerError creates a PublicGenerateMyHeadlessPersonalDataURLInternalServerError with default headers values
func NewPublicGenerateMyHeadlessPersonalDataURLInternalServerError() *PublicGenerateMyHeadlessPersonalDataURLInternalServerError {
	return &PublicGenerateMyHeadlessPersonalDataURLInternalServerError{}
}

/*PublicGenerateMyHeadlessPersonalDataURLInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGenerateMyHeadlessPersonalDataURLInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGenerateMyHeadlessPersonalDataURLInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/requests/{requestDate}/generate][%d] publicGenerateMyHeadlessPersonalDataUrlInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGenerateMyHeadlessPersonalDataURLInternalServerError) ToJSONString() string {
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

func (o *PublicGenerateMyHeadlessPersonalDataURLInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateMyHeadlessPersonalDataURLInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
