// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// UpdateAppV1Reader is a Reader for the UpdateAppV1 structure.
type UpdateAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAppV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAppV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppV1OK creates a UpdateAppV1OK with default headers values
func NewUpdateAppV1OK() *UpdateAppV1OK {
	return &UpdateAppV1OK{}
}

/*UpdateAppV1OK handles this case with default header values.

  OK
*/
type UpdateAppV1OK struct {
	Payload *csmclientmodels.GeneratedUpdateAppV1Response
}

func (o *UpdateAppV1OK) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAppV1OK) ToJSONString() string {
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

func (o *UpdateAppV1OK) GetPayload() *csmclientmodels.GeneratedUpdateAppV1Response {
	return o.Payload
}

func (o *UpdateAppV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedUpdateAppV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV1BadRequest creates a UpdateAppV1BadRequest with default headers values
func NewUpdateAppV1BadRequest() *UpdateAppV1BadRequest {
	return &UpdateAppV1BadRequest{}
}

/*UpdateAppV1BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAppV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAppV1BadRequest) ToJSONString() string {
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

func (o *UpdateAppV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV1Unauthorized creates a UpdateAppV1Unauthorized with default headers values
func NewUpdateAppV1Unauthorized() *UpdateAppV1Unauthorized {
	return &UpdateAppV1Unauthorized{}
}

/*UpdateAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAppV1Unauthorized) ToJSONString() string {
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

func (o *UpdateAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV1Forbidden creates a UpdateAppV1Forbidden with default headers values
func NewUpdateAppV1Forbidden() *UpdateAppV1Forbidden {
	return &UpdateAppV1Forbidden{}
}

/*UpdateAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateAppV1Forbidden) ToJSONString() string {
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

func (o *UpdateAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV1NotFound creates a UpdateAppV1NotFound with default headers values
func NewUpdateAppV1NotFound() *UpdateAppV1NotFound {
	return &UpdateAppV1NotFound{}
}

/*UpdateAppV1NotFound handles this case with default header values.

  Not Found
*/
type UpdateAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV1NotFound) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAppV1NotFound) ToJSONString() string {
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

func (o *UpdateAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateAppV1InternalServerError creates a UpdateAppV1InternalServerError with default headers values
func NewUpdateAppV1InternalServerError() *UpdateAppV1InternalServerError {
	return &UpdateAppV1InternalServerError{}
}

/*UpdateAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] updateAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAppV1InternalServerError) ToJSONString() string {
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

func (o *UpdateAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
