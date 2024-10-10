// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// AddPlayerToSessionReader is a Reader for the AddPlayerToSession structure.
type AddPlayerToSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddPlayerToSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAddPlayerToSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddPlayerToSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddPlayerToSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddPlayerToSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddPlayerToSessionOK creates a AddPlayerToSessionOK with default headers values
func NewAddPlayerToSessionOK() *AddPlayerToSessionOK {
	return &AddPlayerToSessionOK{}
}

/*AddPlayerToSessionOK handles this case with default header values.

  session updated
*/
type AddPlayerToSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsAddPlayerResponse
}

func (o *AddPlayerToSessionOK) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player][%d] addPlayerToSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AddPlayerToSessionOK) ToJSONString() string {
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

func (o *AddPlayerToSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsAddPlayerResponse {
	return o.Payload
}

func (o *AddPlayerToSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsAddPlayerResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddPlayerToSessionBadRequest creates a AddPlayerToSessionBadRequest with default headers values
func NewAddPlayerToSessionBadRequest() *AddPlayerToSessionBadRequest {
	return &AddPlayerToSessionBadRequest{}
}

/*AddPlayerToSessionBadRequest handles this case with default header values.

  malformed request
*/
type AddPlayerToSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AddPlayerToSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player][%d] addPlayerToSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddPlayerToSessionBadRequest) ToJSONString() string {
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

func (o *AddPlayerToSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AddPlayerToSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddPlayerToSessionNotFound creates a AddPlayerToSessionNotFound with default headers values
func NewAddPlayerToSessionNotFound() *AddPlayerToSessionNotFound {
	return &AddPlayerToSessionNotFound{}
}

/*AddPlayerToSessionNotFound handles this case with default header values.

  session not found
*/
type AddPlayerToSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AddPlayerToSessionNotFound) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player][%d] addPlayerToSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AddPlayerToSessionNotFound) ToJSONString() string {
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

func (o *AddPlayerToSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AddPlayerToSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddPlayerToSessionInternalServerError creates a AddPlayerToSessionInternalServerError with default headers values
func NewAddPlayerToSessionInternalServerError() *AddPlayerToSessionInternalServerError {
	return &AddPlayerToSessionInternalServerError{}
}

/*AddPlayerToSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AddPlayerToSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AddPlayerToSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player][%d] addPlayerToSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddPlayerToSessionInternalServerError) ToJSONString() string {
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

func (o *AddPlayerToSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AddPlayerToSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
