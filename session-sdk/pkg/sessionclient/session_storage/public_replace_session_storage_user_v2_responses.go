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

// PublicReplaceSessionStorageUserV2Reader is a Reader for the PublicReplaceSessionStorageUserV2 structure.
type PublicReplaceSessionStorageUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReplaceSessionStorageUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicReplaceSessionStorageUserV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReplaceSessionStorageUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicReplaceSessionStorageUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicReplaceSessionStorageUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicReplaceSessionStorageUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicReplaceSessionStorageUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReplaceSessionStorageUserV2OK creates a PublicReplaceSessionStorageUserV2OK with default headers values
func NewPublicReplaceSessionStorageUserV2OK() *PublicReplaceSessionStorageUserV2OK {
	return &PublicReplaceSessionStorageUserV2OK{}
}

/*PublicReplaceSessionStorageUserV2OK handles this case with default header values.

  OK
*/
type PublicReplaceSessionStorageUserV2OK struct {
	Payload map[string]interface{}
}

func (o *PublicReplaceSessionStorageUserV2OK) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2OK) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2OK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageUserV2BadRequest creates a PublicReplaceSessionStorageUserV2BadRequest with default headers values
func NewPublicReplaceSessionStorageUserV2BadRequest() *PublicReplaceSessionStorageUserV2BadRequest {
	return &PublicReplaceSessionStorageUserV2BadRequest{}
}

/*PublicReplaceSessionStorageUserV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicReplaceSessionStorageUserV2BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageUserV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2BadRequest) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageUserV2Unauthorized creates a PublicReplaceSessionStorageUserV2Unauthorized with default headers values
func NewPublicReplaceSessionStorageUserV2Unauthorized() *PublicReplaceSessionStorageUserV2Unauthorized {
	return &PublicReplaceSessionStorageUserV2Unauthorized{}
}

/*PublicReplaceSessionStorageUserV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicReplaceSessionStorageUserV2Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2Unauthorized) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageUserV2Forbidden creates a PublicReplaceSessionStorageUserV2Forbidden with default headers values
func NewPublicReplaceSessionStorageUserV2Forbidden() *PublicReplaceSessionStorageUserV2Forbidden {
	return &PublicReplaceSessionStorageUserV2Forbidden{}
}

/*PublicReplaceSessionStorageUserV2Forbidden handles this case with default header values.

  Forbidden
*/
type PublicReplaceSessionStorageUserV2Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageUserV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2Forbidden) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageUserV2NotFound creates a PublicReplaceSessionStorageUserV2NotFound with default headers values
func NewPublicReplaceSessionStorageUserV2NotFound() *PublicReplaceSessionStorageUserV2NotFound {
	return &PublicReplaceSessionStorageUserV2NotFound{}
}

/*PublicReplaceSessionStorageUserV2NotFound handles this case with default header values.

  Not Found
*/
type PublicReplaceSessionStorageUserV2NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageUserV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2NotFound) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageUserV2InternalServerError creates a PublicReplaceSessionStorageUserV2InternalServerError with default headers values
func NewPublicReplaceSessionStorageUserV2InternalServerError() *PublicReplaceSessionStorageUserV2InternalServerError {
	return &PublicReplaceSessionStorageUserV2InternalServerError{}
}

/*PublicReplaceSessionStorageUserV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicReplaceSessionStorageUserV2InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}][%d] publicReplaceSessionStorageUserV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageUserV2InternalServerError) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageUserV2InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
