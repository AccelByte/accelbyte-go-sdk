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

// AppendTeamGameSessionReader is a Reader for the AppendTeamGameSession structure.
type AppendTeamGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AppendTeamGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAppendTeamGameSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAppendTeamGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAppendTeamGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAppendTeamGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAppendTeamGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAppendTeamGameSessionOK creates a AppendTeamGameSessionOK with default headers values
func NewAppendTeamGameSessionOK() *AppendTeamGameSessionOK {
	return &AppendTeamGameSessionOK{}
}

/*AppendTeamGameSessionOK handles this case with default header values.

  OK
*/
type AppendTeamGameSessionOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *AppendTeamGameSessionOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams][%d] appendTeamGameSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AppendTeamGameSessionOK) ToJSONString() string {
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

func (o *AppendTeamGameSessionOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *AppendTeamGameSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAppendTeamGameSessionUnauthorized creates a AppendTeamGameSessionUnauthorized with default headers values
func NewAppendTeamGameSessionUnauthorized() *AppendTeamGameSessionUnauthorized {
	return &AppendTeamGameSessionUnauthorized{}
}

/*AppendTeamGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type AppendTeamGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AppendTeamGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams][%d] appendTeamGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AppendTeamGameSessionUnauthorized) ToJSONString() string {
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

func (o *AppendTeamGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AppendTeamGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAppendTeamGameSessionForbidden creates a AppendTeamGameSessionForbidden with default headers values
func NewAppendTeamGameSessionForbidden() *AppendTeamGameSessionForbidden {
	return &AppendTeamGameSessionForbidden{}
}

/*AppendTeamGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type AppendTeamGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AppendTeamGameSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams][%d] appendTeamGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AppendTeamGameSessionForbidden) ToJSONString() string {
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

func (o *AppendTeamGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AppendTeamGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAppendTeamGameSessionNotFound creates a AppendTeamGameSessionNotFound with default headers values
func NewAppendTeamGameSessionNotFound() *AppendTeamGameSessionNotFound {
	return &AppendTeamGameSessionNotFound{}
}

/*AppendTeamGameSessionNotFound handles this case with default header values.

  Not Found
*/
type AppendTeamGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AppendTeamGameSessionNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams][%d] appendTeamGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AppendTeamGameSessionNotFound) ToJSONString() string {
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

func (o *AppendTeamGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AppendTeamGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAppendTeamGameSessionInternalServerError creates a AppendTeamGameSessionInternalServerError with default headers values
func NewAppendTeamGameSessionInternalServerError() *AppendTeamGameSessionInternalServerError {
	return &AppendTeamGameSessionInternalServerError{}
}

/*AppendTeamGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AppendTeamGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AppendTeamGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams][%d] appendTeamGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AppendTeamGameSessionInternalServerError) ToJSONString() string {
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

func (o *AppendTeamGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AppendTeamGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
