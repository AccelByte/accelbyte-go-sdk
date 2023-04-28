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

// GetGameSessionReader is a Reader for the GetGameSession structure.
type GetGameSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGameSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGameSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGameSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGameSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGameSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGameSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGameSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGameSessionOK creates a GetGameSessionOK with default headers values
func NewGetGameSessionOK() *GetGameSessionOK {
	return &GetGameSessionOK{}
}

/*GetGameSessionOK handles this case with default header values.

  OK
*/
type GetGameSessionOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *GetGameSessionOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionOK  %+v", 200, o.ToJSONString())
}

func (o *GetGameSessionOK) ToJSONString() string {
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

func (o *GetGameSessionOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *GetGameSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionBadRequest creates a GetGameSessionBadRequest with default headers values
func NewGetGameSessionBadRequest() *GetGameSessionBadRequest {
	return &GetGameSessionBadRequest{}
}

/*GetGameSessionBadRequest handles this case with default header values.

  Bad Request
*/
type GetGameSessionBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGameSessionBadRequest) ToJSONString() string {
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

func (o *GetGameSessionBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionUnauthorized creates a GetGameSessionUnauthorized with default headers values
func NewGetGameSessionUnauthorized() *GetGameSessionUnauthorized {
	return &GetGameSessionUnauthorized{}
}

/*GetGameSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetGameSessionUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGameSessionUnauthorized) ToJSONString() string {
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

func (o *GetGameSessionUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionForbidden creates a GetGameSessionForbidden with default headers values
func NewGetGameSessionForbidden() *GetGameSessionForbidden {
	return &GetGameSessionForbidden{}
}

/*GetGameSessionForbidden handles this case with default header values.

  Forbidden
*/
type GetGameSessionForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGameSessionForbidden) ToJSONString() string {
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

func (o *GetGameSessionForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionNotFound creates a GetGameSessionNotFound with default headers values
func NewGetGameSessionNotFound() *GetGameSessionNotFound {
	return &GetGameSessionNotFound{}
}

/*GetGameSessionNotFound handles this case with default header values.

  Not Found
*/
type GetGameSessionNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGameSessionNotFound) ToJSONString() string {
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

func (o *GetGameSessionNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameSessionInternalServerError creates a GetGameSessionInternalServerError with default headers values
func NewGetGameSessionInternalServerError() *GetGameSessionInternalServerError {
	return &GetGameSessionInternalServerError{}
}

/*GetGameSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGameSessionInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}][%d] getGameSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGameSessionInternalServerError) ToJSONString() string {
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

func (o *GetGameSessionInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
