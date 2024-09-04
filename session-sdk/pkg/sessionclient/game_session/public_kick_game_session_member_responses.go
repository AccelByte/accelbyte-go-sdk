// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// PublicKickGameSessionMemberReader is a Reader for the PublicKickGameSessionMember structure.
type PublicKickGameSessionMemberReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicKickGameSessionMemberReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicKickGameSessionMemberNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicKickGameSessionMemberBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicKickGameSessionMemberUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicKickGameSessionMemberForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicKickGameSessionMemberNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicKickGameSessionMemberInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicKickGameSessionMemberNoContent creates a PublicKickGameSessionMemberNoContent with default headers values
func NewPublicKickGameSessionMemberNoContent() *PublicKickGameSessionMemberNoContent {
	return &PublicKickGameSessionMemberNoContent{}
}

/*PublicKickGameSessionMemberNoContent handles this case with default header values.

  No Content
*/
type PublicKickGameSessionMemberNoContent struct {
}

func (o *PublicKickGameSessionMemberNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberNoContent ", 204)
}

func (o *PublicKickGameSessionMemberNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicKickGameSessionMemberBadRequest creates a PublicKickGameSessionMemberBadRequest with default headers values
func NewPublicKickGameSessionMemberBadRequest() *PublicKickGameSessionMemberBadRequest {
	return &PublicKickGameSessionMemberBadRequest{}
}

/*PublicKickGameSessionMemberBadRequest handles this case with default header values.

  Bad Request
*/
type PublicKickGameSessionMemberBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicKickGameSessionMemberBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicKickGameSessionMemberBadRequest) ToJSONString() string {
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

func (o *PublicKickGameSessionMemberBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicKickGameSessionMemberBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicKickGameSessionMemberUnauthorized creates a PublicKickGameSessionMemberUnauthorized with default headers values
func NewPublicKickGameSessionMemberUnauthorized() *PublicKickGameSessionMemberUnauthorized {
	return &PublicKickGameSessionMemberUnauthorized{}
}

/*PublicKickGameSessionMemberUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicKickGameSessionMemberUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicKickGameSessionMemberUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicKickGameSessionMemberUnauthorized) ToJSONString() string {
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

func (o *PublicKickGameSessionMemberUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicKickGameSessionMemberUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicKickGameSessionMemberForbidden creates a PublicKickGameSessionMemberForbidden with default headers values
func NewPublicKickGameSessionMemberForbidden() *PublicKickGameSessionMemberForbidden {
	return &PublicKickGameSessionMemberForbidden{}
}

/*PublicKickGameSessionMemberForbidden handles this case with default header values.

  Forbidden
*/
type PublicKickGameSessionMemberForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicKickGameSessionMemberForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicKickGameSessionMemberForbidden) ToJSONString() string {
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

func (o *PublicKickGameSessionMemberForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicKickGameSessionMemberForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicKickGameSessionMemberNotFound creates a PublicKickGameSessionMemberNotFound with default headers values
func NewPublicKickGameSessionMemberNotFound() *PublicKickGameSessionMemberNotFound {
	return &PublicKickGameSessionMemberNotFound{}
}

/*PublicKickGameSessionMemberNotFound handles this case with default header values.

  Not Found
*/
type PublicKickGameSessionMemberNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicKickGameSessionMemberNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicKickGameSessionMemberNotFound) ToJSONString() string {
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

func (o *PublicKickGameSessionMemberNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicKickGameSessionMemberNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicKickGameSessionMemberInternalServerError creates a PublicKickGameSessionMemberInternalServerError with default headers values
func NewPublicKickGameSessionMemberInternalServerError() *PublicKickGameSessionMemberInternalServerError {
	return &PublicKickGameSessionMemberInternalServerError{}
}

/*PublicKickGameSessionMemberInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicKickGameSessionMemberInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicKickGameSessionMemberInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] publicKickGameSessionMemberInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicKickGameSessionMemberInternalServerError) ToJSONString() string {
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

func (o *PublicKickGameSessionMemberInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicKickGameSessionMemberInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
