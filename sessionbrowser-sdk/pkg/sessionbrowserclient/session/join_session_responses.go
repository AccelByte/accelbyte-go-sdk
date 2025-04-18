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

// JoinSessionReader is a Reader for the JoinSession structure.
type JoinSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *JoinSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewJoinSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewJoinSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewJoinSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewJoinSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewJoinSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join returns an error %d: %s", response.Code(), string(data))
	}
}

// NewJoinSessionOK creates a JoinSessionOK with default headers values
func NewJoinSessionOK() *JoinSessionOK {
	return &JoinSessionOK{}
}

/*JoinSessionOK handles this case with default header values.

  session get
*/
type JoinSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *JoinSessionOK) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join][%d] joinSessionOK  %+v", 200, o.ToJSONString())
}

func (o *JoinSessionOK) ToJSONString() string {
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

func (o *JoinSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *JoinSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinSessionBadRequest creates a JoinSessionBadRequest with default headers values
func NewJoinSessionBadRequest() *JoinSessionBadRequest {
	return &JoinSessionBadRequest{}
}

/*JoinSessionBadRequest handles this case with default header values.

  malformed request
*/
type JoinSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *JoinSessionBadRequest) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join][%d] joinSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *JoinSessionBadRequest) ToJSONString() string {
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

func (o *JoinSessionBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *JoinSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinSessionForbidden creates a JoinSessionForbidden with default headers values
func NewJoinSessionForbidden() *JoinSessionForbidden {
	return &JoinSessionForbidden{}
}

/*JoinSessionForbidden handles this case with default header values.

  user is banned from joining session
*/
type JoinSessionForbidden struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *JoinSessionForbidden) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join][%d] joinSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *JoinSessionForbidden) ToJSONString() string {
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

func (o *JoinSessionForbidden) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *JoinSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinSessionNotFound creates a JoinSessionNotFound with default headers values
func NewJoinSessionNotFound() *JoinSessionNotFound {
	return &JoinSessionNotFound{}
}

/*JoinSessionNotFound handles this case with default header values.

  session not found
*/
type JoinSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *JoinSessionNotFound) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join][%d] joinSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *JoinSessionNotFound) ToJSONString() string {
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

func (o *JoinSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *JoinSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinSessionInternalServerError creates a JoinSessionInternalServerError with default headers values
func NewJoinSessionInternalServerError() *JoinSessionInternalServerError {
	return &JoinSessionInternalServerError{}
}

/*JoinSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type JoinSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *JoinSessionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join][%d] joinSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *JoinSessionInternalServerError) ToJSONString() string {
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

func (o *JoinSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *JoinSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
