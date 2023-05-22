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

// CancelSessionReader is a Reader for the CancelSession structure.
type CancelSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CancelSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCancelSessionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCancelSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCancelSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCancelSessionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCancelSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCancelSessionNoContent creates a CancelSessionNoContent with default headers values
func NewCancelSessionNoContent() *CancelSessionNoContent {
	return &CancelSessionNoContent{}
}

/*CancelSessionNoContent handles this case with default header values.

  DS creation successfully canceled
*/
type CancelSessionNoContent struct {
}

func (o *CancelSessionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel][%d] cancelSessionNoContent ", 204)
}

func (o *CancelSessionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCancelSessionUnauthorized creates a CancelSessionUnauthorized with default headers values
func NewCancelSessionUnauthorized() *CancelSessionUnauthorized {
	return &CancelSessionUnauthorized{}
}

/*CancelSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type CancelSessionUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CancelSessionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel][%d] cancelSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CancelSessionUnauthorized) ToJSONString() string {
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

func (o *CancelSessionUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelSessionNotFound creates a CancelSessionNotFound with default headers values
func NewCancelSessionNotFound() *CancelSessionNotFound {
	return &CancelSessionNotFound{}
}

/*CancelSessionNotFound handles this case with default header values.

  session not found
*/
type CancelSessionNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CancelSessionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel][%d] cancelSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *CancelSessionNotFound) ToJSONString() string {
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

func (o *CancelSessionNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelSessionUnprocessableEntity creates a CancelSessionUnprocessableEntity with default headers values
func NewCancelSessionUnprocessableEntity() *CancelSessionUnprocessableEntity {
	return &CancelSessionUnprocessableEntity{}
}

/*CancelSessionUnprocessableEntity handles this case with default header values.

  session cannot be canceled
*/
type CancelSessionUnprocessableEntity struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CancelSessionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel][%d] cancelSessionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CancelSessionUnprocessableEntity) ToJSONString() string {
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

func (o *CancelSessionUnprocessableEntity) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelSessionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelSessionInternalServerError creates a CancelSessionInternalServerError with default headers values
func NewCancelSessionInternalServerError() *CancelSessionInternalServerError {
	return &CancelSessionInternalServerError{}
}

/*CancelSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CancelSessionInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CancelSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel][%d] cancelSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CancelSessionInternalServerError) ToJSONString() string {
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

func (o *CancelSessionInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CancelSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
