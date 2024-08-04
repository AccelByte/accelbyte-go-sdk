// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// UpdateWorkerConfigReader is a Reader for the UpdateWorkerConfig structure.
type UpdateWorkerConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateWorkerConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateWorkerConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateWorkerConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateWorkerConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateWorkerConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateWorkerConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /dsmcontroller/admin/namespace/{namespace}/workers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateWorkerConfigNoContent creates a UpdateWorkerConfigNoContent with default headers values
func NewUpdateWorkerConfigNoContent() *UpdateWorkerConfigNoContent {
	return &UpdateWorkerConfigNoContent{}
}

/*UpdateWorkerConfigNoContent handles this case with default header values.

  The worker configuration has been successfully updated.
*/
type UpdateWorkerConfigNoContent struct {
}

func (o *UpdateWorkerConfigNoContent) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/admin/namespace/{namespace}/workers][%d] updateWorkerConfigNoContent ", 204)
}

func (o *UpdateWorkerConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateWorkerConfigBadRequest creates a UpdateWorkerConfigBadRequest with default headers values
func NewUpdateWorkerConfigBadRequest() *UpdateWorkerConfigBadRequest {
	return &UpdateWorkerConfigBadRequest{}
}

/*UpdateWorkerConfigBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateWorkerConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateWorkerConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/admin/namespace/{namespace}/workers][%d] updateWorkerConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateWorkerConfigBadRequest) ToJSONString() string {
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

func (o *UpdateWorkerConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateWorkerConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateWorkerConfigUnauthorized creates a UpdateWorkerConfigUnauthorized with default headers values
func NewUpdateWorkerConfigUnauthorized() *UpdateWorkerConfigUnauthorized {
	return &UpdateWorkerConfigUnauthorized{}
}

/*UpdateWorkerConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateWorkerConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateWorkerConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/admin/namespace/{namespace}/workers][%d] updateWorkerConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateWorkerConfigUnauthorized) ToJSONString() string {
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

func (o *UpdateWorkerConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateWorkerConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateWorkerConfigNotFound creates a UpdateWorkerConfigNotFound with default headers values
func NewUpdateWorkerConfigNotFound() *UpdateWorkerConfigNotFound {
	return &UpdateWorkerConfigNotFound{}
}

/*UpdateWorkerConfigNotFound handles this case with default header values.

  Not Found
*/
type UpdateWorkerConfigNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateWorkerConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/admin/namespace/{namespace}/workers][%d] updateWorkerConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateWorkerConfigNotFound) ToJSONString() string {
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

func (o *UpdateWorkerConfigNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateWorkerConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateWorkerConfigInternalServerError creates a UpdateWorkerConfigInternalServerError with default headers values
func NewUpdateWorkerConfigInternalServerError() *UpdateWorkerConfigInternalServerError {
	return &UpdateWorkerConfigInternalServerError{}
}

/*UpdateWorkerConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateWorkerConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdateWorkerConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /dsmcontroller/admin/namespace/{namespace}/workers][%d] updateWorkerConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateWorkerConfigInternalServerError) ToJSONString() string {
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

func (o *UpdateWorkerConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateWorkerConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
