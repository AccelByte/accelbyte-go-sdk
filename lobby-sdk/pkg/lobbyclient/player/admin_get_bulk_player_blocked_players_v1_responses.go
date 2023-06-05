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

// AdminGetBulkPlayerBlockedPlayersV1Reader is a Reader for the AdminGetBulkPlayerBlockedPlayersV1 structure.
type AdminGetBulkPlayerBlockedPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetBulkPlayerBlockedPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetBulkPlayerBlockedPlayersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetBulkPlayerBlockedPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetBulkPlayerBlockedPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetBulkPlayerBlockedPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetBulkPlayerBlockedPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetBulkPlayerBlockedPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetBulkPlayerBlockedPlayersV1OK creates a AdminGetBulkPlayerBlockedPlayersV1OK with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1OK() *AdminGetBulkPlayerBlockedPlayersV1OK {
	return &AdminGetBulkPlayerBlockedPlayersV1OK{}
}

/*AdminGetBulkPlayerBlockedPlayersV1OK handles this case with default header values.

  OK
*/
type AdminGetBulkPlayerBlockedPlayersV1OK struct {
	Payload *lobbyclientmodels.ModelsGetBulkAllPlayerBlockedUsersResponse
}

func (o *AdminGetBulkPlayerBlockedPlayersV1OK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1OK) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1OK) GetPayload() *lobbyclientmodels.ModelsGetBulkAllPlayerBlockedUsersResponse {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetBulkAllPlayerBlockedUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBulkPlayerBlockedPlayersV1BadRequest creates a AdminGetBulkPlayerBlockedPlayersV1BadRequest with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1BadRequest() *AdminGetBulkPlayerBlockedPlayersV1BadRequest {
	return &AdminGetBulkPlayerBlockedPlayersV1BadRequest{}
}

/*AdminGetBulkPlayerBlockedPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetBulkPlayerBlockedPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetBulkPlayerBlockedPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1BadRequest) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetBulkPlayerBlockedPlayersV1Unauthorized creates a AdminGetBulkPlayerBlockedPlayersV1Unauthorized with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1Unauthorized() *AdminGetBulkPlayerBlockedPlayersV1Unauthorized {
	return &AdminGetBulkPlayerBlockedPlayersV1Unauthorized{}
}

/*AdminGetBulkPlayerBlockedPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetBulkPlayerBlockedPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetBulkPlayerBlockedPlayersV1Forbidden creates a AdminGetBulkPlayerBlockedPlayersV1Forbidden with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1Forbidden() *AdminGetBulkPlayerBlockedPlayersV1Forbidden {
	return &AdminGetBulkPlayerBlockedPlayersV1Forbidden{}
}

/*AdminGetBulkPlayerBlockedPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetBulkPlayerBlockedPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Forbidden) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetBulkPlayerBlockedPlayersV1NotFound creates a AdminGetBulkPlayerBlockedPlayersV1NotFound with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1NotFound() *AdminGetBulkPlayerBlockedPlayersV1NotFound {
	return &AdminGetBulkPlayerBlockedPlayersV1NotFound{}
}

/*AdminGetBulkPlayerBlockedPlayersV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetBulkPlayerBlockedPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetBulkPlayerBlockedPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1NotFound) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetBulkPlayerBlockedPlayersV1InternalServerError creates a AdminGetBulkPlayerBlockedPlayersV1InternalServerError with default headers values
func NewAdminGetBulkPlayerBlockedPlayersV1InternalServerError() *AdminGetBulkPlayerBlockedPlayersV1InternalServerError {
	return &AdminGetBulkPlayerBlockedPlayersV1InternalServerError{}
}

/*AdminGetBulkPlayerBlockedPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetBulkPlayerBlockedPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetBulkPlayerBlockedPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked][%d] adminGetBulkPlayerBlockedPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetBulkPlayerBlockedPlayersV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetBulkPlayerBlockedPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetBulkPlayerBlockedPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
