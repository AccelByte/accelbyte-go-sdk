// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

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

// PublicUpdateInsertSessionStorageUserV2Reader is a Reader for the PublicUpdateInsertSessionStorageUserV2 structure.
type PublicUpdateInsertSessionStorageUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertSessionStorageUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertSessionStorageUserV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertSessionStorageUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertSessionStorageUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertSessionStorageUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertSessionStorageUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertSessionStorageUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertSessionStorageUserV2OK creates a PublicUpdateInsertSessionStorageUserV2OK with default headers values
func NewPublicUpdateInsertSessionStorageUserV2OK() *PublicUpdateInsertSessionStorageUserV2OK {
	return &PublicUpdateInsertSessionStorageUserV2OK{}
}

/*PublicUpdateInsertSessionStorageUserV2OK handles this case with default header values.

  OK
*/
type PublicUpdateInsertSessionStorageUserV2OK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertSessionStorageUserV2OK) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2OK) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2OK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateInsertSessionStorageUserV2BadRequest creates a PublicUpdateInsertSessionStorageUserV2BadRequest with default headers values
func NewPublicUpdateInsertSessionStorageUserV2BadRequest() *PublicUpdateInsertSessionStorageUserV2BadRequest {
	return &PublicUpdateInsertSessionStorageUserV2BadRequest{}
}

/*PublicUpdateInsertSessionStorageUserV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertSessionStorageUserV2BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUserV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2BadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageUserV2Unauthorized creates a PublicUpdateInsertSessionStorageUserV2Unauthorized with default headers values
func NewPublicUpdateInsertSessionStorageUserV2Unauthorized() *PublicUpdateInsertSessionStorageUserV2Unauthorized {
	return &PublicUpdateInsertSessionStorageUserV2Unauthorized{}
}

/*PublicUpdateInsertSessionStorageUserV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertSessionStorageUserV2Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2Unauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageUserV2Forbidden creates a PublicUpdateInsertSessionStorageUserV2Forbidden with default headers values
func NewPublicUpdateInsertSessionStorageUserV2Forbidden() *PublicUpdateInsertSessionStorageUserV2Forbidden {
	return &PublicUpdateInsertSessionStorageUserV2Forbidden{}
}

/*PublicUpdateInsertSessionStorageUserV2Forbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertSessionStorageUserV2Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUserV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2Forbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageUserV2NotFound creates a PublicUpdateInsertSessionStorageUserV2NotFound with default headers values
func NewPublicUpdateInsertSessionStorageUserV2NotFound() *PublicUpdateInsertSessionStorageUserV2NotFound {
	return &PublicUpdateInsertSessionStorageUserV2NotFound{}
}

/*PublicUpdateInsertSessionStorageUserV2NotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertSessionStorageUserV2NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUserV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2NotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageUserV2InternalServerError creates a PublicUpdateInsertSessionStorageUserV2InternalServerError with default headers values
func NewPublicUpdateInsertSessionStorageUserV2InternalServerError() *PublicUpdateInsertSessionStorageUserV2InternalServerError {
	return &PublicUpdateInsertSessionStorageUserV2InternalServerError{}
}

/*PublicUpdateInsertSessionStorageUserV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertSessionStorageUserV2InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicUpdateInsertSessionStorageUserV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageUserV2InternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageUserV2InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
