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

// PublicPartyInviteReader is a Reader for the PublicPartyInvite structure.
type PublicPartyInviteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyInviteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicPartyInviteCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewPublicPartyInviteNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartyInviteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyInviteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyInviteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyInviteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyInviteCreated creates a PublicPartyInviteCreated with default headers values
func NewPublicPartyInviteCreated() *PublicPartyInviteCreated {
	return &PublicPartyInviteCreated{}
}

/*PublicPartyInviteCreated handles this case with default header values.

  Created
*/
type PublicPartyInviteCreated struct {
	Payload *sessionclientmodels.ApimodelsSessionInviteResponse
}

func (o *PublicPartyInviteCreated) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicPartyInviteCreated) ToJSONString() string {
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

func (o *PublicPartyInviteCreated) GetPayload() *sessionclientmodels.ApimodelsSessionInviteResponse {
	return o.Payload
}

func (o *PublicPartyInviteCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsSessionInviteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyInviteNoContent creates a PublicPartyInviteNoContent with default headers values
func NewPublicPartyInviteNoContent() *PublicPartyInviteNoContent {
	return &PublicPartyInviteNoContent{}
}

/*PublicPartyInviteNoContent handles this case with default header values.

  No Content
*/
type PublicPartyInviteNoContent struct {
}

func (o *PublicPartyInviteNoContent) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteNoContent ", 204)
}

func (o *PublicPartyInviteNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPartyInviteBadRequest creates a PublicPartyInviteBadRequest with default headers values
func NewPublicPartyInviteBadRequest() *PublicPartyInviteBadRequest {
	return &PublicPartyInviteBadRequest{}
}

/*PublicPartyInviteBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPartyInviteBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyInviteBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartyInviteBadRequest) ToJSONString() string {
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

func (o *PublicPartyInviteBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyInviteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyInviteUnauthorized creates a PublicPartyInviteUnauthorized with default headers values
func NewPublicPartyInviteUnauthorized() *PublicPartyInviteUnauthorized {
	return &PublicPartyInviteUnauthorized{}
}

/*PublicPartyInviteUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyInviteUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyInviteUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyInviteUnauthorized) ToJSONString() string {
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

func (o *PublicPartyInviteUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyInviteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyInviteNotFound creates a PublicPartyInviteNotFound with default headers values
func NewPublicPartyInviteNotFound() *PublicPartyInviteNotFound {
	return &PublicPartyInviteNotFound{}
}

/*PublicPartyInviteNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyInviteNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyInviteNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyInviteNotFound) ToJSONString() string {
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

func (o *PublicPartyInviteNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyInviteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPartyInviteInternalServerError creates a PublicPartyInviteInternalServerError with default headers values
func NewPublicPartyInviteInternalServerError() *PublicPartyInviteInternalServerError {
	return &PublicPartyInviteInternalServerError{}
}

/*PublicPartyInviteInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyInviteInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyInviteInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/{partyId}/invite][%d] publicPartyInviteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyInviteInternalServerError) ToJSONString() string {
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

func (o *PublicPartyInviteInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyInviteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
