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

// UpdateGameSessionReader is a Reader for the UpdateGameSession structure.
type UpdateGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGameSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGameSessionOK creates a UpdateGameSessionOK with default headers values
func NewUpdateGameSessionOK() *UpdateGameSessionOK {
	return &UpdateGameSessionOK{}
}

/*UpdateGameSessionOK handles this case with default header values.

  OK
*/
type UpdateGameSessionOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *UpdateGameSessionOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGameSessionOK) ToJSONString() string {
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

func (o *UpdateGameSessionOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *UpdateGameSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateGameSessionBadRequest creates a UpdateGameSessionBadRequest with default headers values
func NewUpdateGameSessionBadRequest() *UpdateGameSessionBadRequest {
	return &UpdateGameSessionBadRequest{}
}

/*UpdateGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGameSessionBadRequest) ToJSONString() string {
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

func (o *UpdateGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateGameSessionUnauthorized creates a UpdateGameSessionUnauthorized with default headers values
func NewUpdateGameSessionUnauthorized() *UpdateGameSessionUnauthorized {
	return &UpdateGameSessionUnauthorized{}
}

/*UpdateGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGameSessionUnauthorized) ToJSONString() string {
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

func (o *UpdateGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateGameSessionForbidden creates a UpdateGameSessionForbidden with default headers values
func NewUpdateGameSessionForbidden() *UpdateGameSessionForbidden {
	return &UpdateGameSessionForbidden{}
}

/*UpdateGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type UpdateGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGameSessionForbidden) ToJSONString() string {
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

func (o *UpdateGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateGameSessionNotFound creates a UpdateGameSessionNotFound with default headers values
func NewUpdateGameSessionNotFound() *UpdateGameSessionNotFound {
	return &UpdateGameSessionNotFound{}
}

/*UpdateGameSessionNotFound handles this case with default header values.

  Not Found
*/
type UpdateGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGameSessionNotFound) ToJSONString() string {
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

func (o *UpdateGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateGameSessionInternalServerError creates a UpdateGameSessionInternalServerError with default headers values
func NewUpdateGameSessionInternalServerError() *UpdateGameSessionInternalServerError {
	return &UpdateGameSessionInternalServerError{}
}

/*UpdateGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] updateGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGameSessionInternalServerError) ToJSONString() string {
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

func (o *UpdateGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
