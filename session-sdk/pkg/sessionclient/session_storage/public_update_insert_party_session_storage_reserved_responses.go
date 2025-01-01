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

// PublicUpdateInsertPartySessionStorageReservedReader is a Reader for the PublicUpdateInsertPartySessionStorageReserved structure.
type PublicUpdateInsertPartySessionStorageReservedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertPartySessionStorageReservedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertPartySessionStorageReservedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertPartySessionStorageReservedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertPartySessionStorageReservedUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertPartySessionStorageReservedForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertPartySessionStorageReservedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertPartySessionStorageReservedInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertPartySessionStorageReservedOK creates a PublicUpdateInsertPartySessionStorageReservedOK with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedOK() *PublicUpdateInsertPartySessionStorageReservedOK {
	return &PublicUpdateInsertPartySessionStorageReservedOK{}
}

/*PublicUpdateInsertPartySessionStorageReservedOK handles this case with default header values.

  OK
*/
type PublicUpdateInsertPartySessionStorageReservedOK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertPartySessionStorageReservedOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedOK) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageReservedBadRequest creates a PublicUpdateInsertPartySessionStorageReservedBadRequest with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedBadRequest() *PublicUpdateInsertPartySessionStorageReservedBadRequest {
	return &PublicUpdateInsertPartySessionStorageReservedBadRequest{}
}

/*PublicUpdateInsertPartySessionStorageReservedBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertPartySessionStorageReservedBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageReservedBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedBadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageReservedUnauthorized creates a PublicUpdateInsertPartySessionStorageReservedUnauthorized with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedUnauthorized() *PublicUpdateInsertPartySessionStorageReservedUnauthorized {
	return &PublicUpdateInsertPartySessionStorageReservedUnauthorized{}
}

/*PublicUpdateInsertPartySessionStorageReservedUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertPartySessionStorageReservedUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageReservedUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageReservedForbidden creates a PublicUpdateInsertPartySessionStorageReservedForbidden with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedForbidden() *PublicUpdateInsertPartySessionStorageReservedForbidden {
	return &PublicUpdateInsertPartySessionStorageReservedForbidden{}
}

/*PublicUpdateInsertPartySessionStorageReservedForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertPartySessionStorageReservedForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageReservedForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedForbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageReservedNotFound creates a PublicUpdateInsertPartySessionStorageReservedNotFound with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedNotFound() *PublicUpdateInsertPartySessionStorageReservedNotFound {
	return &PublicUpdateInsertPartySessionStorageReservedNotFound{}
}

/*PublicUpdateInsertPartySessionStorageReservedNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertPartySessionStorageReservedNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageReservedNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedNotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertPartySessionStorageReservedInternalServerError creates a PublicUpdateInsertPartySessionStorageReservedInternalServerError with default headers values
func NewPublicUpdateInsertPartySessionStorageReservedInternalServerError() *PublicUpdateInsertPartySessionStorageReservedInternalServerError {
	return &PublicUpdateInsertPartySessionStorageReservedInternalServerError{}
}

/*PublicUpdateInsertPartySessionStorageReservedInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertPartySessionStorageReservedInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertPartySessionStorageReservedInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved][%d] publicUpdateInsertPartySessionStorageReservedInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertPartySessionStorageReservedInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertPartySessionStorageReservedInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertPartySessionStorageReservedInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
