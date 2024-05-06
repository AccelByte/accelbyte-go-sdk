// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

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

// PublicGetRecentTeamPlayerReader is a Reader for the PublicGetRecentTeamPlayer structure.
type PublicGetRecentTeamPlayerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetRecentTeamPlayerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetRecentTeamPlayerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetRecentTeamPlayerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetRecentTeamPlayerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetRecentTeamPlayerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetRecentTeamPlayerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/recent-team-player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetRecentTeamPlayerOK creates a PublicGetRecentTeamPlayerOK with default headers values
func NewPublicGetRecentTeamPlayerOK() *PublicGetRecentTeamPlayerOK {
	return &PublicGetRecentTeamPlayerOK{}
}

/*PublicGetRecentTeamPlayerOK handles this case with default header values.

  OK
*/
type PublicGetRecentTeamPlayerOK struct {
	Payload *sessionclientmodels.ModelsRecentPlayerQueryResponse
}

func (o *PublicGetRecentTeamPlayerOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-team-player][%d] publicGetRecentTeamPlayerOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetRecentTeamPlayerOK) ToJSONString() string {
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

func (o *PublicGetRecentTeamPlayerOK) GetPayload() *sessionclientmodels.ModelsRecentPlayerQueryResponse {
	return o.Payload
}

func (o *PublicGetRecentTeamPlayerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsRecentPlayerQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetRecentTeamPlayerBadRequest creates a PublicGetRecentTeamPlayerBadRequest with default headers values
func NewPublicGetRecentTeamPlayerBadRequest() *PublicGetRecentTeamPlayerBadRequest {
	return &PublicGetRecentTeamPlayerBadRequest{}
}

/*PublicGetRecentTeamPlayerBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetRecentTeamPlayerBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentTeamPlayerBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-team-player][%d] publicGetRecentTeamPlayerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetRecentTeamPlayerBadRequest) ToJSONString() string {
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

func (o *PublicGetRecentTeamPlayerBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentTeamPlayerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentTeamPlayerUnauthorized creates a PublicGetRecentTeamPlayerUnauthorized with default headers values
func NewPublicGetRecentTeamPlayerUnauthorized() *PublicGetRecentTeamPlayerUnauthorized {
	return &PublicGetRecentTeamPlayerUnauthorized{}
}

/*PublicGetRecentTeamPlayerUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetRecentTeamPlayerUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentTeamPlayerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-team-player][%d] publicGetRecentTeamPlayerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetRecentTeamPlayerUnauthorized) ToJSONString() string {
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

func (o *PublicGetRecentTeamPlayerUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentTeamPlayerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentTeamPlayerNotFound creates a PublicGetRecentTeamPlayerNotFound with default headers values
func NewPublicGetRecentTeamPlayerNotFound() *PublicGetRecentTeamPlayerNotFound {
	return &PublicGetRecentTeamPlayerNotFound{}
}

/*PublicGetRecentTeamPlayerNotFound handles this case with default header values.

  Not Found
*/
type PublicGetRecentTeamPlayerNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentTeamPlayerNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-team-player][%d] publicGetRecentTeamPlayerNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetRecentTeamPlayerNotFound) ToJSONString() string {
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

func (o *PublicGetRecentTeamPlayerNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentTeamPlayerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentTeamPlayerInternalServerError creates a PublicGetRecentTeamPlayerInternalServerError with default headers values
func NewPublicGetRecentTeamPlayerInternalServerError() *PublicGetRecentTeamPlayerInternalServerError {
	return &PublicGetRecentTeamPlayerInternalServerError{}
}

/*PublicGetRecentTeamPlayerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetRecentTeamPlayerInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentTeamPlayerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-team-player][%d] publicGetRecentTeamPlayerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetRecentTeamPlayerInternalServerError) ToJSONString() string {
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

func (o *PublicGetRecentTeamPlayerInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentTeamPlayerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
