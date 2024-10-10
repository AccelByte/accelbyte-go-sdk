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

// CreateGameSessionReader is a Reader for the CreateGameSession structure.
type CreateGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateGameSessionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesession returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateGameSessionCreated creates a CreateGameSessionCreated with default headers values
func NewCreateGameSessionCreated() *CreateGameSessionCreated {
	return &CreateGameSessionCreated{}
}

/*CreateGameSessionCreated handles this case with default header values.

  Created
*/
type CreateGameSessionCreated struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *CreateGameSessionCreated) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesession][%d] createGameSessionCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateGameSessionCreated) ToJSONString() string {
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

func (o *CreateGameSessionCreated) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *CreateGameSessionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGameSessionBadRequest creates a CreateGameSessionBadRequest with default headers values
func NewCreateGameSessionBadRequest() *CreateGameSessionBadRequest {
	return &CreateGameSessionBadRequest{}
}

/*CreateGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type CreateGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *CreateGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesession][%d] createGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateGameSessionBadRequest) ToJSONString() string {
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

func (o *CreateGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGameSessionUnauthorized creates a CreateGameSessionUnauthorized with default headers values
func NewCreateGameSessionUnauthorized() *CreateGameSessionUnauthorized {
	return &CreateGameSessionUnauthorized{}
}

/*CreateGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *CreateGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesession][%d] createGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateGameSessionUnauthorized) ToJSONString() string {
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

func (o *CreateGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGameSessionForbidden creates a CreateGameSessionForbidden with default headers values
func NewCreateGameSessionForbidden() *CreateGameSessionForbidden {
	return &CreateGameSessionForbidden{}
}

/*CreateGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type CreateGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *CreateGameSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesession][%d] createGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateGameSessionForbidden) ToJSONString() string {
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

func (o *CreateGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGameSessionInternalServerError creates a CreateGameSessionInternalServerError with default headers values
func NewCreateGameSessionInternalServerError() *CreateGameSessionInternalServerError {
	return &CreateGameSessionInternalServerError{}
}

/*CreateGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *CreateGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesession][%d] createGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateGameSessionInternalServerError) ToJSONString() string {
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

func (o *CreateGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
