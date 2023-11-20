// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// ExportStatCycleReader is a Reader for the ExportStatCycle structure.
type ExportStatCycleReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportStatCycleOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewExportStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewExportStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewExportStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/statCycles/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportStatCycleOK creates a ExportStatCycleOK with default headers values
func NewExportStatCycleOK(writer io.Writer) *ExportStatCycleOK {
	return &ExportStatCycleOK{
		Payload: writer,
	}
}

/*ExportStatCycleOK handles this case with default header values.

  successful export of stat cycle configs
*/
type ExportStatCycleOK struct {
	Payload io.Writer
}

func (o *ExportStatCycleOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statCycles/export][%d] exportStatCycleOK  %+v", 200, o.ToJSONString())
}

func (o *ExportStatCycleOK) ToJSONString() string {
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

func (o *ExportStatCycleOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportStatCycleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportStatCycleUnauthorized creates a ExportStatCycleUnauthorized with default headers values
func NewExportStatCycleUnauthorized() *ExportStatCycleUnauthorized {
	return &ExportStatCycleUnauthorized{}
}

/*ExportStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type ExportStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ExportStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statCycles/export][%d] exportStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ExportStatCycleUnauthorized) ToJSONString() string {
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

func (o *ExportStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportStatCycleForbidden creates a ExportStatCycleForbidden with default headers values
func NewExportStatCycleForbidden() *ExportStatCycleForbidden {
	return &ExportStatCycleForbidden{}
}

/*ExportStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ExportStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ExportStatCycleForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statCycles/export][%d] exportStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *ExportStatCycleForbidden) ToJSONString() string {
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

func (o *ExportStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportStatCycleInternalServerError creates a ExportStatCycleInternalServerError with default headers values
func NewExportStatCycleInternalServerError() *ExportStatCycleInternalServerError {
	return &ExportStatCycleInternalServerError{}
}

/*ExportStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type ExportStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ExportStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statCycles/export][%d] exportStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ExportStatCycleInternalServerError) ToJSONString() string {
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

func (o *ExportStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
