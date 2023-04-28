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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminGetConfigV1Reader is a Reader for the AdminGetConfigV1 structure.
type AdminGetConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetConfigV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/config/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetConfigV1OK creates a AdminGetConfigV1OK with default headers values
func NewAdminGetConfigV1OK() *AdminGetConfigV1OK {
	return &AdminGetConfigV1OK{}
}

/*AdminGetConfigV1OK handles this case with default header values.

  OK
*/
type AdminGetConfigV1OK struct {
	Payload *lobbyclientmodels.ModelsConfigReq
}

func (o *AdminGetConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetConfigV1OK) ToJSONString() string {
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

func (o *AdminGetConfigV1OK) GetPayload() *lobbyclientmodels.ModelsConfigReq {
	return o.Payload
}

func (o *AdminGetConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsConfigReq)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetConfigV1BadRequest creates a AdminGetConfigV1BadRequest with default headers values
func NewAdminGetConfigV1BadRequest() *AdminGetConfigV1BadRequest {
	return &AdminGetConfigV1BadRequest{}
}

/*AdminGetConfigV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetConfigV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetConfigV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetConfigV1BadRequest) ToJSONString() string {
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

func (o *AdminGetConfigV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetConfigV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigV1Unauthorized creates a AdminGetConfigV1Unauthorized with default headers values
func NewAdminGetConfigV1Unauthorized() *AdminGetConfigV1Unauthorized {
	return &AdminGetConfigV1Unauthorized{}
}

/*AdminGetConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetConfigV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetConfigV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigV1Forbidden creates a AdminGetConfigV1Forbidden with default headers values
func NewAdminGetConfigV1Forbidden() *AdminGetConfigV1Forbidden {
	return &AdminGetConfigV1Forbidden{}
}

/*AdminGetConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetConfigV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminGetConfigV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigV1NotFound creates a AdminGetConfigV1NotFound with default headers values
func NewAdminGetConfigV1NotFound() *AdminGetConfigV1NotFound {
	return &AdminGetConfigV1NotFound{}
}

/*AdminGetConfigV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetConfigV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetConfigV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetConfigV1NotFound) ToJSONString() string {
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

func (o *AdminGetConfigV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetConfigV1InternalServerError creates a AdminGetConfigV1InternalServerError with default headers values
func NewAdminGetConfigV1InternalServerError() *AdminGetConfigV1InternalServerError {
	return &AdminGetConfigV1InternalServerError{}
}

/*AdminGetConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetConfigV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}][%d] adminGetConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetConfigV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
