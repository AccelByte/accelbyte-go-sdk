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

// PublicSessionJoinCodeReader is a Reader for the PublicSessionJoinCode structure.
type PublicSessionJoinCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSessionJoinCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSessionJoinCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSessionJoinCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSessionJoinCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSessionJoinCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSessionJoinCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSessionJoinCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSessionJoinCodeOK creates a PublicSessionJoinCodeOK with default headers values
func NewPublicSessionJoinCodeOK() *PublicSessionJoinCodeOK {
	return &PublicSessionJoinCodeOK{}
}

/*PublicSessionJoinCodeOK handles this case with default header values.

  OK
*/
type PublicSessionJoinCodeOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *PublicSessionJoinCodeOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicSessionJoinCodeOK) ToJSONString() string {
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

func (o *PublicSessionJoinCodeOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *PublicSessionJoinCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSessionJoinCodeBadRequest creates a PublicSessionJoinCodeBadRequest with default headers values
func NewPublicSessionJoinCodeBadRequest() *PublicSessionJoinCodeBadRequest {
	return &PublicSessionJoinCodeBadRequest{}
}

/*PublicSessionJoinCodeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicSessionJoinCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicSessionJoinCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSessionJoinCodeBadRequest) ToJSONString() string {
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

func (o *PublicSessionJoinCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSessionJoinCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSessionJoinCodeUnauthorized creates a PublicSessionJoinCodeUnauthorized with default headers values
func NewPublicSessionJoinCodeUnauthorized() *PublicSessionJoinCodeUnauthorized {
	return &PublicSessionJoinCodeUnauthorized{}
}

/*PublicSessionJoinCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSessionJoinCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicSessionJoinCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSessionJoinCodeUnauthorized) ToJSONString() string {
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

func (o *PublicSessionJoinCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSessionJoinCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSessionJoinCodeForbidden creates a PublicSessionJoinCodeForbidden with default headers values
func NewPublicSessionJoinCodeForbidden() *PublicSessionJoinCodeForbidden {
	return &PublicSessionJoinCodeForbidden{}
}

/*PublicSessionJoinCodeForbidden handles this case with default header values.

  Forbidden
*/
type PublicSessionJoinCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicSessionJoinCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSessionJoinCodeForbidden) ToJSONString() string {
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

func (o *PublicSessionJoinCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSessionJoinCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSessionJoinCodeNotFound creates a PublicSessionJoinCodeNotFound with default headers values
func NewPublicSessionJoinCodeNotFound() *PublicSessionJoinCodeNotFound {
	return &PublicSessionJoinCodeNotFound{}
}

/*PublicSessionJoinCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicSessionJoinCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicSessionJoinCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSessionJoinCodeNotFound) ToJSONString() string {
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

func (o *PublicSessionJoinCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSessionJoinCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSessionJoinCodeInternalServerError creates a PublicSessionJoinCodeInternalServerError with default headers values
func NewPublicSessionJoinCodeInternalServerError() *PublicSessionJoinCodeInternalServerError {
	return &PublicSessionJoinCodeInternalServerError{}
}

/*PublicSessionJoinCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSessionJoinCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicSessionJoinCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/join/code][%d] publicSessionJoinCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSessionJoinCodeInternalServerError) ToJSONString() string {
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

func (o *PublicSessionJoinCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSessionJoinCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
