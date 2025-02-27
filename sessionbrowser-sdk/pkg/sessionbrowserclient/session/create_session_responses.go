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

// CreateSessionReader is a Reader for the CreateSession structure.
type CreateSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateSessionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /sessionbrowser/namespaces/{namespace}/gamesession returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateSessionOK creates a CreateSessionOK with default headers values
func NewCreateSessionOK() *CreateSessionOK {
	return &CreateSessionOK{}
}

/*CreateSessionOK handles this case with default header values.

  session created
*/
type CreateSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *CreateSessionOK) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession][%d] createSessionOK  %+v", 200, o.ToJSONString())
}

func (o *CreateSessionOK) ToJSONString() string {
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

func (o *CreateSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *CreateSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSessionBadRequest creates a CreateSessionBadRequest with default headers values
func NewCreateSessionBadRequest() *CreateSessionBadRequest {
	return &CreateSessionBadRequest{}
}

/*CreateSessionBadRequest handles this case with default header values.

  malformed request
*/
type CreateSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *CreateSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession][%d] createSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateSessionBadRequest) ToJSONString() string {
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

func (o *CreateSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *CreateSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSessionForbidden creates a CreateSessionForbidden with default headers values
func NewCreateSessionForbidden() *CreateSessionForbidden {
	return &CreateSessionForbidden{}
}

/*CreateSessionForbidden handles this case with default header values.

  user is banned from creating session
*/
type CreateSessionForbidden struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *CreateSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession][%d] createSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateSessionForbidden) ToJSONString() string {
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

func (o *CreateSessionForbidden) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *CreateSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSessionConflict creates a CreateSessionConflict with default headers values
func NewCreateSessionConflict() *CreateSessionConflict {
	return &CreateSessionConflict{}
}

/*CreateSessionConflict handles this case with default header values.

  session already exists
*/
type CreateSessionConflict struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *CreateSessionConflict) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession][%d] createSessionConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateSessionConflict) ToJSONString() string {
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

func (o *CreateSessionConflict) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *CreateSessionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSessionInternalServerError creates a CreateSessionInternalServerError with default headers values
func NewCreateSessionInternalServerError() *CreateSessionInternalServerError {
	return &CreateSessionInternalServerError{}
}

/*CreateSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *CreateSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession][%d] createSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateSessionInternalServerError) ToJSONString() string {
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

func (o *CreateSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
