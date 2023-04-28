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

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// AddPortReader is a Reader for the AddPort structure.
type AddPortReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddPortReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAddPortCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddPortBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddPortUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddPortNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAddPortConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddPortInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddPortCreated creates a AddPortCreated with default headers values
func NewAddPortCreated() *AddPortCreated {
	return &AddPortCreated{}
}

/*AddPortCreated handles this case with default header values.

  pod config created
*/
type AddPortCreated struct {
	Payload *dsmcclientmodels.ModelsDSMConfigRecord
}

func (o *AddPortCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortCreated  %+v", 201, o.ToJSONString())
}

func (o *AddPortCreated) ToJSONString() string {
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

func (o *AddPortCreated) GetPayload() *dsmcclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *AddPortCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDSMConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddPortBadRequest creates a AddPortBadRequest with default headers values
func NewAddPortBadRequest() *AddPortBadRequest {
	return &AddPortBadRequest{}
}

/*AddPortBadRequest handles this case with default header values.

  malformed request
*/
type AddPortBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddPortBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddPortBadRequest) ToJSONString() string {
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

func (o *AddPortBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddPortBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddPortUnauthorized creates a AddPortUnauthorized with default headers values
func NewAddPortUnauthorized() *AddPortUnauthorized {
	return &AddPortUnauthorized{}
}

/*AddPortUnauthorized handles this case with default header values.

  Unauthorized
*/
type AddPortUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddPortUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddPortUnauthorized) ToJSONString() string {
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

func (o *AddPortUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddPortUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddPortNotFound creates a AddPortNotFound with default headers values
func NewAddPortNotFound() *AddPortNotFound {
	return &AddPortNotFound{}
}

/*AddPortNotFound handles this case with default header values.

  port config not found
*/
type AddPortNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddPortNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortNotFound  %+v", 404, o.ToJSONString())
}

func (o *AddPortNotFound) ToJSONString() string {
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

func (o *AddPortNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddPortNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddPortConflict creates a AddPortConflict with default headers values
func NewAddPortConflict() *AddPortConflict {
	return &AddPortConflict{}
}

/*AddPortConflict handles this case with default header values.

  port config already exists
*/
type AddPortConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddPortConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortConflict  %+v", 409, o.ToJSONString())
}

func (o *AddPortConflict) ToJSONString() string {
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

func (o *AddPortConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddPortConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddPortInternalServerError creates a AddPortInternalServerError with default headers values
func NewAddPortInternalServerError() *AddPortInternalServerError {
	return &AddPortInternalServerError{}
}

/*AddPortInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AddPortInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddPortInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] addPortInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddPortInternalServerError) ToJSONString() string {
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

func (o *AddPortInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddPortInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
