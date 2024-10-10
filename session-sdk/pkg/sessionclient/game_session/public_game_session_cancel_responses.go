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

// PublicGameSessionCancelReader is a Reader for the PublicGameSessionCancel structure.
type PublicGameSessionCancelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGameSessionCancelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicGameSessionCancelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGameSessionCancelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGameSessionCancelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGameSessionCancelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGameSessionCancelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGameSessionCancelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGameSessionCancelNoContent creates a PublicGameSessionCancelNoContent with default headers values
func NewPublicGameSessionCancelNoContent() *PublicGameSessionCancelNoContent {
	return &PublicGameSessionCancelNoContent{}
}

/*PublicGameSessionCancelNoContent handles this case with default header values.

  No Content
*/
type PublicGameSessionCancelNoContent struct {
}

func (o *PublicGameSessionCancelNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelNoContent ", 204)
}

func (o *PublicGameSessionCancelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGameSessionCancelBadRequest creates a PublicGameSessionCancelBadRequest with default headers values
func NewPublicGameSessionCancelBadRequest() *PublicGameSessionCancelBadRequest {
	return &PublicGameSessionCancelBadRequest{}
}

/*PublicGameSessionCancelBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGameSessionCancelBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionCancelBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGameSessionCancelBadRequest) ToJSONString() string {
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

func (o *PublicGameSessionCancelBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionCancelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionCancelUnauthorized creates a PublicGameSessionCancelUnauthorized with default headers values
func NewPublicGameSessionCancelUnauthorized() *PublicGameSessionCancelUnauthorized {
	return &PublicGameSessionCancelUnauthorized{}
}

/*PublicGameSessionCancelUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGameSessionCancelUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionCancelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGameSessionCancelUnauthorized) ToJSONString() string {
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

func (o *PublicGameSessionCancelUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionCancelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionCancelForbidden creates a PublicGameSessionCancelForbidden with default headers values
func NewPublicGameSessionCancelForbidden() *PublicGameSessionCancelForbidden {
	return &PublicGameSessionCancelForbidden{}
}

/*PublicGameSessionCancelForbidden handles this case with default header values.

  Forbidden
*/
type PublicGameSessionCancelForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionCancelForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGameSessionCancelForbidden) ToJSONString() string {
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

func (o *PublicGameSessionCancelForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionCancelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionCancelNotFound creates a PublicGameSessionCancelNotFound with default headers values
func NewPublicGameSessionCancelNotFound() *PublicGameSessionCancelNotFound {
	return &PublicGameSessionCancelNotFound{}
}

/*PublicGameSessionCancelNotFound handles this case with default header values.

  Not Found
*/
type PublicGameSessionCancelNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionCancelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGameSessionCancelNotFound) ToJSONString() string {
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

func (o *PublicGameSessionCancelNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionCancelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionCancelInternalServerError creates a PublicGameSessionCancelInternalServerError with default headers values
func NewPublicGameSessionCancelInternalServerError() *PublicGameSessionCancelInternalServerError {
	return &PublicGameSessionCancelInternalServerError{}
}

/*PublicGameSessionCancelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGameSessionCancelInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionCancelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel][%d] publicGameSessionCancelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGameSessionCancelInternalServerError) ToJSONString() string {
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

func (o *PublicGameSessionCancelInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionCancelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
