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

// PublicReplaceSessionStorageLeaderV2Reader is a Reader for the PublicReplaceSessionStorageLeaderV2 structure.
type PublicReplaceSessionStorageLeaderV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReplaceSessionStorageLeaderV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicReplaceSessionStorageLeaderV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReplaceSessionStorageLeaderV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicReplaceSessionStorageLeaderV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicReplaceSessionStorageLeaderV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicReplaceSessionStorageLeaderV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicReplaceSessionStorageLeaderV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReplaceSessionStorageLeaderV2OK creates a PublicReplaceSessionStorageLeaderV2OK with default headers values
func NewPublicReplaceSessionStorageLeaderV2OK() *PublicReplaceSessionStorageLeaderV2OK {
	return &PublicReplaceSessionStorageLeaderV2OK{}
}

/*PublicReplaceSessionStorageLeaderV2OK handles this case with default header values.

  OK
*/
type PublicReplaceSessionStorageLeaderV2OK struct {
	Payload map[string]interface{}
}

func (o *PublicReplaceSessionStorageLeaderV2OK) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2OK) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2OK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageLeaderV2BadRequest creates a PublicReplaceSessionStorageLeaderV2BadRequest with default headers values
func NewPublicReplaceSessionStorageLeaderV2BadRequest() *PublicReplaceSessionStorageLeaderV2BadRequest {
	return &PublicReplaceSessionStorageLeaderV2BadRequest{}
}

/*PublicReplaceSessionStorageLeaderV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicReplaceSessionStorageLeaderV2BadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageLeaderV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2BadRequest) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2BadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageLeaderV2Unauthorized creates a PublicReplaceSessionStorageLeaderV2Unauthorized with default headers values
func NewPublicReplaceSessionStorageLeaderV2Unauthorized() *PublicReplaceSessionStorageLeaderV2Unauthorized {
	return &PublicReplaceSessionStorageLeaderV2Unauthorized{}
}

/*PublicReplaceSessionStorageLeaderV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicReplaceSessionStorageLeaderV2Unauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageLeaderV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2Unauthorized) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2Unauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageLeaderV2Forbidden creates a PublicReplaceSessionStorageLeaderV2Forbidden with default headers values
func NewPublicReplaceSessionStorageLeaderV2Forbidden() *PublicReplaceSessionStorageLeaderV2Forbidden {
	return &PublicReplaceSessionStorageLeaderV2Forbidden{}
}

/*PublicReplaceSessionStorageLeaderV2Forbidden handles this case with default header values.

  Forbidden
*/
type PublicReplaceSessionStorageLeaderV2Forbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageLeaderV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2Forbidden) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2Forbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageLeaderV2NotFound creates a PublicReplaceSessionStorageLeaderV2NotFound with default headers values
func NewPublicReplaceSessionStorageLeaderV2NotFound() *PublicReplaceSessionStorageLeaderV2NotFound {
	return &PublicReplaceSessionStorageLeaderV2NotFound{}
}

/*PublicReplaceSessionStorageLeaderV2NotFound handles this case with default header values.

  Not Found
*/
type PublicReplaceSessionStorageLeaderV2NotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageLeaderV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2NotFound) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2NotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReplaceSessionStorageLeaderV2InternalServerError creates a PublicReplaceSessionStorageLeaderV2InternalServerError with default headers values
func NewPublicReplaceSessionStorageLeaderV2InternalServerError() *PublicReplaceSessionStorageLeaderV2InternalServerError {
	return &PublicReplaceSessionStorageLeaderV2InternalServerError{}
}

/*PublicReplaceSessionStorageLeaderV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicReplaceSessionStorageLeaderV2InternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicReplaceSessionStorageLeaderV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicReplaceSessionStorageLeaderV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicReplaceSessionStorageLeaderV2InternalServerError) ToJSONString() string {
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

func (o *PublicReplaceSessionStorageLeaderV2InternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicReplaceSessionStorageLeaderV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
