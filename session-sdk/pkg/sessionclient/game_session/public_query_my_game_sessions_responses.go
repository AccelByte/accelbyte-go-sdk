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

// PublicQueryMyGameSessionsReader is a Reader for the PublicQueryMyGameSessions structure.
type PublicQueryMyGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryMyGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryMyGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryMyGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryMyGameSessionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryMyGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/users/me/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryMyGameSessionsOK creates a PublicQueryMyGameSessionsOK with default headers values
func NewPublicQueryMyGameSessionsOK() *PublicQueryMyGameSessionsOK {
	return &PublicQueryMyGameSessionsOK{}
}

/*PublicQueryMyGameSessionsOK handles this case with default header values.

  OK
*/
type PublicQueryMyGameSessionsOK struct {
	Payload []*sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *PublicQueryMyGameSessionsOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryMyGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryMyGameSessionsOK) ToJSONString() string {
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

func (o *PublicQueryMyGameSessionsOK) GetPayload() []*sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *PublicQueryMyGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryMyGameSessionsBadRequest creates a PublicQueryMyGameSessionsBadRequest with default headers values
func NewPublicQueryMyGameSessionsBadRequest() *PublicQueryMyGameSessionsBadRequest {
	return &PublicQueryMyGameSessionsBadRequest{}
}

/*PublicQueryMyGameSessionsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicQueryMyGameSessionsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryMyGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryMyGameSessionsBadRequest) ToJSONString() string {
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

func (o *PublicQueryMyGameSessionsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryMyGameSessionsUnauthorized creates a PublicQueryMyGameSessionsUnauthorized with default headers values
func NewPublicQueryMyGameSessionsUnauthorized() *PublicQueryMyGameSessionsUnauthorized {
	return &PublicQueryMyGameSessionsUnauthorized{}
}

/*PublicQueryMyGameSessionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicQueryMyGameSessionsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyGameSessionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryMyGameSessionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryMyGameSessionsUnauthorized) ToJSONString() string {
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

func (o *PublicQueryMyGameSessionsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyGameSessionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryMyGameSessionsInternalServerError creates a PublicQueryMyGameSessionsInternalServerError with default headers values
func NewPublicQueryMyGameSessionsInternalServerError() *PublicQueryMyGameSessionsInternalServerError {
	return &PublicQueryMyGameSessionsInternalServerError{}
}

/*PublicQueryMyGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicQueryMyGameSessionsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryMyGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/users/me/gamesessions][%d] publicQueryMyGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryMyGameSessionsInternalServerError) ToJSONString() string {
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

func (o *PublicQueryMyGameSessionsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryMyGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
