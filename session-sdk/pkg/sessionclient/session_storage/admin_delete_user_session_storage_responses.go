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

// AdminDeleteUserSessionStorageReader is a Reader for the AdminDeleteUserSessionStorage structure.
type AdminDeleteUserSessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserSessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserSessionStorageNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserSessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserSessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserSessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteUserSessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserSessionStorageNoContent creates a AdminDeleteUserSessionStorageNoContent with default headers values
func NewAdminDeleteUserSessionStorageNoContent() *AdminDeleteUserSessionStorageNoContent {
	return &AdminDeleteUserSessionStorageNoContent{}
}

/*AdminDeleteUserSessionStorageNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteUserSessionStorageNoContent struct {
}

func (o *AdminDeleteUserSessionStorageNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminDeleteUserSessionStorageNoContent ", 204)
}

func (o *AdminDeleteUserSessionStorageNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserSessionStorageBadRequest creates a AdminDeleteUserSessionStorageBadRequest with default headers values
func NewAdminDeleteUserSessionStorageBadRequest() *AdminDeleteUserSessionStorageBadRequest {
	return &AdminDeleteUserSessionStorageBadRequest{}
}

/*AdminDeleteUserSessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteUserSessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteUserSessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminDeleteUserSessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserSessionStorageBadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserSessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteUserSessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserSessionStorageUnauthorized creates a AdminDeleteUserSessionStorageUnauthorized with default headers values
func NewAdminDeleteUserSessionStorageUnauthorized() *AdminDeleteUserSessionStorageUnauthorized {
	return &AdminDeleteUserSessionStorageUnauthorized{}
}

/*AdminDeleteUserSessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteUserSessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteUserSessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminDeleteUserSessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserSessionStorageUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserSessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteUserSessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserSessionStorageNotFound creates a AdminDeleteUserSessionStorageNotFound with default headers values
func NewAdminDeleteUserSessionStorageNotFound() *AdminDeleteUserSessionStorageNotFound {
	return &AdminDeleteUserSessionStorageNotFound{}
}

/*AdminDeleteUserSessionStorageNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteUserSessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteUserSessionStorageNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminDeleteUserSessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteUserSessionStorageNotFound) ToJSONString() string {
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

func (o *AdminDeleteUserSessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteUserSessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserSessionStorageInternalServerError creates a AdminDeleteUserSessionStorageInternalServerError with default headers values
func NewAdminDeleteUserSessionStorageInternalServerError() *AdminDeleteUserSessionStorageInternalServerError {
	return &AdminDeleteUserSessionStorageInternalServerError{}
}

/*AdminDeleteUserSessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteUserSessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteUserSessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage][%d] adminDeleteUserSessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteUserSessionStorageInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteUserSessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteUserSessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
