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

// PublicUpdateGameSessionPasswordReader is a Reader for the PublicUpdateGameSessionPassword structure.
type PublicUpdateGameSessionPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateGameSessionPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUpdateGameSessionPasswordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateGameSessionPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateGameSessionPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateGameSessionPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateGameSessionPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateGameSessionPasswordInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateGameSessionPasswordNoContent creates a PublicUpdateGameSessionPasswordNoContent with default headers values
func NewPublicUpdateGameSessionPasswordNoContent() *PublicUpdateGameSessionPasswordNoContent {
	return &PublicUpdateGameSessionPasswordNoContent{}
}

/*PublicUpdateGameSessionPasswordNoContent handles this case with default header values.

  No Content
*/
type PublicUpdateGameSessionPasswordNoContent struct {
}

func (o *PublicUpdateGameSessionPasswordNoContent) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordNoContent ", 204)
}

func (o *PublicUpdateGameSessionPasswordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdateGameSessionPasswordBadRequest creates a PublicUpdateGameSessionPasswordBadRequest with default headers values
func NewPublicUpdateGameSessionPasswordBadRequest() *PublicUpdateGameSessionPasswordBadRequest {
	return &PublicUpdateGameSessionPasswordBadRequest{}
}

/*PublicUpdateGameSessionPasswordBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateGameSessionPasswordBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateGameSessionPasswordBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateGameSessionPasswordBadRequest) ToJSONString() string {
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

func (o *PublicUpdateGameSessionPasswordBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateGameSessionPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateGameSessionPasswordUnauthorized creates a PublicUpdateGameSessionPasswordUnauthorized with default headers values
func NewPublicUpdateGameSessionPasswordUnauthorized() *PublicUpdateGameSessionPasswordUnauthorized {
	return &PublicUpdateGameSessionPasswordUnauthorized{}
}

/*PublicUpdateGameSessionPasswordUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateGameSessionPasswordUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateGameSessionPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateGameSessionPasswordUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateGameSessionPasswordUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateGameSessionPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateGameSessionPasswordForbidden creates a PublicUpdateGameSessionPasswordForbidden with default headers values
func NewPublicUpdateGameSessionPasswordForbidden() *PublicUpdateGameSessionPasswordForbidden {
	return &PublicUpdateGameSessionPasswordForbidden{}
}

/*PublicUpdateGameSessionPasswordForbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdateGameSessionPasswordForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateGameSessionPasswordForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateGameSessionPasswordForbidden) ToJSONString() string {
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

func (o *PublicUpdateGameSessionPasswordForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateGameSessionPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateGameSessionPasswordNotFound creates a PublicUpdateGameSessionPasswordNotFound with default headers values
func NewPublicUpdateGameSessionPasswordNotFound() *PublicUpdateGameSessionPasswordNotFound {
	return &PublicUpdateGameSessionPasswordNotFound{}
}

/*PublicUpdateGameSessionPasswordNotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateGameSessionPasswordNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateGameSessionPasswordNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateGameSessionPasswordNotFound) ToJSONString() string {
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

func (o *PublicUpdateGameSessionPasswordNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateGameSessionPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateGameSessionPasswordInternalServerError creates a PublicUpdateGameSessionPasswordInternalServerError with default headers values
func NewPublicUpdateGameSessionPasswordInternalServerError() *PublicUpdateGameSessionPasswordInternalServerError {
	return &PublicUpdateGameSessionPasswordInternalServerError{}
}

/*PublicUpdateGameSessionPasswordInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateGameSessionPasswordInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicUpdateGameSessionPasswordInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicUpdateGameSessionPasswordInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateGameSessionPasswordInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateGameSessionPasswordInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateGameSessionPasswordInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
