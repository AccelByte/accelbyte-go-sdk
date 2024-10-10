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

// PatchUpdateGameSessionReader is a Reader for the PatchUpdateGameSession structure.
type PatchUpdateGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PatchUpdateGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPatchUpdateGameSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPatchUpdateGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPatchUpdateGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPatchUpdateGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPatchUpdateGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPatchUpdateGameSessionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPatchUpdateGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPatchUpdateGameSessionOK creates a PatchUpdateGameSessionOK with default headers values
func NewPatchUpdateGameSessionOK() *PatchUpdateGameSessionOK {
	return &PatchUpdateGameSessionOK{}
}

/*PatchUpdateGameSessionOK handles this case with default header values.

  OK
*/
type PatchUpdateGameSessionOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *PatchUpdateGameSessionOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionOK  %+v", 200, o.ToJSONString())
}

func (o *PatchUpdateGameSessionOK) ToJSONString() string {
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

func (o *PatchUpdateGameSessionOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *PatchUpdateGameSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionBadRequest creates a PatchUpdateGameSessionBadRequest with default headers values
func NewPatchUpdateGameSessionBadRequest() *PatchUpdateGameSessionBadRequest {
	return &PatchUpdateGameSessionBadRequest{}
}

/*PatchUpdateGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type PatchUpdateGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PatchUpdateGameSessionBadRequest) ToJSONString() string {
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

func (o *PatchUpdateGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionUnauthorized creates a PatchUpdateGameSessionUnauthorized with default headers values
func NewPatchUpdateGameSessionUnauthorized() *PatchUpdateGameSessionUnauthorized {
	return &PatchUpdateGameSessionUnauthorized{}
}

/*PatchUpdateGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type PatchUpdateGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PatchUpdateGameSessionUnauthorized) ToJSONString() string {
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

func (o *PatchUpdateGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionForbidden creates a PatchUpdateGameSessionForbidden with default headers values
func NewPatchUpdateGameSessionForbidden() *PatchUpdateGameSessionForbidden {
	return &PatchUpdateGameSessionForbidden{}
}

/*PatchUpdateGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type PatchUpdateGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PatchUpdateGameSessionForbidden) ToJSONString() string {
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

func (o *PatchUpdateGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionNotFound creates a PatchUpdateGameSessionNotFound with default headers values
func NewPatchUpdateGameSessionNotFound() *PatchUpdateGameSessionNotFound {
	return &PatchUpdateGameSessionNotFound{}
}

/*PatchUpdateGameSessionNotFound handles this case with default header values.

  Not Found
*/
type PatchUpdateGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PatchUpdateGameSessionNotFound) ToJSONString() string {
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

func (o *PatchUpdateGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionConflict creates a PatchUpdateGameSessionConflict with default headers values
func NewPatchUpdateGameSessionConflict() *PatchUpdateGameSessionConflict {
	return &PatchUpdateGameSessionConflict{}
}

/*PatchUpdateGameSessionConflict handles this case with default header values.

  Conflict
*/
type PatchUpdateGameSessionConflict struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionConflict) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionConflict  %+v", 409, o.ToJSONString())
}

func (o *PatchUpdateGameSessionConflict) ToJSONString() string {
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

func (o *PatchUpdateGameSessionConflict) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPatchUpdateGameSessionInternalServerError creates a PatchUpdateGameSessionInternalServerError with default headers values
func NewPatchUpdateGameSessionInternalServerError() *PatchUpdateGameSessionInternalServerError {
	return &PatchUpdateGameSessionInternalServerError{}
}

/*PatchUpdateGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PatchUpdateGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PatchUpdateGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] patchUpdateGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PatchUpdateGameSessionInternalServerError) ToJSONString() string {
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

func (o *PatchUpdateGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PatchUpdateGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
