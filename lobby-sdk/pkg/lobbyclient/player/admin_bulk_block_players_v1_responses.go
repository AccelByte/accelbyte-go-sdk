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

// AdminBulkBlockPlayersV1Reader is a Reader for the AdminBulkBlockPlayersV1 structure.
type AdminBulkBlockPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkBlockPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBulkBlockPlayersV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkBlockPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkBlockPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkBlockPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkBlockPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkBlockPlayersV1NoContent creates a AdminBulkBlockPlayersV1NoContent with default headers values
func NewAdminBulkBlockPlayersV1NoContent() *AdminBulkBlockPlayersV1NoContent {
	return &AdminBulkBlockPlayersV1NoContent{}
}

/*AdminBulkBlockPlayersV1NoContent handles this case with default header values.

  No Content
*/
type AdminBulkBlockPlayersV1NoContent struct {
}

func (o *AdminBulkBlockPlayersV1NoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block][%d] adminBulkBlockPlayersV1NoContent ", 204)
}

func (o *AdminBulkBlockPlayersV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBulkBlockPlayersV1BadRequest creates a AdminBulkBlockPlayersV1BadRequest with default headers values
func NewAdminBulkBlockPlayersV1BadRequest() *AdminBulkBlockPlayersV1BadRequest {
	return &AdminBulkBlockPlayersV1BadRequest{}
}

/*AdminBulkBlockPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkBlockPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkBlockPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block][%d] adminBulkBlockPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkBlockPlayersV1BadRequest) ToJSONString() string {
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

func (o *AdminBulkBlockPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkBlockPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkBlockPlayersV1Unauthorized creates a AdminBulkBlockPlayersV1Unauthorized with default headers values
func NewAdminBulkBlockPlayersV1Unauthorized() *AdminBulkBlockPlayersV1Unauthorized {
	return &AdminBulkBlockPlayersV1Unauthorized{}
}

/*AdminBulkBlockPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkBlockPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkBlockPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block][%d] adminBulkBlockPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkBlockPlayersV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkBlockPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkBlockPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkBlockPlayersV1Forbidden creates a AdminBulkBlockPlayersV1Forbidden with default headers values
func NewAdminBulkBlockPlayersV1Forbidden() *AdminBulkBlockPlayersV1Forbidden {
	return &AdminBulkBlockPlayersV1Forbidden{}
}

/*AdminBulkBlockPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminBulkBlockPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkBlockPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block][%d] adminBulkBlockPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkBlockPlayersV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkBlockPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkBlockPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkBlockPlayersV1InternalServerError creates a AdminBulkBlockPlayersV1InternalServerError with default headers values
func NewAdminBulkBlockPlayersV1InternalServerError() *AdminBulkBlockPlayersV1InternalServerError {
	return &AdminBulkBlockPlayersV1InternalServerError{}
}

/*AdminBulkBlockPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkBlockPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkBlockPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block][%d] adminBulkBlockPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkBlockPlayersV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkBlockPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkBlockPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
