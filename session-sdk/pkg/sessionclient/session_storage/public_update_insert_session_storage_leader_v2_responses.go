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

// PublicUpdateInsertSessionStorageLeaderV2Reader is a Reader for the PublicUpdateInsertSessionStorageLeaderV2 structure.
type PublicUpdateInsertSessionStorageLeaderV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertSessionStorageLeaderV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertSessionStorageLeaderV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertSessionStorageLeaderV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertSessionStorageLeaderV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertSessionStorageLeaderV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertSessionStorageLeaderV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertSessionStorageLeaderV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertSessionStorageLeaderV2OK creates a PublicUpdateInsertSessionStorageLeaderV2OK with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2OK() *PublicUpdateInsertSessionStorageLeaderV2OK {
	return &PublicUpdateInsertSessionStorageLeaderV2OK{}
}

/*PublicUpdateInsertSessionStorageLeaderV2OK handles this case with default header values.

  OK
*/
type PublicUpdateInsertSessionStorageLeaderV2OK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertSessionStorageLeaderV2OK) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2OK) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2OK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderV2BadRequest creates a PublicUpdateInsertSessionStorageLeaderV2BadRequest with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2BadRequest() *PublicUpdateInsertSessionStorageLeaderV2BadRequest {
	return &PublicUpdateInsertSessionStorageLeaderV2BadRequest{}
}

/*PublicUpdateInsertSessionStorageLeaderV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertSessionStorageLeaderV2BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2BadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderV2Unauthorized creates a PublicUpdateInsertSessionStorageLeaderV2Unauthorized with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2Unauthorized() *PublicUpdateInsertSessionStorageLeaderV2Unauthorized {
	return &PublicUpdateInsertSessionStorageLeaderV2Unauthorized{}
}

/*PublicUpdateInsertSessionStorageLeaderV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertSessionStorageLeaderV2Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Unauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderV2Forbidden creates a PublicUpdateInsertSessionStorageLeaderV2Forbidden with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2Forbidden() *PublicUpdateInsertSessionStorageLeaderV2Forbidden {
	return &PublicUpdateInsertSessionStorageLeaderV2Forbidden{}
}

/*PublicUpdateInsertSessionStorageLeaderV2Forbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertSessionStorageLeaderV2Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Forbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderV2NotFound creates a PublicUpdateInsertSessionStorageLeaderV2NotFound with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2NotFound() *PublicUpdateInsertSessionStorageLeaderV2NotFound {
	return &PublicUpdateInsertSessionStorageLeaderV2NotFound{}
}

/*PublicUpdateInsertSessionStorageLeaderV2NotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertSessionStorageLeaderV2NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2NotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderV2InternalServerError creates a PublicUpdateInsertSessionStorageLeaderV2InternalServerError with default headers values
func NewPublicUpdateInsertSessionStorageLeaderV2InternalServerError() *PublicUpdateInsertSessionStorageLeaderV2InternalServerError {
	return &PublicUpdateInsertSessionStorageLeaderV2InternalServerError{}
}

/*PublicUpdateInsertSessionStorageLeaderV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertSessionStorageLeaderV2InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderV2InternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderV2InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
