// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// PublicGetPlayerBlockedPlayersV1Reader is a Reader for the PublicGetPlayerBlockedPlayersV1 structure.
type PublicGetPlayerBlockedPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPlayerBlockedPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPlayerBlockedPlayersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPlayerBlockedPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPlayerBlockedPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPlayerBlockedPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPlayerBlockedPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPlayerBlockedPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPlayerBlockedPlayersV1OK creates a PublicGetPlayerBlockedPlayersV1OK with default headers values
func NewPublicGetPlayerBlockedPlayersV1OK() *PublicGetPlayerBlockedPlayersV1OK {
	return &PublicGetPlayerBlockedPlayersV1OK{}
}

/*PublicGetPlayerBlockedPlayersV1OK handles this case with default header values.

  OK
*/
type PublicGetPlayerBlockedPlayersV1OK struct {
	Payload *lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse
}

func (o *PublicGetPlayerBlockedPlayersV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1OK) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1OK) GetPayload() *lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedPlayersV1BadRequest creates a PublicGetPlayerBlockedPlayersV1BadRequest with default headers values
func NewPublicGetPlayerBlockedPlayersV1BadRequest() *PublicGetPlayerBlockedPlayersV1BadRequest {
	return &PublicGetPlayerBlockedPlayersV1BadRequest{}
}

/*PublicGetPlayerBlockedPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetPlayerBlockedPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1BadRequest) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedPlayersV1Unauthorized creates a PublicGetPlayerBlockedPlayersV1Unauthorized with default headers values
func NewPublicGetPlayerBlockedPlayersV1Unauthorized() *PublicGetPlayerBlockedPlayersV1Unauthorized {
	return &PublicGetPlayerBlockedPlayersV1Unauthorized{}
}

/*PublicGetPlayerBlockedPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPlayerBlockedPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1Unauthorized) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedPlayersV1Forbidden creates a PublicGetPlayerBlockedPlayersV1Forbidden with default headers values
func NewPublicGetPlayerBlockedPlayersV1Forbidden() *PublicGetPlayerBlockedPlayersV1Forbidden {
	return &PublicGetPlayerBlockedPlayersV1Forbidden{}
}

/*PublicGetPlayerBlockedPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicGetPlayerBlockedPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1Forbidden) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedPlayersV1NotFound creates a PublicGetPlayerBlockedPlayersV1NotFound with default headers values
func NewPublicGetPlayerBlockedPlayersV1NotFound() *PublicGetPlayerBlockedPlayersV1NotFound {
	return &PublicGetPlayerBlockedPlayersV1NotFound{}
}

/*PublicGetPlayerBlockedPlayersV1NotFound handles this case with default header values.

  Not Found
*/
type PublicGetPlayerBlockedPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1NotFound) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedPlayersV1InternalServerError creates a PublicGetPlayerBlockedPlayersV1InternalServerError with default headers values
func NewPublicGetPlayerBlockedPlayersV1InternalServerError() *PublicGetPlayerBlockedPlayersV1InternalServerError {
	return &PublicGetPlayerBlockedPlayersV1InternalServerError{}
}

/*PublicGetPlayerBlockedPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPlayerBlockedPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked][%d] publicGetPlayerBlockedPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedPlayersV1InternalServerError) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
