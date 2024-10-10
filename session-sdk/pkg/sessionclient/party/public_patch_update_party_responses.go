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

// PublicPatchUpdatePartyReader is a Reader for the PublicPatchUpdateParty structure.
type PublicPatchUpdatePartyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPatchUpdatePartyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPatchUpdatePartyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPatchUpdatePartyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPatchUpdatePartyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPatchUpdatePartyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPatchUpdatePartyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicPatchUpdatePartyConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPatchUpdatePartyInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPatchUpdatePartyOK creates a PublicPatchUpdatePartyOK with default headers values
func NewPublicPatchUpdatePartyOK() *PublicPatchUpdatePartyOK {
	return &PublicPatchUpdatePartyOK{}
}

/*PublicPatchUpdatePartyOK handles this case with default header values.

  OK
*/
type PublicPatchUpdatePartyOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicPatchUpdatePartyOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyOK) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicPatchUpdatePartyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyBadRequest creates a PublicPatchUpdatePartyBadRequest with default headers values
func NewPublicPatchUpdatePartyBadRequest() *PublicPatchUpdatePartyBadRequest {
	return &PublicPatchUpdatePartyBadRequest{}
}

/*PublicPatchUpdatePartyBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPatchUpdatePartyBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyBadRequest) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyUnauthorized creates a PublicPatchUpdatePartyUnauthorized with default headers values
func NewPublicPatchUpdatePartyUnauthorized() *PublicPatchUpdatePartyUnauthorized {
	return &PublicPatchUpdatePartyUnauthorized{}
}

/*PublicPatchUpdatePartyUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPatchUpdatePartyUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyUnauthorized) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyForbidden creates a PublicPatchUpdatePartyForbidden with default headers values
func NewPublicPatchUpdatePartyForbidden() *PublicPatchUpdatePartyForbidden {
	return &PublicPatchUpdatePartyForbidden{}
}

/*PublicPatchUpdatePartyForbidden handles this case with default header values.

  Forbidden
*/
type PublicPatchUpdatePartyForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyForbidden) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyNotFound creates a PublicPatchUpdatePartyNotFound with default headers values
func NewPublicPatchUpdatePartyNotFound() *PublicPatchUpdatePartyNotFound {
	return &PublicPatchUpdatePartyNotFound{}
}

/*PublicPatchUpdatePartyNotFound handles this case with default header values.

  Not Found
*/
type PublicPatchUpdatePartyNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyNotFound) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyConflict creates a PublicPatchUpdatePartyConflict with default headers values
func NewPublicPatchUpdatePartyConflict() *PublicPatchUpdatePartyConflict {
	return &PublicPatchUpdatePartyConflict{}
}

/*PublicPatchUpdatePartyConflict handles this case with default header values.

  Conflict
*/
type PublicPatchUpdatePartyConflict struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyConflict) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyConflict) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyConflict) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPatchUpdatePartyInternalServerError creates a PublicPatchUpdatePartyInternalServerError with default headers values
func NewPublicPatchUpdatePartyInternalServerError() *PublicPatchUpdatePartyInternalServerError {
	return &PublicPatchUpdatePartyInternalServerError{}
}

/*PublicPatchUpdatePartyInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPatchUpdatePartyInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPatchUpdatePartyInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/parties/{partyId}][%d] publicPatchUpdatePartyInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPatchUpdatePartyInternalServerError) ToJSONString() string {
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

func (o *PublicPatchUpdatePartyInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPatchUpdatePartyInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
