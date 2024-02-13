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

// PublicUnblockPlayerV1Reader is a Reader for the PublicUnblockPlayerV1 structure.
type PublicUnblockPlayerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUnblockPlayerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUnblockPlayerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUnblockPlayerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUnblockPlayerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUnblockPlayerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUnblockPlayerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUnblockPlayerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUnblockPlayerV1NoContent creates a PublicUnblockPlayerV1NoContent with default headers values
func NewPublicUnblockPlayerV1NoContent() *PublicUnblockPlayerV1NoContent {
	return &PublicUnblockPlayerV1NoContent{}
}

/*PublicUnblockPlayerV1NoContent handles this case with default header values.

  No Content
*/
type PublicUnblockPlayerV1NoContent struct {
}

func (o *PublicUnblockPlayerV1NoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1NoContent ", 204)
}

func (o *PublicUnblockPlayerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUnblockPlayerV1BadRequest creates a PublicUnblockPlayerV1BadRequest with default headers values
func NewPublicUnblockPlayerV1BadRequest() *PublicUnblockPlayerV1BadRequest {
	return &PublicUnblockPlayerV1BadRequest{}
}

/*PublicUnblockPlayerV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicUnblockPlayerV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnblockPlayerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUnblockPlayerV1BadRequest) ToJSONString() string {
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

func (o *PublicUnblockPlayerV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnblockPlayerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnblockPlayerV1Unauthorized creates a PublicUnblockPlayerV1Unauthorized with default headers values
func NewPublicUnblockPlayerV1Unauthorized() *PublicUnblockPlayerV1Unauthorized {
	return &PublicUnblockPlayerV1Unauthorized{}
}

/*PublicUnblockPlayerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUnblockPlayerV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnblockPlayerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUnblockPlayerV1Unauthorized) ToJSONString() string {
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

func (o *PublicUnblockPlayerV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnblockPlayerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnblockPlayerV1Forbidden creates a PublicUnblockPlayerV1Forbidden with default headers values
func NewPublicUnblockPlayerV1Forbidden() *PublicUnblockPlayerV1Forbidden {
	return &PublicUnblockPlayerV1Forbidden{}
}

/*PublicUnblockPlayerV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicUnblockPlayerV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnblockPlayerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUnblockPlayerV1Forbidden) ToJSONString() string {
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

func (o *PublicUnblockPlayerV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnblockPlayerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnblockPlayerV1NotFound creates a PublicUnblockPlayerV1NotFound with default headers values
func NewPublicUnblockPlayerV1NotFound() *PublicUnblockPlayerV1NotFound {
	return &PublicUnblockPlayerV1NotFound{}
}

/*PublicUnblockPlayerV1NotFound handles this case with default header values.

  Not Found
*/
type PublicUnblockPlayerV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnblockPlayerV1NotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUnblockPlayerV1NotFound) ToJSONString() string {
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

func (o *PublicUnblockPlayerV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnblockPlayerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUnblockPlayerV1InternalServerError creates a PublicUnblockPlayerV1InternalServerError with default headers values
func NewPublicUnblockPlayerV1InternalServerError() *PublicUnblockPlayerV1InternalServerError {
	return &PublicUnblockPlayerV1InternalServerError{}
}

/*PublicUnblockPlayerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUnblockPlayerV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUnblockPlayerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock][%d] publicUnblockPlayerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUnblockPlayerV1InternalServerError) ToJSONString() string {
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

func (o *PublicUnblockPlayerV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUnblockPlayerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
