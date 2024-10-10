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

// PublicPlayerBlockPlayersV1Reader is a Reader for the PublicPlayerBlockPlayersV1 structure.
type PublicPlayerBlockPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPlayerBlockPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicPlayerBlockPlayersV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPlayerBlockPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPlayerBlockPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPlayerBlockPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPlayerBlockPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPlayerBlockPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPlayerBlockPlayersV1Created creates a PublicPlayerBlockPlayersV1Created with default headers values
func NewPublicPlayerBlockPlayersV1Created() *PublicPlayerBlockPlayersV1Created {
	return &PublicPlayerBlockPlayersV1Created{}
}

/*PublicPlayerBlockPlayersV1Created handles this case with default header values.

  Created
*/
type PublicPlayerBlockPlayersV1Created struct {
}

func (o *PublicPlayerBlockPlayersV1Created) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1Created ", 201)
}

func (o *PublicPlayerBlockPlayersV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlayerBlockPlayersV1BadRequest creates a PublicPlayerBlockPlayersV1BadRequest with default headers values
func NewPublicPlayerBlockPlayersV1BadRequest() *PublicPlayerBlockPlayersV1BadRequest {
	return &PublicPlayerBlockPlayersV1BadRequest{}
}

/*PublicPlayerBlockPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicPlayerBlockPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicPlayerBlockPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPlayerBlockPlayersV1BadRequest) ToJSONString() string {
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

func (o *PublicPlayerBlockPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicPlayerBlockPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlayerBlockPlayersV1Unauthorized creates a PublicPlayerBlockPlayersV1Unauthorized with default headers values
func NewPublicPlayerBlockPlayersV1Unauthorized() *PublicPlayerBlockPlayersV1Unauthorized {
	return &PublicPlayerBlockPlayersV1Unauthorized{}
}

/*PublicPlayerBlockPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPlayerBlockPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicPlayerBlockPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPlayerBlockPlayersV1Unauthorized) ToJSONString() string {
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

func (o *PublicPlayerBlockPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicPlayerBlockPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlayerBlockPlayersV1Forbidden creates a PublicPlayerBlockPlayersV1Forbidden with default headers values
func NewPublicPlayerBlockPlayersV1Forbidden() *PublicPlayerBlockPlayersV1Forbidden {
	return &PublicPlayerBlockPlayersV1Forbidden{}
}

/*PublicPlayerBlockPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicPlayerBlockPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicPlayerBlockPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPlayerBlockPlayersV1Forbidden) ToJSONString() string {
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

func (o *PublicPlayerBlockPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicPlayerBlockPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlayerBlockPlayersV1NotFound creates a PublicPlayerBlockPlayersV1NotFound with default headers values
func NewPublicPlayerBlockPlayersV1NotFound() *PublicPlayerBlockPlayersV1NotFound {
	return &PublicPlayerBlockPlayersV1NotFound{}
}

/*PublicPlayerBlockPlayersV1NotFound handles this case with default header values.

  Not Found
*/
type PublicPlayerBlockPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicPlayerBlockPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPlayerBlockPlayersV1NotFound) ToJSONString() string {
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

func (o *PublicPlayerBlockPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicPlayerBlockPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlayerBlockPlayersV1InternalServerError creates a PublicPlayerBlockPlayersV1InternalServerError with default headers values
func NewPublicPlayerBlockPlayersV1InternalServerError() *PublicPlayerBlockPlayersV1InternalServerError {
	return &PublicPlayerBlockPlayersV1InternalServerError{}
}

/*PublicPlayerBlockPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPlayerBlockPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicPlayerBlockPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/block][%d] publicPlayerBlockPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPlayerBlockPlayersV1InternalServerError) ToJSONString() string {
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

func (o *PublicPlayerBlockPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicPlayerBlockPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
