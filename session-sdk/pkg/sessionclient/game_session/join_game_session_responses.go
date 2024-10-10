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

// JoinGameSessionReader is a Reader for the JoinGameSession structure.
type JoinGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *JoinGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewJoinGameSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewJoinGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewJoinGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewJoinGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewJoinGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewJoinGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join returns an error %d: %s", response.Code(), string(data))
	}
}

// NewJoinGameSessionOK creates a JoinGameSessionOK with default headers values
func NewJoinGameSessionOK() *JoinGameSessionOK {
	return &JoinGameSessionOK{}
}

/*JoinGameSessionOK handles this case with default header values.

  OK
*/
type JoinGameSessionOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *JoinGameSessionOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionOK  %+v", 200, o.ToJSONString())
}

func (o *JoinGameSessionOK) ToJSONString() string {
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

func (o *JoinGameSessionOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *JoinGameSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewJoinGameSessionBadRequest creates a JoinGameSessionBadRequest with default headers values
func NewJoinGameSessionBadRequest() *JoinGameSessionBadRequest {
	return &JoinGameSessionBadRequest{}
}

/*JoinGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type JoinGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *JoinGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *JoinGameSessionBadRequest) ToJSONString() string {
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

func (o *JoinGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *JoinGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGameSessionUnauthorized creates a JoinGameSessionUnauthorized with default headers values
func NewJoinGameSessionUnauthorized() *JoinGameSessionUnauthorized {
	return &JoinGameSessionUnauthorized{}
}

/*JoinGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type JoinGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *JoinGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *JoinGameSessionUnauthorized) ToJSONString() string {
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

func (o *JoinGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *JoinGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGameSessionForbidden creates a JoinGameSessionForbidden with default headers values
func NewJoinGameSessionForbidden() *JoinGameSessionForbidden {
	return &JoinGameSessionForbidden{}
}

/*JoinGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type JoinGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *JoinGameSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *JoinGameSessionForbidden) ToJSONString() string {
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

func (o *JoinGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *JoinGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGameSessionNotFound creates a JoinGameSessionNotFound with default headers values
func NewJoinGameSessionNotFound() *JoinGameSessionNotFound {
	return &JoinGameSessionNotFound{}
}

/*JoinGameSessionNotFound handles this case with default header values.

  Not Found
*/
type JoinGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *JoinGameSessionNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *JoinGameSessionNotFound) ToJSONString() string {
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

func (o *JoinGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *JoinGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGameSessionInternalServerError creates a JoinGameSessionInternalServerError with default headers values
func NewJoinGameSessionInternalServerError() *JoinGameSessionInternalServerError {
	return &JoinGameSessionInternalServerError{}
}

/*JoinGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type JoinGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *JoinGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join][%d] joinGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *JoinGameSessionInternalServerError) ToJSONString() string {
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

func (o *JoinGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *JoinGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
