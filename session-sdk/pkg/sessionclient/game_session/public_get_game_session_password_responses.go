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

// PublicGetGameSessionPasswordReader is a Reader for the PublicGetGameSessionPassword structure.
type PublicGetGameSessionPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetGameSessionPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetGameSessionPasswordOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetGameSessionPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetGameSessionPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetGameSessionPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetGameSessionPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetGameSessionPasswordInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetGameSessionPasswordOK creates a PublicGetGameSessionPasswordOK with default headers values
func NewPublicGetGameSessionPasswordOK() *PublicGetGameSessionPasswordOK {
	return &PublicGetGameSessionPasswordOK{}
}

/*PublicGetGameSessionPasswordOK handles this case with default header values.

  OK
*/
type PublicGetGameSessionPasswordOK struct {
	Payload *sessionclientmodels.ApimodelsGetPasswordResponse
}

func (o *PublicGetGameSessionPasswordOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordOK) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordOK) GetPayload() *sessionclientmodels.ApimodelsGetPasswordResponse {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGetPasswordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetGameSessionPasswordBadRequest creates a PublicGetGameSessionPasswordBadRequest with default headers values
func NewPublicGetGameSessionPasswordBadRequest() *PublicGetGameSessionPasswordBadRequest {
	return &PublicGetGameSessionPasswordBadRequest{}
}

/*PublicGetGameSessionPasswordBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetGameSessionPasswordBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetGameSessionPasswordBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordBadRequest) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGameSessionPasswordUnauthorized creates a PublicGetGameSessionPasswordUnauthorized with default headers values
func NewPublicGetGameSessionPasswordUnauthorized() *PublicGetGameSessionPasswordUnauthorized {
	return &PublicGetGameSessionPasswordUnauthorized{}
}

/*PublicGetGameSessionPasswordUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetGameSessionPasswordUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetGameSessionPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordUnauthorized) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGameSessionPasswordForbidden creates a PublicGetGameSessionPasswordForbidden with default headers values
func NewPublicGetGameSessionPasswordForbidden() *PublicGetGameSessionPasswordForbidden {
	return &PublicGetGameSessionPasswordForbidden{}
}

/*PublicGetGameSessionPasswordForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetGameSessionPasswordForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetGameSessionPasswordForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordForbidden) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGameSessionPasswordNotFound creates a PublicGetGameSessionPasswordNotFound with default headers values
func NewPublicGetGameSessionPasswordNotFound() *PublicGetGameSessionPasswordNotFound {
	return &PublicGetGameSessionPasswordNotFound{}
}

/*PublicGetGameSessionPasswordNotFound handles this case with default header values.

  Not Found
*/
type PublicGetGameSessionPasswordNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetGameSessionPasswordNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordNotFound) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetGameSessionPasswordInternalServerError creates a PublicGetGameSessionPasswordInternalServerError with default headers values
func NewPublicGetGameSessionPasswordInternalServerError() *PublicGetGameSessionPasswordInternalServerError {
	return &PublicGetGameSessionPasswordInternalServerError{}
}

/*PublicGetGameSessionPasswordInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetGameSessionPasswordInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetGameSessionPasswordInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/password][%d] publicGetGameSessionPasswordInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetGameSessionPasswordInternalServerError) ToJSONString() string {
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

func (o *PublicGetGameSessionPasswordInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetGameSessionPasswordInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
