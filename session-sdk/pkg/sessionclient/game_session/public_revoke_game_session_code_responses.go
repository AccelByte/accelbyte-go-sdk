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

// PublicRevokeGameSessionCodeReader is a Reader for the PublicRevokeGameSessionCode structure.
type PublicRevokeGameSessionCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRevokeGameSessionCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicRevokeGameSessionCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicRevokeGameSessionCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicRevokeGameSessionCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicRevokeGameSessionCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicRevokeGameSessionCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicRevokeGameSessionCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRevokeGameSessionCodeOK creates a PublicRevokeGameSessionCodeOK with default headers values
func NewPublicRevokeGameSessionCodeOK() *PublicRevokeGameSessionCodeOK {
	return &PublicRevokeGameSessionCodeOK{}
}

/*PublicRevokeGameSessionCodeOK handles this case with default header values.

  OK
*/
type PublicRevokeGameSessionCodeOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *PublicRevokeGameSessionCodeOK) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeOK) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRevokeGameSessionCodeBadRequest creates a PublicRevokeGameSessionCodeBadRequest with default headers values
func NewPublicRevokeGameSessionCodeBadRequest() *PublicRevokeGameSessionCodeBadRequest {
	return &PublicRevokeGameSessionCodeBadRequest{}
}

/*PublicRevokeGameSessionCodeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicRevokeGameSessionCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokeGameSessionCodeBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeBadRequest) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRevokeGameSessionCodeUnauthorized creates a PublicRevokeGameSessionCodeUnauthorized with default headers values
func NewPublicRevokeGameSessionCodeUnauthorized() *PublicRevokeGameSessionCodeUnauthorized {
	return &PublicRevokeGameSessionCodeUnauthorized{}
}

/*PublicRevokeGameSessionCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicRevokeGameSessionCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokeGameSessionCodeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeUnauthorized) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRevokeGameSessionCodeForbidden creates a PublicRevokeGameSessionCodeForbidden with default headers values
func NewPublicRevokeGameSessionCodeForbidden() *PublicRevokeGameSessionCodeForbidden {
	return &PublicRevokeGameSessionCodeForbidden{}
}

/*PublicRevokeGameSessionCodeForbidden handles this case with default header values.

  Forbidden
*/
type PublicRevokeGameSessionCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokeGameSessionCodeForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeForbidden) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRevokeGameSessionCodeNotFound creates a PublicRevokeGameSessionCodeNotFound with default headers values
func NewPublicRevokeGameSessionCodeNotFound() *PublicRevokeGameSessionCodeNotFound {
	return &PublicRevokeGameSessionCodeNotFound{}
}

/*PublicRevokeGameSessionCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicRevokeGameSessionCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokeGameSessionCodeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeNotFound) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRevokeGameSessionCodeInternalServerError creates a PublicRevokeGameSessionCodeInternalServerError with default headers values
func NewPublicRevokeGameSessionCodeInternalServerError() *PublicRevokeGameSessionCodeInternalServerError {
	return &PublicRevokeGameSessionCodeInternalServerError{}
}

/*PublicRevokeGameSessionCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicRevokeGameSessionCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokeGameSessionCodeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code][%d] publicRevokeGameSessionCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicRevokeGameSessionCodeInternalServerError) ToJSONString() string {
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

func (o *PublicRevokeGameSessionCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokeGameSessionCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
