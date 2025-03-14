// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// CreateSessionReader is a Reader for the CreateSession structure.
type CreateSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateSessionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateSessionServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/sessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateSessionOK creates a CreateSessionOK with default headers values
func NewCreateSessionOK() *CreateSessionOK {
	return &CreateSessionOK{}
}

/*CreateSessionOK handles this case with default header values.

  session created
*/
type CreateSessionOK struct {
	Payload *dsmcclientmodels.ModelsSessionResponse
}

func (o *CreateSessionOK) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionOK  %+v", 200, o.ToJSONString())
}

func (o *CreateSessionOK) ToJSONString() string {
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

func (o *CreateSessionOK) GetPayload() *dsmcclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *CreateSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionBadRequest creates a CreateSessionBadRequest with default headers values
func NewCreateSessionBadRequest() *CreateSessionBadRequest {
	return &CreateSessionBadRequest{}
}

/*CreateSessionBadRequest handles this case with default header values.

  malformed request
*/
type CreateSessionBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateSessionBadRequest) ToJSONString() string {
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

func (o *CreateSessionBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionUnauthorized creates a CreateSessionUnauthorized with default headers values
func NewCreateSessionUnauthorized() *CreateSessionUnauthorized {
	return &CreateSessionUnauthorized{}
}

/*CreateSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateSessionUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateSessionUnauthorized) ToJSONString() string {
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

func (o *CreateSessionUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionNotFound creates a CreateSessionNotFound with default headers values
func NewCreateSessionNotFound() *CreateSessionNotFound {
	return &CreateSessionNotFound{}
}

/*CreateSessionNotFound handles this case with default header values.

  local server not found
*/
type CreateSessionNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateSessionNotFound) ToJSONString() string {
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

func (o *CreateSessionNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionConflict creates a CreateSessionConflict with default headers values
func NewCreateSessionConflict() *CreateSessionConflict {
	return &CreateSessionConflict{}
}

/*CreateSessionConflict handles this case with default header values.

  session already exists
*/
type CreateSessionConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateSessionConflict) ToJSONString() string {
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

func (o *CreateSessionConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionInternalServerError creates a CreateSessionInternalServerError with default headers values
func NewCreateSessionInternalServerError() *CreateSessionInternalServerError {
	return &CreateSessionInternalServerError{}
}

/*CreateSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateSessionInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateSessionInternalServerError) ToJSONString() string {
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

func (o *CreateSessionInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionServiceUnavailable creates a CreateSessionServiceUnavailable with default headers values
func NewCreateSessionServiceUnavailable() *CreateSessionServiceUnavailable {
	return &CreateSessionServiceUnavailable{}
}

/*CreateSessionServiceUnavailable handles this case with default header values.

  server count is at max
*/
type CreateSessionServiceUnavailable struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateSessionServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/sessions][%d] createSessionServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateSessionServiceUnavailable) ToJSONString() string {
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

func (o *CreateSessionServiceUnavailable) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
