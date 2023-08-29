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

// PublicUpdateInsertSessionStorageReader is a Reader for the PublicUpdateInsertSessionStorage structure.
type PublicUpdateInsertSessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertSessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertSessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertSessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertSessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertSessionStorageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertSessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertSessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertSessionStorageOK creates a PublicUpdateInsertSessionStorageOK with default headers values
func NewPublicUpdateInsertSessionStorageOK() *PublicUpdateInsertSessionStorageOK {
	return &PublicUpdateInsertSessionStorageOK{}
}

/*PublicUpdateInsertSessionStorageOK handles this case with default header values.

  OK
*/
type PublicUpdateInsertSessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertSessionStorageOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageOK) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateInsertSessionStorageBadRequest creates a PublicUpdateInsertSessionStorageBadRequest with default headers values
func NewPublicUpdateInsertSessionStorageBadRequest() *PublicUpdateInsertSessionStorageBadRequest {
	return &PublicUpdateInsertSessionStorageBadRequest{}
}

/*PublicUpdateInsertSessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertSessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageBadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateInsertSessionStorageUnauthorized creates a PublicUpdateInsertSessionStorageUnauthorized with default headers values
func NewPublicUpdateInsertSessionStorageUnauthorized() *PublicUpdateInsertSessionStorageUnauthorized {
	return &PublicUpdateInsertSessionStorageUnauthorized{}
}

/*PublicUpdateInsertSessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertSessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateInsertSessionStorageForbidden creates a PublicUpdateInsertSessionStorageForbidden with default headers values
func NewPublicUpdateInsertSessionStorageForbidden() *PublicUpdateInsertSessionStorageForbidden {
	return &PublicUpdateInsertSessionStorageForbidden{}
}

/*PublicUpdateInsertSessionStorageForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertSessionStorageForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageForbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateInsertSessionStorageNotFound creates a PublicUpdateInsertSessionStorageNotFound with default headers values
func NewPublicUpdateInsertSessionStorageNotFound() *PublicUpdateInsertSessionStorageNotFound {
	return &PublicUpdateInsertSessionStorageNotFound{}
}

/*PublicUpdateInsertSessionStorageNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertSessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageNotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateInsertSessionStorageInternalServerError creates a PublicUpdateInsertSessionStorageInternalServerError with default headers values
func NewPublicUpdateInsertSessionStorageInternalServerError() *PublicUpdateInsertSessionStorageInternalServerError {
	return &PublicUpdateInsertSessionStorageInternalServerError{}
}

/*PublicUpdateInsertSessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertSessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
