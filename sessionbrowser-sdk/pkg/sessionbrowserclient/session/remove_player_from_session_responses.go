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

// RemovePlayerFromSessionReader is a Reader for the RemovePlayerFromSession structure.
type RemovePlayerFromSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RemovePlayerFromSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRemovePlayerFromSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRemovePlayerFromSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRemovePlayerFromSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRemovePlayerFromSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRemovePlayerFromSessionOK creates a RemovePlayerFromSessionOK with default headers values
func NewRemovePlayerFromSessionOK() *RemovePlayerFromSessionOK {
	return &RemovePlayerFromSessionOK{}
}

/*RemovePlayerFromSessionOK handles this case with default header values.

  player removed
*/
type RemovePlayerFromSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsAddPlayerResponse
}

func (o *RemovePlayerFromSessionOK) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}][%d] removePlayerFromSessionOK  %+v", 200, o.ToJSONString())
}

func (o *RemovePlayerFromSessionOK) ToJSONString() string {
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

func (o *RemovePlayerFromSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsAddPlayerResponse {
	return o.Payload
}

func (o *RemovePlayerFromSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemovePlayerFromSessionBadRequest creates a RemovePlayerFromSessionBadRequest with default headers values
func NewRemovePlayerFromSessionBadRequest() *RemovePlayerFromSessionBadRequest {
	return &RemovePlayerFromSessionBadRequest{}
}

/*RemovePlayerFromSessionBadRequest handles this case with default header values.

  malformed request
*/
type RemovePlayerFromSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *RemovePlayerFromSessionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}][%d] removePlayerFromSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RemovePlayerFromSessionBadRequest) ToJSONString() string {
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

func (o *RemovePlayerFromSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *RemovePlayerFromSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemovePlayerFromSessionNotFound creates a RemovePlayerFromSessionNotFound with default headers values
func NewRemovePlayerFromSessionNotFound() *RemovePlayerFromSessionNotFound {
	return &RemovePlayerFromSessionNotFound{}
}

/*RemovePlayerFromSessionNotFound handles this case with default header values.

  session not found
*/
type RemovePlayerFromSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *RemovePlayerFromSessionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}][%d] removePlayerFromSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *RemovePlayerFromSessionNotFound) ToJSONString() string {
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

func (o *RemovePlayerFromSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *RemovePlayerFromSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemovePlayerFromSessionInternalServerError creates a RemovePlayerFromSessionInternalServerError with default headers values
func NewRemovePlayerFromSessionInternalServerError() *RemovePlayerFromSessionInternalServerError {
	return &RemovePlayerFromSessionInternalServerError{}
}

/*RemovePlayerFromSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RemovePlayerFromSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *RemovePlayerFromSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}][%d] removePlayerFromSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RemovePlayerFromSessionInternalServerError) ToJSONString() string {
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

func (o *RemovePlayerFromSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *RemovePlayerFromSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
