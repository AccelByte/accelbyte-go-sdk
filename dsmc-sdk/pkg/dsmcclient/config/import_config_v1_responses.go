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

// ImportConfigV1Reader is a Reader for the ImportConfigV1 structure.
type ImportConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportConfigV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImportConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportConfigV1OK creates a ImportConfigV1OK with default headers values
func NewImportConfigV1OK() *ImportConfigV1OK {
	return &ImportConfigV1OK{}
}

/*ImportConfigV1OK handles this case with default header values.

  config imported
*/
type ImportConfigV1OK struct {
	Payload *dsmcclientmodels.ModelsImportResponse
}

func (o *ImportConfigV1OK) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *ImportConfigV1OK) ToJSONString() string {
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

func (o *ImportConfigV1OK) GetPayload() *dsmcclientmodels.ModelsImportResponse {
	return o.Payload
}

func (o *ImportConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsImportResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportConfigV1BadRequest creates a ImportConfigV1BadRequest with default headers values
func NewImportConfigV1BadRequest() *ImportConfigV1BadRequest {
	return &ImportConfigV1BadRequest{}
}

/*ImportConfigV1BadRequest handles this case with default header values.

  malformed request
*/
type ImportConfigV1BadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportConfigV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportConfigV1BadRequest) ToJSONString() string {
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

func (o *ImportConfigV1BadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportConfigV1Unauthorized creates a ImportConfigV1Unauthorized with default headers values
func NewImportConfigV1Unauthorized() *ImportConfigV1Unauthorized {
	return &ImportConfigV1Unauthorized{}
}

/*ImportConfigV1Unauthorized handles this case with default header values.

  unauthorized access
*/
type ImportConfigV1Unauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportConfigV1Unauthorized) ToJSONString() string {
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

func (o *ImportConfigV1Unauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportConfigV1Forbidden creates a ImportConfigV1Forbidden with default headers values
func NewImportConfigV1Forbidden() *ImportConfigV1Forbidden {
	return &ImportConfigV1Forbidden{}
}

/*ImportConfigV1Forbidden handles this case with default header values.

  forbidden access
*/
type ImportConfigV1Forbidden struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportConfigV1Forbidden) ToJSONString() string {
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

func (o *ImportConfigV1Forbidden) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportConfigV1NotFound creates a ImportConfigV1NotFound with default headers values
func NewImportConfigV1NotFound() *ImportConfigV1NotFound {
	return &ImportConfigV1NotFound{}
}

/*ImportConfigV1NotFound handles this case with default header values.

  config not found
*/
type ImportConfigV1NotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportConfigV1NotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *ImportConfigV1NotFound) ToJSONString() string {
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

func (o *ImportConfigV1NotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportConfigV1InternalServerError creates a ImportConfigV1InternalServerError with default headers values
func NewImportConfigV1InternalServerError() *ImportConfigV1InternalServerError {
	return &ImportConfigV1InternalServerError{}
}

/*ImportConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImportConfigV1InternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import][%d] importConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportConfigV1InternalServerError) ToJSONString() string {
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

func (o *ImportConfigV1InternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
