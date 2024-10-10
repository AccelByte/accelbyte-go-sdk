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

// PublicPartyRejectReader is a Reader for the PublicPartyReject structure.
type PublicPartyRejectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyRejectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPartyRejectNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartyRejectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyRejectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPartyRejectForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyRejectNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyRejectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyRejectNoContent creates a PublicPartyRejectNoContent with default headers values
func NewPublicPartyRejectNoContent() *PublicPartyRejectNoContent {
	return &PublicPartyRejectNoContent{}
}

/*PublicPartyRejectNoContent handles this case with default header values.

  No Content
*/
type PublicPartyRejectNoContent struct {
}

func (o *PublicPartyRejectNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectNoContent ", 204)
}

func (o *PublicPartyRejectNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPartyRejectBadRequest creates a PublicPartyRejectBadRequest with default headers values
func NewPublicPartyRejectBadRequest() *PublicPartyRejectBadRequest {
	return &PublicPartyRejectBadRequest{}
}

/*PublicPartyRejectBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPartyRejectBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyRejectBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartyRejectBadRequest) ToJSONString() string {
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

func (o *PublicPartyRejectBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyRejectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyRejectUnauthorized creates a PublicPartyRejectUnauthorized with default headers values
func NewPublicPartyRejectUnauthorized() *PublicPartyRejectUnauthorized {
	return &PublicPartyRejectUnauthorized{}
}

/*PublicPartyRejectUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyRejectUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyRejectUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyRejectUnauthorized) ToJSONString() string {
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

func (o *PublicPartyRejectUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyRejectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyRejectForbidden creates a PublicPartyRejectForbidden with default headers values
func NewPublicPartyRejectForbidden() *PublicPartyRejectForbidden {
	return &PublicPartyRejectForbidden{}
}

/*PublicPartyRejectForbidden handles this case with default header values.

  Forbidden
*/
type PublicPartyRejectForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyRejectForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPartyRejectForbidden) ToJSONString() string {
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

func (o *PublicPartyRejectForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyRejectForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyRejectNotFound creates a PublicPartyRejectNotFound with default headers values
func NewPublicPartyRejectNotFound() *PublicPartyRejectNotFound {
	return &PublicPartyRejectNotFound{}
}

/*PublicPartyRejectNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyRejectNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyRejectNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyRejectNotFound) ToJSONString() string {
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

func (o *PublicPartyRejectNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyRejectNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartyRejectInternalServerError creates a PublicPartyRejectInternalServerError with default headers values
func NewPublicPartyRejectInternalServerError() *PublicPartyRejectInternalServerError {
	return &PublicPartyRejectInternalServerError{}
}

/*PublicPartyRejectInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyRejectInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyRejectInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject][%d] publicPartyRejectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyRejectInternalServerError) ToJSONString() string {
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

func (o *PublicPartyRejectInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyRejectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
