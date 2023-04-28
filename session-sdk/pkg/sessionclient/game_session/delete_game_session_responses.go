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

// DeleteGameSessionReader is a Reader for the DeleteGameSession structure.
type DeleteGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGameSessionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGameSessionNoContent creates a DeleteGameSessionNoContent with default headers values
func NewDeleteGameSessionNoContent() *DeleteGameSessionNoContent {
	return &DeleteGameSessionNoContent{}
}

/*DeleteGameSessionNoContent handles this case with default header values.

  No Content
*/
type DeleteGameSessionNoContent struct {
}

func (o *DeleteGameSessionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] deleteGameSessionNoContent ", 204)
}

func (o *DeleteGameSessionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGameSessionUnauthorized creates a DeleteGameSessionUnauthorized with default headers values
func NewDeleteGameSessionUnauthorized() *DeleteGameSessionUnauthorized {
	return &DeleteGameSessionUnauthorized{}
}

/*DeleteGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *DeleteGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] deleteGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGameSessionUnauthorized) ToJSONString() string {
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

func (o *DeleteGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGameSessionForbidden creates a DeleteGameSessionForbidden with default headers values
func NewDeleteGameSessionForbidden() *DeleteGameSessionForbidden {
	return &DeleteGameSessionForbidden{}
}

/*DeleteGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type DeleteGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *DeleteGameSessionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] deleteGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGameSessionForbidden) ToJSONString() string {
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

func (o *DeleteGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGameSessionInternalServerError creates a DeleteGameSessionInternalServerError with default headers values
func NewDeleteGameSessionInternalServerError() *DeleteGameSessionInternalServerError {
	return &DeleteGameSessionInternalServerError{}
}

/*DeleteGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *DeleteGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] deleteGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGameSessionInternalServerError) ToJSONString() string {
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

func (o *DeleteGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
