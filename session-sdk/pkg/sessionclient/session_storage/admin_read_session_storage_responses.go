// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminReadSessionStorageReader is a Reader for the AdminReadSessionStorage structure.
type AdminReadSessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminReadSessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminReadSessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminReadSessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminReadSessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminReadSessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminReadSessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminReadSessionStorageOK creates a AdminReadSessionStorageOK with default headers values
func NewAdminReadSessionStorageOK() *AdminReadSessionStorageOK {
	return &AdminReadSessionStorageOK{}
}

/*AdminReadSessionStorageOK handles this case with default header values.

  OK
*/
type AdminReadSessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *AdminReadSessionStorageOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminReadSessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminReadSessionStorageOK) ToJSONString() string {
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

func (o *AdminReadSessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *AdminReadSessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminReadSessionStorageBadRequest creates a AdminReadSessionStorageBadRequest with default headers values
func NewAdminReadSessionStorageBadRequest() *AdminReadSessionStorageBadRequest {
	return &AdminReadSessionStorageBadRequest{}
}

/*AdminReadSessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminReadSessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadSessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminReadSessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminReadSessionStorageBadRequest) ToJSONString() string {
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

func (o *AdminReadSessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadSessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminReadSessionStorageUnauthorized creates a AdminReadSessionStorageUnauthorized with default headers values
func NewAdminReadSessionStorageUnauthorized() *AdminReadSessionStorageUnauthorized {
	return &AdminReadSessionStorageUnauthorized{}
}

/*AdminReadSessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminReadSessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadSessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminReadSessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminReadSessionStorageUnauthorized) ToJSONString() string {
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

func (o *AdminReadSessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadSessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminReadSessionStorageNotFound creates a AdminReadSessionStorageNotFound with default headers values
func NewAdminReadSessionStorageNotFound() *AdminReadSessionStorageNotFound {
	return &AdminReadSessionStorageNotFound{}
}

/*AdminReadSessionStorageNotFound handles this case with default header values.

  Not Found
*/
type AdminReadSessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadSessionStorageNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminReadSessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminReadSessionStorageNotFound) ToJSONString() string {
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

func (o *AdminReadSessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadSessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminReadSessionStorageInternalServerError creates a AdminReadSessionStorageInternalServerError with default headers values
func NewAdminReadSessionStorageInternalServerError() *AdminReadSessionStorageInternalServerError {
	return &AdminReadSessionStorageInternalServerError{}
}

/*AdminReadSessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminReadSessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadSessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminReadSessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminReadSessionStorageInternalServerError) ToJSONString() string {
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

func (o *AdminReadSessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadSessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
