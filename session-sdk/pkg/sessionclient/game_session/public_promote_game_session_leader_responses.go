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

// PublicPromoteGameSessionLeaderReader is a Reader for the PublicPromoteGameSessionLeader structure.
type PublicPromoteGameSessionLeaderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPromoteGameSessionLeaderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPromoteGameSessionLeaderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPromoteGameSessionLeaderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPromoteGameSessionLeaderUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPromoteGameSessionLeaderForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPromoteGameSessionLeaderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPromoteGameSessionLeaderInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPromoteGameSessionLeaderOK creates a PublicPromoteGameSessionLeaderOK with default headers values
func NewPublicPromoteGameSessionLeaderOK() *PublicPromoteGameSessionLeaderOK {
	return &PublicPromoteGameSessionLeaderOK{}
}

/*PublicPromoteGameSessionLeaderOK handles this case with default header values.

  OK
*/
type PublicPromoteGameSessionLeaderOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *PublicPromoteGameSessionLeaderOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderOK) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPromoteGameSessionLeaderBadRequest creates a PublicPromoteGameSessionLeaderBadRequest with default headers values
func NewPublicPromoteGameSessionLeaderBadRequest() *PublicPromoteGameSessionLeaderBadRequest {
	return &PublicPromoteGameSessionLeaderBadRequest{}
}

/*PublicPromoteGameSessionLeaderBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPromoteGameSessionLeaderBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromoteGameSessionLeaderBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderBadRequest) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPromoteGameSessionLeaderUnauthorized creates a PublicPromoteGameSessionLeaderUnauthorized with default headers values
func NewPublicPromoteGameSessionLeaderUnauthorized() *PublicPromoteGameSessionLeaderUnauthorized {
	return &PublicPromoteGameSessionLeaderUnauthorized{}
}

/*PublicPromoteGameSessionLeaderUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPromoteGameSessionLeaderUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromoteGameSessionLeaderUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderUnauthorized) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPromoteGameSessionLeaderForbidden creates a PublicPromoteGameSessionLeaderForbidden with default headers values
func NewPublicPromoteGameSessionLeaderForbidden() *PublicPromoteGameSessionLeaderForbidden {
	return &PublicPromoteGameSessionLeaderForbidden{}
}

/*PublicPromoteGameSessionLeaderForbidden handles this case with default header values.

  Forbidden
*/
type PublicPromoteGameSessionLeaderForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromoteGameSessionLeaderForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderForbidden) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPromoteGameSessionLeaderNotFound creates a PublicPromoteGameSessionLeaderNotFound with default headers values
func NewPublicPromoteGameSessionLeaderNotFound() *PublicPromoteGameSessionLeaderNotFound {
	return &PublicPromoteGameSessionLeaderNotFound{}
}

/*PublicPromoteGameSessionLeaderNotFound handles this case with default header values.

  Not Found
*/
type PublicPromoteGameSessionLeaderNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromoteGameSessionLeaderNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderNotFound) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPromoteGameSessionLeaderInternalServerError creates a PublicPromoteGameSessionLeaderInternalServerError with default headers values
func NewPublicPromoteGameSessionLeaderInternalServerError() *PublicPromoteGameSessionLeaderInternalServerError {
	return &PublicPromoteGameSessionLeaderInternalServerError{}
}

/*PublicPromoteGameSessionLeaderInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPromoteGameSessionLeaderInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPromoteGameSessionLeaderInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader][%d] publicPromoteGameSessionLeaderInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPromoteGameSessionLeaderInternalServerError) ToJSONString() string {
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

func (o *PublicPromoteGameSessionLeaderInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPromoteGameSessionLeaderInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
