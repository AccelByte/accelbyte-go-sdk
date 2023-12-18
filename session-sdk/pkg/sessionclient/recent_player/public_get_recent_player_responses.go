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

// PublicGetRecentPlayerReader is a Reader for the PublicGetRecentPlayer structure.
type PublicGetRecentPlayerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetRecentPlayerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetRecentPlayerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetRecentPlayerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetRecentPlayerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetRecentPlayerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetRecentPlayerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/recent-player/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetRecentPlayerOK creates a PublicGetRecentPlayerOK with default headers values
func NewPublicGetRecentPlayerOK() *PublicGetRecentPlayerOK {
	return &PublicGetRecentPlayerOK{}
}

/*PublicGetRecentPlayerOK handles this case with default header values.

  OK
*/
type PublicGetRecentPlayerOK struct {
	Payload *sessionclientmodels.ModelsRecentPlayerQueryResponse
}

func (o *PublicGetRecentPlayerOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-player/{userId}][%d] publicGetRecentPlayerOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetRecentPlayerOK) ToJSONString() string {
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

func (o *PublicGetRecentPlayerOK) GetPayload() *sessionclientmodels.ModelsRecentPlayerQueryResponse {
	return o.Payload
}

func (o *PublicGetRecentPlayerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentPlayerBadRequest creates a PublicGetRecentPlayerBadRequest with default headers values
func NewPublicGetRecentPlayerBadRequest() *PublicGetRecentPlayerBadRequest {
	return &PublicGetRecentPlayerBadRequest{}
}

/*PublicGetRecentPlayerBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetRecentPlayerBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentPlayerBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-player/{userId}][%d] publicGetRecentPlayerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetRecentPlayerBadRequest) ToJSONString() string {
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

func (o *PublicGetRecentPlayerBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentPlayerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentPlayerUnauthorized creates a PublicGetRecentPlayerUnauthorized with default headers values
func NewPublicGetRecentPlayerUnauthorized() *PublicGetRecentPlayerUnauthorized {
	return &PublicGetRecentPlayerUnauthorized{}
}

/*PublicGetRecentPlayerUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetRecentPlayerUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentPlayerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-player/{userId}][%d] publicGetRecentPlayerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetRecentPlayerUnauthorized) ToJSONString() string {
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

func (o *PublicGetRecentPlayerUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentPlayerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentPlayerNotFound creates a PublicGetRecentPlayerNotFound with default headers values
func NewPublicGetRecentPlayerNotFound() *PublicGetRecentPlayerNotFound {
	return &PublicGetRecentPlayerNotFound{}
}

/*PublicGetRecentPlayerNotFound handles this case with default header values.

  Not Found
*/
type PublicGetRecentPlayerNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentPlayerNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-player/{userId}][%d] publicGetRecentPlayerNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetRecentPlayerNotFound) ToJSONString() string {
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

func (o *PublicGetRecentPlayerNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentPlayerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRecentPlayerInternalServerError creates a PublicGetRecentPlayerInternalServerError with default headers values
func NewPublicGetRecentPlayerInternalServerError() *PublicGetRecentPlayerInternalServerError {
	return &PublicGetRecentPlayerInternalServerError{}
}

/*PublicGetRecentPlayerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetRecentPlayerInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGetRecentPlayerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/recent-player/{userId}][%d] publicGetRecentPlayerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetRecentPlayerInternalServerError) ToJSONString() string {
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

func (o *PublicGetRecentPlayerInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetRecentPlayerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
