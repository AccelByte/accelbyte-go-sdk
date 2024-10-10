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

// LeaveGameSessionReader is a Reader for the LeaveGameSession structure.
type LeaveGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LeaveGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewLeaveGameSessionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewLeaveGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewLeaveGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewLeaveGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewLeaveGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewLeaveGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLeaveGameSessionNoContent creates a LeaveGameSessionNoContent with default headers values
func NewLeaveGameSessionNoContent() *LeaveGameSessionNoContent {
	return &LeaveGameSessionNoContent{}
}

/*LeaveGameSessionNoContent handles this case with default header values.

  No Content
*/
type LeaveGameSessionNoContent struct {
}

func (o *LeaveGameSessionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionNoContent ", 204)
}

func (o *LeaveGameSessionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewLeaveGameSessionBadRequest creates a LeaveGameSessionBadRequest with default headers values
func NewLeaveGameSessionBadRequest() *LeaveGameSessionBadRequest {
	return &LeaveGameSessionBadRequest{}
}

/*LeaveGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type LeaveGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *LeaveGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *LeaveGameSessionBadRequest) ToJSONString() string {
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

func (o *LeaveGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *LeaveGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGameSessionUnauthorized creates a LeaveGameSessionUnauthorized with default headers values
func NewLeaveGameSessionUnauthorized() *LeaveGameSessionUnauthorized {
	return &LeaveGameSessionUnauthorized{}
}

/*LeaveGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type LeaveGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *LeaveGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *LeaveGameSessionUnauthorized) ToJSONString() string {
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

func (o *LeaveGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *LeaveGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGameSessionForbidden creates a LeaveGameSessionForbidden with default headers values
func NewLeaveGameSessionForbidden() *LeaveGameSessionForbidden {
	return &LeaveGameSessionForbidden{}
}

/*LeaveGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type LeaveGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *LeaveGameSessionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *LeaveGameSessionForbidden) ToJSONString() string {
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

func (o *LeaveGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *LeaveGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGameSessionNotFound creates a LeaveGameSessionNotFound with default headers values
func NewLeaveGameSessionNotFound() *LeaveGameSessionNotFound {
	return &LeaveGameSessionNotFound{}
}

/*LeaveGameSessionNotFound handles this case with default header values.

  Not Found
*/
type LeaveGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *LeaveGameSessionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *LeaveGameSessionNotFound) ToJSONString() string {
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

func (o *LeaveGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *LeaveGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGameSessionInternalServerError creates a LeaveGameSessionInternalServerError with default headers values
func NewLeaveGameSessionInternalServerError() *LeaveGameSessionInternalServerError {
	return &LeaveGameSessionInternalServerError{}
}

/*LeaveGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type LeaveGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *LeaveGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave][%d] leaveGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *LeaveGameSessionInternalServerError) ToJSONString() string {
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

func (o *LeaveGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *LeaveGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
