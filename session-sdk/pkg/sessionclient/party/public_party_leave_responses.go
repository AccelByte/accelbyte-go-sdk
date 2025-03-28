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

// PublicPartyLeaveReader is a Reader for the PublicPartyLeave structure.
type PublicPartyLeaveReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyLeaveReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPartyLeaveNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyLeaveUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyLeaveNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyLeaveInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyLeaveNoContent creates a PublicPartyLeaveNoContent with default headers values
func NewPublicPartyLeaveNoContent() *PublicPartyLeaveNoContent {
	return &PublicPartyLeaveNoContent{}
}

/*PublicPartyLeaveNoContent handles this case with default header values.

  No Content
*/
type PublicPartyLeaveNoContent struct {
}

func (o *PublicPartyLeaveNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave][%d] publicPartyLeaveNoContent ", 204)
}

func (o *PublicPartyLeaveNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPartyLeaveUnauthorized creates a PublicPartyLeaveUnauthorized with default headers values
func NewPublicPartyLeaveUnauthorized() *PublicPartyLeaveUnauthorized {
	return &PublicPartyLeaveUnauthorized{}
}

/*PublicPartyLeaveUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyLeaveUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyLeaveUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave][%d] publicPartyLeaveUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyLeaveUnauthorized) ToJSONString() string {
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

func (o *PublicPartyLeaveUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyLeaveUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyLeaveNotFound creates a PublicPartyLeaveNotFound with default headers values
func NewPublicPartyLeaveNotFound() *PublicPartyLeaveNotFound {
	return &PublicPartyLeaveNotFound{}
}

/*PublicPartyLeaveNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyLeaveNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyLeaveNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave][%d] publicPartyLeaveNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyLeaveNotFound) ToJSONString() string {
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

func (o *PublicPartyLeaveNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyLeaveNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyLeaveInternalServerError creates a PublicPartyLeaveInternalServerError with default headers values
func NewPublicPartyLeaveInternalServerError() *PublicPartyLeaveInternalServerError {
	return &PublicPartyLeaveInternalServerError{}
}

/*PublicPartyLeaveInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyLeaveInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyLeaveInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave][%d] publicPartyLeaveInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyLeaveInternalServerError) ToJSONString() string {
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

func (o *PublicPartyLeaveInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyLeaveInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
