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

// PublicUpdateInsertPartySessionStorageReader is a Reader for the PublicUpdateInsertPartySessionStorage structure.
type PublicUpdateInsertPartySessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertPartySessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertPartySessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertPartySessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertPartySessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertPartySessionStorageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertPartySessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertPartySessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertPartySessionStorageOK creates a PublicUpdateInsertPartySessionStorageOK with default headers values
func NewPublicUpdateInsertPartySessionStorageOK() *PublicUpdateInsertPartySessionStorageOK {
	return &PublicUpdateInsertPartySessionStorageOK{}
}

/*PublicUpdateInsertPartySessionStorageOK handles this case with default header values.

  OK
*/
type PublicUpdateInsertPartySessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertPartySessionStorageOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageOK) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageBadRequest creates a PublicUpdateInsertPartySessionStorageBadRequest with default headers values
func NewPublicUpdateInsertPartySessionStorageBadRequest() *PublicUpdateInsertPartySessionStorageBadRequest {
	return &PublicUpdateInsertPartySessionStorageBadRequest{}
}

/*PublicUpdateInsertPartySessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertPartySessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageBadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageUnauthorized creates a PublicUpdateInsertPartySessionStorageUnauthorized with default headers values
func NewPublicUpdateInsertPartySessionStorageUnauthorized() *PublicUpdateInsertPartySessionStorageUnauthorized {
	return &PublicUpdateInsertPartySessionStorageUnauthorized{}
}

/*PublicUpdateInsertPartySessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertPartySessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageForbidden creates a PublicUpdateInsertPartySessionStorageForbidden with default headers values
func NewPublicUpdateInsertPartySessionStorageForbidden() *PublicUpdateInsertPartySessionStorageForbidden {
	return &PublicUpdateInsertPartySessionStorageForbidden{}
}

/*PublicUpdateInsertPartySessionStorageForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertPartySessionStorageForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageForbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageNotFound creates a PublicUpdateInsertPartySessionStorageNotFound with default headers values
func NewPublicUpdateInsertPartySessionStorageNotFound() *PublicUpdateInsertPartySessionStorageNotFound {
	return &PublicUpdateInsertPartySessionStorageNotFound{}
}

/*PublicUpdateInsertPartySessionStorageNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertPartySessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageNotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageInternalServerError creates a PublicUpdateInsertPartySessionStorageInternalServerError with default headers values
func NewPublicUpdateInsertPartySessionStorageInternalServerError() *PublicUpdateInsertPartySessionStorageInternalServerError {
	return &PublicUpdateInsertPartySessionStorageInternalServerError{}
}

/*PublicUpdateInsertPartySessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertPartySessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}][%d] publicUpdateInsertPartySessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
