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

// PublicReadPartySessionStorageReader is a Reader for the PublicReadPartySessionStorage structure.
type PublicReadPartySessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReadPartySessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicReadPartySessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReadPartySessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicReadPartySessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicReadPartySessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicReadPartySessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReadPartySessionStorageOK creates a PublicReadPartySessionStorageOK with default headers values
func NewPublicReadPartySessionStorageOK() *PublicReadPartySessionStorageOK {
	return &PublicReadPartySessionStorageOK{}
}

/*PublicReadPartySessionStorageOK handles this case with default header values.

  OK
*/
type PublicReadPartySessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *PublicReadPartySessionStorageOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage][%d] publicReadPartySessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *PublicReadPartySessionStorageOK) ToJSONString() string {
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

func (o *PublicReadPartySessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicReadPartySessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReadPartySessionStorageBadRequest creates a PublicReadPartySessionStorageBadRequest with default headers values
func NewPublicReadPartySessionStorageBadRequest() *PublicReadPartySessionStorageBadRequest {
	return &PublicReadPartySessionStorageBadRequest{}
}

/*PublicReadPartySessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type PublicReadPartySessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReadPartySessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage][%d] publicReadPartySessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReadPartySessionStorageBadRequest) ToJSONString() string {
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

func (o *PublicReadPartySessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReadPartySessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReadPartySessionStorageUnauthorized creates a PublicReadPartySessionStorageUnauthorized with default headers values
func NewPublicReadPartySessionStorageUnauthorized() *PublicReadPartySessionStorageUnauthorized {
	return &PublicReadPartySessionStorageUnauthorized{}
}

/*PublicReadPartySessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicReadPartySessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReadPartySessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage][%d] publicReadPartySessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicReadPartySessionStorageUnauthorized) ToJSONString() string {
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

func (o *PublicReadPartySessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReadPartySessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReadPartySessionStorageNotFound creates a PublicReadPartySessionStorageNotFound with default headers values
func NewPublicReadPartySessionStorageNotFound() *PublicReadPartySessionStorageNotFound {
	return &PublicReadPartySessionStorageNotFound{}
}

/*PublicReadPartySessionStorageNotFound handles this case with default header values.

  Not Found
*/
type PublicReadPartySessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReadPartySessionStorageNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage][%d] publicReadPartySessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicReadPartySessionStorageNotFound) ToJSONString() string {
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

func (o *PublicReadPartySessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReadPartySessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReadPartySessionStorageInternalServerError creates a PublicReadPartySessionStorageInternalServerError with default headers values
func NewPublicReadPartySessionStorageInternalServerError() *PublicReadPartySessionStorageInternalServerError {
	return &PublicReadPartySessionStorageInternalServerError{}
}

/*PublicReadPartySessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicReadPartySessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReadPartySessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/parties/{partyId}/storage][%d] publicReadPartySessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicReadPartySessionStorageInternalServerError) ToJSONString() string {
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

func (o *PublicReadPartySessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReadPartySessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
