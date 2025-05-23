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

// PublicGameSessionRejectReader is a Reader for the PublicGameSessionReject structure.
type PublicGameSessionRejectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGameSessionRejectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicGameSessionRejectNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGameSessionRejectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGameSessionRejectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGameSessionRejectForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGameSessionRejectNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGameSessionRejectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGameSessionRejectNoContent creates a PublicGameSessionRejectNoContent with default headers values
func NewPublicGameSessionRejectNoContent() *PublicGameSessionRejectNoContent {
	return &PublicGameSessionRejectNoContent{}
}

/*PublicGameSessionRejectNoContent handles this case with default header values.

  No Content
*/
type PublicGameSessionRejectNoContent struct {
}

func (o *PublicGameSessionRejectNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectNoContent ", 204)
}

func (o *PublicGameSessionRejectNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGameSessionRejectBadRequest creates a PublicGameSessionRejectBadRequest with default headers values
func NewPublicGameSessionRejectBadRequest() *PublicGameSessionRejectBadRequest {
	return &PublicGameSessionRejectBadRequest{}
}

/*PublicGameSessionRejectBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGameSessionRejectBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionRejectBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGameSessionRejectBadRequest) ToJSONString() string {
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

func (o *PublicGameSessionRejectBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionRejectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionRejectUnauthorized creates a PublicGameSessionRejectUnauthorized with default headers values
func NewPublicGameSessionRejectUnauthorized() *PublicGameSessionRejectUnauthorized {
	return &PublicGameSessionRejectUnauthorized{}
}

/*PublicGameSessionRejectUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGameSessionRejectUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionRejectUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGameSessionRejectUnauthorized) ToJSONString() string {
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

func (o *PublicGameSessionRejectUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionRejectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionRejectForbidden creates a PublicGameSessionRejectForbidden with default headers values
func NewPublicGameSessionRejectForbidden() *PublicGameSessionRejectForbidden {
	return &PublicGameSessionRejectForbidden{}
}

/*PublicGameSessionRejectForbidden handles this case with default header values.

  Forbidden
*/
type PublicGameSessionRejectForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionRejectForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGameSessionRejectForbidden) ToJSONString() string {
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

func (o *PublicGameSessionRejectForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionRejectForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionRejectNotFound creates a PublicGameSessionRejectNotFound with default headers values
func NewPublicGameSessionRejectNotFound() *PublicGameSessionRejectNotFound {
	return &PublicGameSessionRejectNotFound{}
}

/*PublicGameSessionRejectNotFound handles this case with default header values.

  Not Found
*/
type PublicGameSessionRejectNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionRejectNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGameSessionRejectNotFound) ToJSONString() string {
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

func (o *PublicGameSessionRejectNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionRejectNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionRejectInternalServerError creates a PublicGameSessionRejectInternalServerError with default headers values
func NewPublicGameSessionRejectInternalServerError() *PublicGameSessionRejectInternalServerError {
	return &PublicGameSessionRejectInternalServerError{}
}

/*PublicGameSessionRejectInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGameSessionRejectInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionRejectInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject][%d] publicGameSessionRejectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGameSessionRejectInternalServerError) ToJSONString() string {
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

func (o *PublicGameSessionRejectInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionRejectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
