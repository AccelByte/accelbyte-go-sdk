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

// AdminKickGameSessionMemberReader is a Reader for the AdminKickGameSessionMember structure.
type AdminKickGameSessionMemberReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminKickGameSessionMemberReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminKickGameSessionMemberNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminKickGameSessionMemberBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminKickGameSessionMemberUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminKickGameSessionMemberForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminKickGameSessionMemberNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminKickGameSessionMemberInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminKickGameSessionMemberNoContent creates a AdminKickGameSessionMemberNoContent with default headers values
func NewAdminKickGameSessionMemberNoContent() *AdminKickGameSessionMemberNoContent {
	return &AdminKickGameSessionMemberNoContent{}
}

/*AdminKickGameSessionMemberNoContent handles this case with default header values.

  No Content
*/
type AdminKickGameSessionMemberNoContent struct {
}

func (o *AdminKickGameSessionMemberNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberNoContent ", 204)
}

func (o *AdminKickGameSessionMemberNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminKickGameSessionMemberBadRequest creates a AdminKickGameSessionMemberBadRequest with default headers values
func NewAdminKickGameSessionMemberBadRequest() *AdminKickGameSessionMemberBadRequest {
	return &AdminKickGameSessionMemberBadRequest{}
}

/*AdminKickGameSessionMemberBadRequest handles this case with default header values.

  Bad Request
*/
type AdminKickGameSessionMemberBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminKickGameSessionMemberBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminKickGameSessionMemberBadRequest) ToJSONString() string {
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

func (o *AdminKickGameSessionMemberBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminKickGameSessionMemberBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminKickGameSessionMemberUnauthorized creates a AdminKickGameSessionMemberUnauthorized with default headers values
func NewAdminKickGameSessionMemberUnauthorized() *AdminKickGameSessionMemberUnauthorized {
	return &AdminKickGameSessionMemberUnauthorized{}
}

/*AdminKickGameSessionMemberUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminKickGameSessionMemberUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminKickGameSessionMemberUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminKickGameSessionMemberUnauthorized) ToJSONString() string {
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

func (o *AdminKickGameSessionMemberUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminKickGameSessionMemberUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminKickGameSessionMemberForbidden creates a AdminKickGameSessionMemberForbidden with default headers values
func NewAdminKickGameSessionMemberForbidden() *AdminKickGameSessionMemberForbidden {
	return &AdminKickGameSessionMemberForbidden{}
}

/*AdminKickGameSessionMemberForbidden handles this case with default header values.

  Forbidden
*/
type AdminKickGameSessionMemberForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminKickGameSessionMemberForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminKickGameSessionMemberForbidden) ToJSONString() string {
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

func (o *AdminKickGameSessionMemberForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminKickGameSessionMemberForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminKickGameSessionMemberNotFound creates a AdminKickGameSessionMemberNotFound with default headers values
func NewAdminKickGameSessionMemberNotFound() *AdminKickGameSessionMemberNotFound {
	return &AdminKickGameSessionMemberNotFound{}
}

/*AdminKickGameSessionMemberNotFound handles this case with default header values.

  Not Found
*/
type AdminKickGameSessionMemberNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminKickGameSessionMemberNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminKickGameSessionMemberNotFound) ToJSONString() string {
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

func (o *AdminKickGameSessionMemberNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminKickGameSessionMemberNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminKickGameSessionMemberInternalServerError creates a AdminKickGameSessionMemberInternalServerError with default headers values
func NewAdminKickGameSessionMemberInternalServerError() *AdminKickGameSessionMemberInternalServerError {
	return &AdminKickGameSessionMemberInternalServerError{}
}

/*AdminKickGameSessionMemberInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminKickGameSessionMemberInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminKickGameSessionMemberInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick][%d] adminKickGameSessionMemberInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminKickGameSessionMemberInternalServerError) ToJSONString() string {
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

func (o *AdminKickGameSessionMemberInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminKickGameSessionMemberInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
