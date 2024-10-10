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

// AdminBulkUnblockPlayersV1Reader is a Reader for the AdminBulkUnblockPlayersV1 structure.
type AdminBulkUnblockPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUnblockPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBulkUnblockPlayersV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUnblockPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkUnblockPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkUnblockPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkUnblockPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUnblockPlayersV1NoContent creates a AdminBulkUnblockPlayersV1NoContent with default headers values
func NewAdminBulkUnblockPlayersV1NoContent() *AdminBulkUnblockPlayersV1NoContent {
	return &AdminBulkUnblockPlayersV1NoContent{}
}

/*AdminBulkUnblockPlayersV1NoContent handles this case with default header values.

  No Content
*/
type AdminBulkUnblockPlayersV1NoContent struct {
}

func (o *AdminBulkUnblockPlayersV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock][%d] adminBulkUnblockPlayersV1NoContent ", 204)
}

func (o *AdminBulkUnblockPlayersV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBulkUnblockPlayersV1BadRequest creates a AdminBulkUnblockPlayersV1BadRequest with default headers values
func NewAdminBulkUnblockPlayersV1BadRequest() *AdminBulkUnblockPlayersV1BadRequest {
	return &AdminBulkUnblockPlayersV1BadRequest{}
}

/*AdminBulkUnblockPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminBulkUnblockPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkUnblockPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock][%d] adminBulkUnblockPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUnblockPlayersV1BadRequest) ToJSONString() string {
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

func (o *AdminBulkUnblockPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkUnblockPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUnblockPlayersV1Unauthorized creates a AdminBulkUnblockPlayersV1Unauthorized with default headers values
func NewAdminBulkUnblockPlayersV1Unauthorized() *AdminBulkUnblockPlayersV1Unauthorized {
	return &AdminBulkUnblockPlayersV1Unauthorized{}
}

/*AdminBulkUnblockPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminBulkUnblockPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkUnblockPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock][%d] adminBulkUnblockPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkUnblockPlayersV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkUnblockPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkUnblockPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUnblockPlayersV1Forbidden creates a AdminBulkUnblockPlayersV1Forbidden with default headers values
func NewAdminBulkUnblockPlayersV1Forbidden() *AdminBulkUnblockPlayersV1Forbidden {
	return &AdminBulkUnblockPlayersV1Forbidden{}
}

/*AdminBulkUnblockPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminBulkUnblockPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkUnblockPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock][%d] adminBulkUnblockPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkUnblockPlayersV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkUnblockPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkUnblockPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUnblockPlayersV1InternalServerError creates a AdminBulkUnblockPlayersV1InternalServerError with default headers values
func NewAdminBulkUnblockPlayersV1InternalServerError() *AdminBulkUnblockPlayersV1InternalServerError {
	return &AdminBulkUnblockPlayersV1InternalServerError{}
}

/*AdminBulkUnblockPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminBulkUnblockPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminBulkUnblockPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock][%d] adminBulkUnblockPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkUnblockPlayersV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkUnblockPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminBulkUnblockPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
