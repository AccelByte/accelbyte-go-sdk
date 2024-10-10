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

// ExportConfigV1Reader is a Reader for the ExportConfigV1 structure.
type ExportConfigV1Reader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportConfigV1OK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewExportConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewExportConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewExportConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewExportConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportConfigV1OK creates a ExportConfigV1OK with default headers values
func NewExportConfigV1OK(writer io.Writer) *ExportConfigV1OK {
	return &ExportConfigV1OK{
		Payload: writer,
	}
}

/*ExportConfigV1OK handles this case with default header values.

  config exported
*/
type ExportConfigV1OK struct {
	Payload io.Writer
}

func (o *ExportConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export][%d] exportConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *ExportConfigV1OK) ToJSONString() string {
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

func (o *ExportConfigV1OK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportConfigV1Unauthorized creates a ExportConfigV1Unauthorized with default headers values
func NewExportConfigV1Unauthorized() *ExportConfigV1Unauthorized {
	return &ExportConfigV1Unauthorized{}
}

/*ExportConfigV1Unauthorized handles this case with default header values.

  unauthorized access
*/
type ExportConfigV1Unauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ExportConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export][%d] exportConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ExportConfigV1Unauthorized) ToJSONString() string {
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

func (o *ExportConfigV1Unauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewExportConfigV1Forbidden creates a ExportConfigV1Forbidden with default headers values
func NewExportConfigV1Forbidden() *ExportConfigV1Forbidden {
	return &ExportConfigV1Forbidden{}
}

/*ExportConfigV1Forbidden handles this case with default header values.

  forbidden access
*/
type ExportConfigV1Forbidden struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ExportConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export][%d] exportConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ExportConfigV1Forbidden) ToJSONString() string {
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

func (o *ExportConfigV1Forbidden) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewExportConfigV1NotFound creates a ExportConfigV1NotFound with default headers values
func NewExportConfigV1NotFound() *ExportConfigV1NotFound {
	return &ExportConfigV1NotFound{}
}

/*ExportConfigV1NotFound handles this case with default header values.

  config not found
*/
type ExportConfigV1NotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ExportConfigV1NotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export][%d] exportConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *ExportConfigV1NotFound) ToJSONString() string {
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

func (o *ExportConfigV1NotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewExportConfigV1InternalServerError creates a ExportConfigV1InternalServerError with default headers values
func NewExportConfigV1InternalServerError() *ExportConfigV1InternalServerError {
	return &ExportConfigV1InternalServerError{}
}

/*ExportConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type ExportConfigV1InternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ExportConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export][%d] exportConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ExportConfigV1InternalServerError) ToJSONString() string {
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

func (o *ExportConfigV1InternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
