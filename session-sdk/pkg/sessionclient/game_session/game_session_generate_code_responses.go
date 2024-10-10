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

// GameSessionGenerateCodeReader is a Reader for the GameSessionGenerateCode structure.
type GameSessionGenerateCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GameSessionGenerateCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGameSessionGenerateCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGameSessionGenerateCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGameSessionGenerateCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGameSessionGenerateCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGameSessionGenerateCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGameSessionGenerateCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGameSessionGenerateCodeOK creates a GameSessionGenerateCodeOK with default headers values
func NewGameSessionGenerateCodeOK() *GameSessionGenerateCodeOK {
	return &GameSessionGenerateCodeOK{}
}

/*GameSessionGenerateCodeOK handles this case with default header values.

  OK
*/
type GameSessionGenerateCodeOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *GameSessionGenerateCodeOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeOK  %+v", 200, o.ToJSONString())
}

func (o *GameSessionGenerateCodeOK) ToJSONString() string {
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

func (o *GameSessionGenerateCodeOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *GameSessionGenerateCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGameSessionGenerateCodeBadRequest creates a GameSessionGenerateCodeBadRequest with default headers values
func NewGameSessionGenerateCodeBadRequest() *GameSessionGenerateCodeBadRequest {
	return &GameSessionGenerateCodeBadRequest{}
}

/*GameSessionGenerateCodeBadRequest handles this case with default header values.

  Bad Request
*/
type GameSessionGenerateCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GameSessionGenerateCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GameSessionGenerateCodeBadRequest) ToJSONString() string {
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

func (o *GameSessionGenerateCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GameSessionGenerateCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGameSessionGenerateCodeUnauthorized creates a GameSessionGenerateCodeUnauthorized with default headers values
func NewGameSessionGenerateCodeUnauthorized() *GameSessionGenerateCodeUnauthorized {
	return &GameSessionGenerateCodeUnauthorized{}
}

/*GameSessionGenerateCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type GameSessionGenerateCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GameSessionGenerateCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GameSessionGenerateCodeUnauthorized) ToJSONString() string {
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

func (o *GameSessionGenerateCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GameSessionGenerateCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGameSessionGenerateCodeForbidden creates a GameSessionGenerateCodeForbidden with default headers values
func NewGameSessionGenerateCodeForbidden() *GameSessionGenerateCodeForbidden {
	return &GameSessionGenerateCodeForbidden{}
}

/*GameSessionGenerateCodeForbidden handles this case with default header values.

  Forbidden
*/
type GameSessionGenerateCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GameSessionGenerateCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *GameSessionGenerateCodeForbidden) ToJSONString() string {
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

func (o *GameSessionGenerateCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GameSessionGenerateCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGameSessionGenerateCodeNotFound creates a GameSessionGenerateCodeNotFound with default headers values
func NewGameSessionGenerateCodeNotFound() *GameSessionGenerateCodeNotFound {
	return &GameSessionGenerateCodeNotFound{}
}

/*GameSessionGenerateCodeNotFound handles this case with default header values.

  Not Found
*/
type GameSessionGenerateCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GameSessionGenerateCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *GameSessionGenerateCodeNotFound) ToJSONString() string {
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

func (o *GameSessionGenerateCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GameSessionGenerateCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGameSessionGenerateCodeInternalServerError creates a GameSessionGenerateCodeInternalServerError with default headers values
func NewGameSessionGenerateCodeInternalServerError() *GameSessionGenerateCodeInternalServerError {
	return &GameSessionGenerateCodeInternalServerError{}
}

/*GameSessionGenerateCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GameSessionGenerateCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GameSessionGenerateCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] gameSessionGenerateCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GameSessionGenerateCodeInternalServerError) ToJSONString() string {
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

func (o *GameSessionGenerateCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GameSessionGenerateCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
