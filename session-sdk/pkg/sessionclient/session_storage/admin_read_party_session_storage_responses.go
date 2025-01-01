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

// AdminReadPartySessionStorageReader is a Reader for the AdminReadPartySessionStorage structure.
type AdminReadPartySessionStorageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminReadPartySessionStorageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminReadPartySessionStorageOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminReadPartySessionStorageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminReadPartySessionStorageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminReadPartySessionStorageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminReadPartySessionStorageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminReadPartySessionStorageOK creates a AdminReadPartySessionStorageOK with default headers values
func NewAdminReadPartySessionStorageOK() *AdminReadPartySessionStorageOK {
	return &AdminReadPartySessionStorageOK{}
}

/*AdminReadPartySessionStorageOK handles this case with default header values.

  OK
*/
type AdminReadPartySessionStorageOK struct {
	Payload map[string]interface{}
}

func (o *AdminReadPartySessionStorageOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage][%d] adminReadPartySessionStorageOK  %+v", 200, o.ToJSONString())
}

func (o *AdminReadPartySessionStorageOK) ToJSONString() string {
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

func (o *AdminReadPartySessionStorageOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *AdminReadPartySessionStorageOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadPartySessionStorageBadRequest creates a AdminReadPartySessionStorageBadRequest with default headers values
func NewAdminReadPartySessionStorageBadRequest() *AdminReadPartySessionStorageBadRequest {
	return &AdminReadPartySessionStorageBadRequest{}
}

/*AdminReadPartySessionStorageBadRequest handles this case with default header values.

  Bad Request
*/
type AdminReadPartySessionStorageBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadPartySessionStorageBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage][%d] adminReadPartySessionStorageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminReadPartySessionStorageBadRequest) ToJSONString() string {
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

func (o *AdminReadPartySessionStorageBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadPartySessionStorageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadPartySessionStorageUnauthorized creates a AdminReadPartySessionStorageUnauthorized with default headers values
func NewAdminReadPartySessionStorageUnauthorized() *AdminReadPartySessionStorageUnauthorized {
	return &AdminReadPartySessionStorageUnauthorized{}
}

/*AdminReadPartySessionStorageUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminReadPartySessionStorageUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadPartySessionStorageUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage][%d] adminReadPartySessionStorageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminReadPartySessionStorageUnauthorized) ToJSONString() string {
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

func (o *AdminReadPartySessionStorageUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadPartySessionStorageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadPartySessionStorageNotFound creates a AdminReadPartySessionStorageNotFound with default headers values
func NewAdminReadPartySessionStorageNotFound() *AdminReadPartySessionStorageNotFound {
	return &AdminReadPartySessionStorageNotFound{}
}

/*AdminReadPartySessionStorageNotFound handles this case with default header values.

  Not Found
*/
type AdminReadPartySessionStorageNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadPartySessionStorageNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage][%d] adminReadPartySessionStorageNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminReadPartySessionStorageNotFound) ToJSONString() string {
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

func (o *AdminReadPartySessionStorageNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadPartySessionStorageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminReadPartySessionStorageInternalServerError creates a AdminReadPartySessionStorageInternalServerError with default headers values
func NewAdminReadPartySessionStorageInternalServerError() *AdminReadPartySessionStorageInternalServerError {
	return &AdminReadPartySessionStorageInternalServerError{}
}

/*AdminReadPartySessionStorageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminReadPartySessionStorageInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminReadPartySessionStorageInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage][%d] adminReadPartySessionStorageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminReadPartySessionStorageInternalServerError) ToJSONString() string {
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

func (o *AdminReadPartySessionStorageInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminReadPartySessionStorageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
