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

// PublicQueryGameSessionsReader is a Reader for the PublicQueryGameSessions structure.
type PublicQueryGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicQueryGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicQueryGameSessionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicQueryGameSessionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicQueryGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryGameSessionsOK creates a PublicQueryGameSessionsOK with default headers values
func NewPublicQueryGameSessionsOK() *PublicQueryGameSessionsOK {
	return &PublicQueryGameSessionsOK{}
}

/*PublicQueryGameSessionsOK handles this case with default header values.

  OK
*/
type PublicQueryGameSessionsOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionQueryResponse
}

func (o *PublicQueryGameSessionsOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryGameSessionsOK) ToJSONString() string {
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

func (o *PublicQueryGameSessionsOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionQueryResponse {
	return o.Payload
}

func (o *PublicQueryGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicQueryGameSessionsBadRequest creates a PublicQueryGameSessionsBadRequest with default headers values
func NewPublicQueryGameSessionsBadRequest() *PublicQueryGameSessionsBadRequest {
	return &PublicQueryGameSessionsBadRequest{}
}

/*PublicQueryGameSessionsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicQueryGameSessionsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicQueryGameSessionsBadRequest) ToJSONString() string {
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

func (o *PublicQueryGameSessionsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryGameSessionsUnauthorized creates a PublicQueryGameSessionsUnauthorized with default headers values
func NewPublicQueryGameSessionsUnauthorized() *PublicQueryGameSessionsUnauthorized {
	return &PublicQueryGameSessionsUnauthorized{}
}

/*PublicQueryGameSessionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicQueryGameSessionsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicQueryGameSessionsUnauthorized) ToJSONString() string {
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

func (o *PublicQueryGameSessionsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryGameSessionsForbidden creates a PublicQueryGameSessionsForbidden with default headers values
func NewPublicQueryGameSessionsForbidden() *PublicQueryGameSessionsForbidden {
	return &PublicQueryGameSessionsForbidden{}
}

/*PublicQueryGameSessionsForbidden handles this case with default header values.

  Forbidden
*/
type PublicQueryGameSessionsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicQueryGameSessionsForbidden) ToJSONString() string {
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

func (o *PublicQueryGameSessionsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicQueryGameSessionsInternalServerError creates a PublicQueryGameSessionsInternalServerError with default headers values
func NewPublicQueryGameSessionsInternalServerError() *PublicQueryGameSessionsInternalServerError {
	return &PublicQueryGameSessionsInternalServerError{}
}

/*PublicQueryGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicQueryGameSessionsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicQueryGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions][%d] publicQueryGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicQueryGameSessionsInternalServerError) ToJSONString() string {
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

func (o *PublicQueryGameSessionsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicQueryGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
