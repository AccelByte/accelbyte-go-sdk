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

// AdminUpdateGameSessionMemberReader is a Reader for the AdminUpdateGameSessionMember structure.
type AdminUpdateGameSessionMemberReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateGameSessionMemberReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateGameSessionMemberOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateGameSessionMemberBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateGameSessionMemberUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateGameSessionMemberForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateGameSessionMemberNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateGameSessionMemberInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateGameSessionMemberOK creates a AdminUpdateGameSessionMemberOK with default headers values
func NewAdminUpdateGameSessionMemberOK() *AdminUpdateGameSessionMemberOK {
	return &AdminUpdateGameSessionMemberOK{}
}

/*AdminUpdateGameSessionMemberOK handles this case with default header values.

  OK
*/
type AdminUpdateGameSessionMemberOK struct {
	Payload *sessionclientmodels.ApimodelsUpdateGameSessionMemberStatusResponse
}

func (o *AdminUpdateGameSessionMemberOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberOK) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberOK) GetPayload() *sessionclientmodels.ApimodelsUpdateGameSessionMemberStatusResponse {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsUpdateGameSessionMemberStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGameSessionMemberBadRequest creates a AdminUpdateGameSessionMemberBadRequest with default headers values
func NewAdminUpdateGameSessionMemberBadRequest() *AdminUpdateGameSessionMemberBadRequest {
	return &AdminUpdateGameSessionMemberBadRequest{}
}

/*AdminUpdateGameSessionMemberBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateGameSessionMemberBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGameSessionMemberBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberBadRequest) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateGameSessionMemberUnauthorized creates a AdminUpdateGameSessionMemberUnauthorized with default headers values
func NewAdminUpdateGameSessionMemberUnauthorized() *AdminUpdateGameSessionMemberUnauthorized {
	return &AdminUpdateGameSessionMemberUnauthorized{}
}

/*AdminUpdateGameSessionMemberUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateGameSessionMemberUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGameSessionMemberUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateGameSessionMemberForbidden creates a AdminUpdateGameSessionMemberForbidden with default headers values
func NewAdminUpdateGameSessionMemberForbidden() *AdminUpdateGameSessionMemberForbidden {
	return &AdminUpdateGameSessionMemberForbidden{}
}

/*AdminUpdateGameSessionMemberForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateGameSessionMemberForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGameSessionMemberForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberForbidden) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateGameSessionMemberNotFound creates a AdminUpdateGameSessionMemberNotFound with default headers values
func NewAdminUpdateGameSessionMemberNotFound() *AdminUpdateGameSessionMemberNotFound {
	return &AdminUpdateGameSessionMemberNotFound{}
}

/*AdminUpdateGameSessionMemberNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateGameSessionMemberNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGameSessionMemberNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberNotFound) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateGameSessionMemberInternalServerError creates a AdminUpdateGameSessionMemberInternalServerError with default headers values
func NewAdminUpdateGameSessionMemberInternalServerError() *AdminUpdateGameSessionMemberInternalServerError {
	return &AdminUpdateGameSessionMemberInternalServerError{}
}

/*AdminUpdateGameSessionMemberInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateGameSessionMemberInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGameSessionMemberInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}][%d] adminUpdateGameSessionMemberInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateGameSessionMemberInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateGameSessionMemberInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGameSessionMemberInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
