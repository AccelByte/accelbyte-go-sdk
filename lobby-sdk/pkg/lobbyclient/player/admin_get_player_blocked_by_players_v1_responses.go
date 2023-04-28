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

// AdminGetPlayerBlockedByPlayersV1Reader is a Reader for the AdminGetPlayerBlockedByPlayersV1 structure.
type AdminGetPlayerBlockedByPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerBlockedByPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerBlockedByPlayersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlayerBlockedByPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerBlockedByPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerBlockedByPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerBlockedByPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerBlockedByPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerBlockedByPlayersV1OK creates a AdminGetPlayerBlockedByPlayersV1OK with default headers values
func NewAdminGetPlayerBlockedByPlayersV1OK() *AdminGetPlayerBlockedByPlayersV1OK {
	return &AdminGetPlayerBlockedByPlayersV1OK{}
}

/*AdminGetPlayerBlockedByPlayersV1OK handles this case with default header values.

  OK
*/
type AdminGetPlayerBlockedByPlayersV1OK struct {
	Payload *lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse
}

func (o *AdminGetPlayerBlockedByPlayersV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1OK) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1OK) GetPayload() *lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerBlockedByPlayersV1BadRequest creates a AdminGetPlayerBlockedByPlayersV1BadRequest with default headers values
func NewAdminGetPlayerBlockedByPlayersV1BadRequest() *AdminGetPlayerBlockedByPlayersV1BadRequest {
	return &AdminGetPlayerBlockedByPlayersV1BadRequest{}
}

/*AdminGetPlayerBlockedByPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlayerBlockedByPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedByPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1BadRequest) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBlockedByPlayersV1Unauthorized creates a AdminGetPlayerBlockedByPlayersV1Unauthorized with default headers values
func NewAdminGetPlayerBlockedByPlayersV1Unauthorized() *AdminGetPlayerBlockedByPlayersV1Unauthorized {
	return &AdminGetPlayerBlockedByPlayersV1Unauthorized{}
}

/*AdminGetPlayerBlockedByPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlayerBlockedByPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedByPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBlockedByPlayersV1Forbidden creates a AdminGetPlayerBlockedByPlayersV1Forbidden with default headers values
func NewAdminGetPlayerBlockedByPlayersV1Forbidden() *AdminGetPlayerBlockedByPlayersV1Forbidden {
	return &AdminGetPlayerBlockedByPlayersV1Forbidden{}
}

/*AdminGetPlayerBlockedByPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlayerBlockedByPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedByPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBlockedByPlayersV1NotFound creates a AdminGetPlayerBlockedByPlayersV1NotFound with default headers values
func NewAdminGetPlayerBlockedByPlayersV1NotFound() *AdminGetPlayerBlockedByPlayersV1NotFound {
	return &AdminGetPlayerBlockedByPlayersV1NotFound{}
}

/*AdminGetPlayerBlockedByPlayersV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlayerBlockedByPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedByPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1NotFound) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlayerBlockedByPlayersV1InternalServerError creates a AdminGetPlayerBlockedByPlayersV1InternalServerError with default headers values
func NewAdminGetPlayerBlockedByPlayersV1InternalServerError() *AdminGetPlayerBlockedByPlayersV1InternalServerError {
	return &AdminGetPlayerBlockedByPlayersV1InternalServerError{}
}

/*AdminGetPlayerBlockedByPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlayerBlockedByPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedByPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by][%d] adminGetPlayerBlockedByPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedByPlayersV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedByPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedByPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
