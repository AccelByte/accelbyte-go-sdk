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

// AddBufferReader is a Reader for the AddBuffer structure.
type AddBufferReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddBufferReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAddBufferOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddBufferBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddBufferUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAddBufferConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddBufferInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddBufferOK creates a AddBufferOK with default headers values
func NewAddBufferOK() *AddBufferOK {
	return &AddBufferOK{}
}

/*AddBufferOK handles this case with default header values.

  buffer requested
*/
type AddBufferOK struct {
	Payload *dsmcclientmodels.ModelsAddBufferResponse
}

func (o *AddBufferOK) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add][%d] addBufferOK  %+v", 200, o.ToJSONString())
}

func (o *AddBufferOK) ToJSONString() string {
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

func (o *AddBufferOK) GetPayload() *dsmcclientmodels.ModelsAddBufferResponse {
	return o.Payload
}

func (o *AddBufferOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsAddBufferResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddBufferBadRequest creates a AddBufferBadRequest with default headers values
func NewAddBufferBadRequest() *AddBufferBadRequest {
	return &AddBufferBadRequest{}
}

/*AddBufferBadRequest handles this case with default header values.

  malformed request
*/
type AddBufferBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddBufferBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add][%d] addBufferBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddBufferBadRequest) ToJSONString() string {
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

func (o *AddBufferBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddBufferBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddBufferUnauthorized creates a AddBufferUnauthorized with default headers values
func NewAddBufferUnauthorized() *AddBufferUnauthorized {
	return &AddBufferUnauthorized{}
}

/*AddBufferUnauthorized handles this case with default header values.

  Unauthorized
*/
type AddBufferUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddBufferUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add][%d] addBufferUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddBufferUnauthorized) ToJSONString() string {
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

func (o *AddBufferUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddBufferUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddBufferConflict creates a AddBufferConflict with default headers values
func NewAddBufferConflict() *AddBufferConflict {
	return &AddBufferConflict{}
}

/*AddBufferConflict handles this case with default header values.

  Conflict
*/
type AddBufferConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddBufferConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add][%d] addBufferConflict  %+v", 409, o.ToJSONString())
}

func (o *AddBufferConflict) ToJSONString() string {
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

func (o *AddBufferConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddBufferConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddBufferInternalServerError creates a AddBufferInternalServerError with default headers values
func NewAddBufferInternalServerError() *AddBufferInternalServerError {
	return &AddBufferInternalServerError{}
}

/*AddBufferInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AddBufferInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *AddBufferInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add][%d] addBufferInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddBufferInternalServerError) ToJSONString() string {
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

func (o *AddBufferInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *AddBufferInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
