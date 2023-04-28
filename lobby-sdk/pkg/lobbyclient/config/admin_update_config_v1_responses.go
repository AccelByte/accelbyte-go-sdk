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

// AdminUpdateConfigV1Reader is a Reader for the AdminUpdateConfigV1 structure.
type AdminUpdateConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateConfigV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminUpdateConfigV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/config/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateConfigV1OK creates a AdminUpdateConfigV1OK with default headers values
func NewAdminUpdateConfigV1OK() *AdminUpdateConfigV1OK {
	return &AdminUpdateConfigV1OK{}
}

/*AdminUpdateConfigV1OK handles this case with default header values.

  OK
*/
type AdminUpdateConfigV1OK struct {
	Payload *lobbyclientmodels.ModelsConfigReq
}

func (o *AdminUpdateConfigV1OK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateConfigV1OK) ToJSONString() string {
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

func (o *AdminUpdateConfigV1OK) GetPayload() *lobbyclientmodels.ModelsConfigReq {
	return o.Payload
}

func (o *AdminUpdateConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1BadRequest creates a AdminUpdateConfigV1BadRequest with default headers values
func NewAdminUpdateConfigV1BadRequest() *AdminUpdateConfigV1BadRequest {
	return &AdminUpdateConfigV1BadRequest{}
}

/*AdminUpdateConfigV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateConfigV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateConfigV1BadRequest) ToJSONString() string {
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

func (o *AdminUpdateConfigV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1Unauthorized creates a AdminUpdateConfigV1Unauthorized with default headers values
func NewAdminUpdateConfigV1Unauthorized() *AdminUpdateConfigV1Unauthorized {
	return &AdminUpdateConfigV1Unauthorized{}
}

/*AdminUpdateConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateConfigV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateConfigV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1Forbidden creates a AdminUpdateConfigV1Forbidden with default headers values
func NewAdminUpdateConfigV1Forbidden() *AdminUpdateConfigV1Forbidden {
	return &AdminUpdateConfigV1Forbidden{}
}

/*AdminUpdateConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateConfigV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminUpdateConfigV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1NotFound creates a AdminUpdateConfigV1NotFound with default headers values
func NewAdminUpdateConfigV1NotFound() *AdminUpdateConfigV1NotFound {
	return &AdminUpdateConfigV1NotFound{}
}

/*AdminUpdateConfigV1NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateConfigV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateConfigV1NotFound) ToJSONString() string {
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

func (o *AdminUpdateConfigV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1PreconditionFailed creates a AdminUpdateConfigV1PreconditionFailed with default headers values
func NewAdminUpdateConfigV1PreconditionFailed() *AdminUpdateConfigV1PreconditionFailed {
	return &AdminUpdateConfigV1PreconditionFailed{}
}

/*AdminUpdateConfigV1PreconditionFailed handles this case with default header values.

  Precondition Failed
*/
type AdminUpdateConfigV1PreconditionFailed struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminUpdateConfigV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminUpdateConfigV1PreconditionFailed) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateConfigV1InternalServerError creates a AdminUpdateConfigV1InternalServerError with default headers values
func NewAdminUpdateConfigV1InternalServerError() *AdminUpdateConfigV1InternalServerError {
	return &AdminUpdateConfigV1InternalServerError{}
}

/*AdminUpdateConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateConfigV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/config/namespaces/{namespace}][%d] adminUpdateConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateConfigV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
