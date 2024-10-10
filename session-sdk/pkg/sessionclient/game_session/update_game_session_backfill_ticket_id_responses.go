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

// UpdateGameSessionBackfillTicketIDReader is a Reader for the UpdateGameSessionBackfillTicketID structure.
type UpdateGameSessionBackfillTicketIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGameSessionBackfillTicketIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGameSessionBackfillTicketIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGameSessionBackfillTicketIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGameSessionBackfillTicketIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGameSessionBackfillTicketIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGameSessionBackfillTicketIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGameSessionBackfillTicketIDOK creates a UpdateGameSessionBackfillTicketIDOK with default headers values
func NewUpdateGameSessionBackfillTicketIDOK() *UpdateGameSessionBackfillTicketIDOK {
	return &UpdateGameSessionBackfillTicketIDOK{}
}

/*UpdateGameSessionBackfillTicketIDOK handles this case with default header values.

  OK
*/
type UpdateGameSessionBackfillTicketIDOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *UpdateGameSessionBackfillTicketIDOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill][%d] updateGameSessionBackfillTicketIdOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGameSessionBackfillTicketIDOK) ToJSONString() string {
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

func (o *UpdateGameSessionBackfillTicketIDOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *UpdateGameSessionBackfillTicketIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGameSessionBackfillTicketIDUnauthorized creates a UpdateGameSessionBackfillTicketIDUnauthorized with default headers values
func NewUpdateGameSessionBackfillTicketIDUnauthorized() *UpdateGameSessionBackfillTicketIDUnauthorized {
	return &UpdateGameSessionBackfillTicketIDUnauthorized{}
}

/*UpdateGameSessionBackfillTicketIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateGameSessionBackfillTicketIDUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionBackfillTicketIDUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill][%d] updateGameSessionBackfillTicketIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGameSessionBackfillTicketIDUnauthorized) ToJSONString() string {
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

func (o *UpdateGameSessionBackfillTicketIDUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionBackfillTicketIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGameSessionBackfillTicketIDForbidden creates a UpdateGameSessionBackfillTicketIDForbidden with default headers values
func NewUpdateGameSessionBackfillTicketIDForbidden() *UpdateGameSessionBackfillTicketIDForbidden {
	return &UpdateGameSessionBackfillTicketIDForbidden{}
}

/*UpdateGameSessionBackfillTicketIDForbidden handles this case with default header values.

  Forbidden
*/
type UpdateGameSessionBackfillTicketIDForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionBackfillTicketIDForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill][%d] updateGameSessionBackfillTicketIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGameSessionBackfillTicketIDForbidden) ToJSONString() string {
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

func (o *UpdateGameSessionBackfillTicketIDForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionBackfillTicketIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGameSessionBackfillTicketIDNotFound creates a UpdateGameSessionBackfillTicketIDNotFound with default headers values
func NewUpdateGameSessionBackfillTicketIDNotFound() *UpdateGameSessionBackfillTicketIDNotFound {
	return &UpdateGameSessionBackfillTicketIDNotFound{}
}

/*UpdateGameSessionBackfillTicketIDNotFound handles this case with default header values.

  Not Found
*/
type UpdateGameSessionBackfillTicketIDNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionBackfillTicketIDNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill][%d] updateGameSessionBackfillTicketIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGameSessionBackfillTicketIDNotFound) ToJSONString() string {
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

func (o *UpdateGameSessionBackfillTicketIDNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionBackfillTicketIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGameSessionBackfillTicketIDInternalServerError creates a UpdateGameSessionBackfillTicketIDInternalServerError with default headers values
func NewUpdateGameSessionBackfillTicketIDInternalServerError() *UpdateGameSessionBackfillTicketIDInternalServerError {
	return &UpdateGameSessionBackfillTicketIDInternalServerError{}
}

/*UpdateGameSessionBackfillTicketIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGameSessionBackfillTicketIDInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *UpdateGameSessionBackfillTicketIDInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill][%d] updateGameSessionBackfillTicketIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGameSessionBackfillTicketIDInternalServerError) ToJSONString() string {
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

func (o *UpdateGameSessionBackfillTicketIDInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateGameSessionBackfillTicketIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
