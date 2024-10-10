// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// PublicGetConfigV1Reader is a Reader for the PublicGetConfigV1 structure.
type PublicGetConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetConfigV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/public/config/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetConfigV1OK creates a PublicGetConfigV1OK with default headers values
func NewPublicGetConfigV1OK() *PublicGetConfigV1OK {
	return &PublicGetConfigV1OK{}
}

/*PublicGetConfigV1OK handles this case with default header values.

  OK
*/
type PublicGetConfigV1OK struct {
	Payload *chatclientmodels.ModelsPublicConfigResponse
}

func (o *PublicGetConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetConfigV1OK) ToJSONString() string {
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

func (o *PublicGetConfigV1OK) GetPayload() *chatclientmodels.ModelsPublicConfigResponse {
	return o.Payload
}

func (o *PublicGetConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsPublicConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetConfigV1BadRequest creates a PublicGetConfigV1BadRequest with default headers values
func NewPublicGetConfigV1BadRequest() *PublicGetConfigV1BadRequest {
	return &PublicGetConfigV1BadRequest{}
}

/*PublicGetConfigV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetConfigV1BadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetConfigV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetConfigV1BadRequest) ToJSONString() string {
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

func (o *PublicGetConfigV1BadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetConfigV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetConfigV1Unauthorized creates a PublicGetConfigV1Unauthorized with default headers values
func NewPublicGetConfigV1Unauthorized() *PublicGetConfigV1Unauthorized {
	return &PublicGetConfigV1Unauthorized{}
}

/*PublicGetConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetConfigV1Unauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetConfigV1Unauthorized) ToJSONString() string {
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

func (o *PublicGetConfigV1Unauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetConfigV1Forbidden creates a PublicGetConfigV1Forbidden with default headers values
func NewPublicGetConfigV1Forbidden() *PublicGetConfigV1Forbidden {
	return &PublicGetConfigV1Forbidden{}
}

/*PublicGetConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicGetConfigV1Forbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetConfigV1Forbidden) ToJSONString() string {
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

func (o *PublicGetConfigV1Forbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetConfigV1NotFound creates a PublicGetConfigV1NotFound with default headers values
func NewPublicGetConfigV1NotFound() *PublicGetConfigV1NotFound {
	return &PublicGetConfigV1NotFound{}
}

/*PublicGetConfigV1NotFound handles this case with default header values.

  Not Found
*/
type PublicGetConfigV1NotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetConfigV1NotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetConfigV1NotFound) ToJSONString() string {
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

func (o *PublicGetConfigV1NotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetConfigV1InternalServerError creates a PublicGetConfigV1InternalServerError with default headers values
func NewPublicGetConfigV1InternalServerError() *PublicGetConfigV1InternalServerError {
	return &PublicGetConfigV1InternalServerError{}
}

/*PublicGetConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetConfigV1InternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/public/config/namespaces/{namespace}][%d] publicGetConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetConfigV1InternalServerError) ToJSONString() string {
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

func (o *PublicGetConfigV1InternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
