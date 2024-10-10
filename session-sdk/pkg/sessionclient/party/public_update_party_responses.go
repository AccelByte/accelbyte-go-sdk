// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// PublicUpdatePartyReader is a Reader for the PublicUpdateParty structure.
type PublicUpdatePartyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdatePartyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdatePartyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdatePartyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdatePartyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdatePartyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdatePartyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpdatePartyConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdatePartyInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/public/namespaces/{namespace}/parties/{partyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdatePartyOK creates a PublicUpdatePartyOK with default headers values
func NewPublicUpdatePartyOK() *PublicUpdatePartyOK {
	return &PublicUpdatePartyOK{}
}

/*PublicUpdatePartyOK handles this case with default header values.

  OK
*/
type PublicUpdatePartyOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicUpdatePartyOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdatePartyOK) ToJSONString() string {
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

func (o *PublicUpdatePartyOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicUpdatePartyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPartySessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyBadRequest creates a PublicUpdatePartyBadRequest with default headers values
func NewPublicUpdatePartyBadRequest() *PublicUpdatePartyBadRequest {
	return &PublicUpdatePartyBadRequest{}
}

/*PublicUpdatePartyBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdatePartyBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdatePartyBadRequest) ToJSONString() string {
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

func (o *PublicUpdatePartyBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyUnauthorized creates a PublicUpdatePartyUnauthorized with default headers values
func NewPublicUpdatePartyUnauthorized() *PublicUpdatePartyUnauthorized {
	return &PublicUpdatePartyUnauthorized{}
}

/*PublicUpdatePartyUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdatePartyUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdatePartyUnauthorized) ToJSONString() string {
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

func (o *PublicUpdatePartyUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyForbidden creates a PublicUpdatePartyForbidden with default headers values
func NewPublicUpdatePartyForbidden() *PublicUpdatePartyForbidden {
	return &PublicUpdatePartyForbidden{}
}

/*PublicUpdatePartyForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdatePartyForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdatePartyForbidden) ToJSONString() string {
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

func (o *PublicUpdatePartyForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyNotFound creates a PublicUpdatePartyNotFound with default headers values
func NewPublicUpdatePartyNotFound() *PublicUpdatePartyNotFound {
	return &PublicUpdatePartyNotFound{}
}

/*PublicUpdatePartyNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdatePartyNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdatePartyNotFound) ToJSONString() string {
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

func (o *PublicUpdatePartyNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyConflict creates a PublicUpdatePartyConflict with default headers values
func NewPublicUpdatePartyConflict() *PublicUpdatePartyConflict {
	return &PublicUpdatePartyConflict{}
}

/*PublicUpdatePartyConflict handles this case with default header values.

  Conflict
*/
type PublicUpdatePartyConflict struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyConflict) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpdatePartyConflict) ToJSONString() string {
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

func (o *PublicUpdatePartyConflict) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePartyInternalServerError creates a PublicUpdatePartyInternalServerError with default headers values
func NewPublicUpdatePartyInternalServerError() *PublicUpdatePartyInternalServerError {
	return &PublicUpdatePartyInternalServerError{}
}

/*PublicUpdatePartyInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdatePartyInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdatePartyInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicUpdatePartyInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdatePartyInternalServerError) ToJSONString() string {
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

func (o *PublicUpdatePartyInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdatePartyInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
