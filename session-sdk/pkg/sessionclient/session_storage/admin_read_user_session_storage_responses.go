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

// AdminReadUserSessionStorageReader is a Reader for the AdminReadUserSessionStorage structure.
type AdminReadUserSessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminReadUserSessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminReadUserSessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminReadUserSessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminReadUserSessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminReadUserSessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminReadUserSessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminReadUserSessionStorageOK creates a AdminReadUserSessionStorageOK with default headers values
func NewAdminReadUserSessionStorageOK() *AdminReadUserSessionStorageOK {
	return &AdminReadUserSessionStorageOK{}
}

/*AdminReadUserSessionStorageOK handles this case with default header values.

  OK
*/
type AdminReadUserSessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *AdminReadUserSessionStorageOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] adminReadUserSessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminReadUserSessionStorageOK) ToJSONString() string {
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

func (o *AdminReadUserSessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *AdminReadUserSessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadUserSessionStorageBadRequest creates a AdminReadUserSessionStorageBadRequest with default headers values
func NewAdminReadUserSessionStorageBadRequest() *AdminReadUserSessionStorageBadRequest {
	return &AdminReadUserSessionStorageBadRequest{}
}

/*AdminReadUserSessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminReadUserSessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadUserSessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] adminReadUserSessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminReadUserSessionStorageBadRequest) ToJSONString() string {
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

func (o *AdminReadUserSessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadUserSessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadUserSessionStorageUnauthorized creates a AdminReadUserSessionStorageUnauthorized with default headers values
func NewAdminReadUserSessionStorageUnauthorized() *AdminReadUserSessionStorageUnauthorized {
	return &AdminReadUserSessionStorageUnauthorized{}
}

/*AdminReadUserSessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminReadUserSessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadUserSessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] adminReadUserSessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminReadUserSessionStorageUnauthorized) ToJSONString() string {
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

func (o *AdminReadUserSessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadUserSessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadUserSessionStorageNotFound creates a AdminReadUserSessionStorageNotFound with default headers values
func NewAdminReadUserSessionStorageNotFound() *AdminReadUserSessionStorageNotFound {
	return &AdminReadUserSessionStorageNotFound{}
}

/*AdminReadUserSessionStorageNotFound handles this case with default header values.

  Not Found
*/
type AdminReadUserSessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadUserSessionStorageNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] adminReadUserSessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminReadUserSessionStorageNotFound) ToJSONString() string {
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

func (o *AdminReadUserSessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadUserSessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadUserSessionStorageInternalServerError creates a AdminReadUserSessionStorageInternalServerError with default headers values
func NewAdminReadUserSessionStorageInternalServerError() *AdminReadUserSessionStorageInternalServerError {
	return &AdminReadUserSessionStorageInternalServerError{}
}

/*AdminReadUserSessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminReadUserSessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadUserSessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] adminReadUserSessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminReadUserSessionStorageInternalServerError) ToJSONString() string {
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

func (o *AdminReadUserSessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadUserSessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
