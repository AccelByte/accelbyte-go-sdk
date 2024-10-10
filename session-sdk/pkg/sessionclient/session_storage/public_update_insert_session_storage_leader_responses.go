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

// PublicUpdateInsertSessionStorageLeaderReader is a Reader for the PublicUpdateInsertSessionStorageLeader structure.
type PublicUpdateInsertSessionStorageLeaderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateInsertSessionStorageLeaderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateInsertSessionStorageLeaderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateInsertSessionStorageLeaderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateInsertSessionStorageLeaderUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateInsertSessionStorageLeaderForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateInsertSessionStorageLeaderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateInsertSessionStorageLeaderInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateInsertSessionStorageLeaderOK creates a PublicUpdateInsertSessionStorageLeaderOK with default headers values
func NewPublicUpdateInsertSessionStorageLeaderOK() *PublicUpdateInsertSessionStorageLeaderOK {
	return &PublicUpdateInsertSessionStorageLeaderOK{}
}

/*PublicUpdateInsertSessionStorageLeaderOK handles this case with default header values.

  OK
*/
type PublicUpdateInsertSessionStorageLeaderOK struct {
	Payload map[string]interface{}
}

func (o *PublicUpdateInsertSessionStorageLeaderOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderOK) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderBadRequest creates a PublicUpdateInsertSessionStorageLeaderBadRequest with default headers values
func NewPublicUpdateInsertSessionStorageLeaderBadRequest() *PublicUpdateInsertSessionStorageLeaderBadRequest {
	return &PublicUpdateInsertSessionStorageLeaderBadRequest{}
}

/*PublicUpdateInsertSessionStorageLeaderBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateInsertSessionStorageLeaderBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderBadRequest) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderUnauthorized creates a PublicUpdateInsertSessionStorageLeaderUnauthorized with default headers values
func NewPublicUpdateInsertSessionStorageLeaderUnauthorized() *PublicUpdateInsertSessionStorageLeaderUnauthorized {
	return &PublicUpdateInsertSessionStorageLeaderUnauthorized{}
}

/*PublicUpdateInsertSessionStorageLeaderUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateInsertSessionStorageLeaderUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderForbidden creates a PublicUpdateInsertSessionStorageLeaderForbidden with default headers values
func NewPublicUpdateInsertSessionStorageLeaderForbidden() *PublicUpdateInsertSessionStorageLeaderForbidden {
	return &PublicUpdateInsertSessionStorageLeaderForbidden{}
}

/*PublicUpdateInsertSessionStorageLeaderForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateInsertSessionStorageLeaderForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderForbidden) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderNotFound creates a PublicUpdateInsertSessionStorageLeaderNotFound with default headers values
func NewPublicUpdateInsertSessionStorageLeaderNotFound() *PublicUpdateInsertSessionStorageLeaderNotFound {
	return &PublicUpdateInsertSessionStorageLeaderNotFound{}
}

/*PublicUpdateInsertSessionStorageLeaderNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateInsertSessionStorageLeaderNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderNotFound) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderNotFound) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateInsertSessionStorageLeaderInternalServerError creates a PublicUpdateInsertSessionStorageLeaderInternalServerError with default headers values
func NewPublicUpdateInsertSessionStorageLeaderInternalServerError() *PublicUpdateInsertSessionStorageLeaderInternalServerError {
	return &PublicUpdateInsertSessionStorageLeaderInternalServerError{}
}

/*PublicUpdateInsertSessionStorageLeaderInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateInsertSessionStorageLeaderInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateInsertSessionStorageLeaderInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader][%d] publicUpdateInsertSessionStorageLeaderInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateInsertSessionStorageLeaderInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateInsertSessionStorageLeaderInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateInsertSessionStorageLeaderInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
