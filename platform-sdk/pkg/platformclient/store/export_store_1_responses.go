// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// ExportStore1Reader is a Reader for the ExportStore1 structure.
type ExportStore1Reader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportStore1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportStore1OK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewExportStore1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportStore1OK creates a ExportStore1OK with default headers values
func NewExportStore1OK(writer io.Writer) *ExportStore1OK {
	return &ExportStore1OK{
		Payload: writer,
	}
}

/*ExportStore1OK handles this case with default header values.

  Successful operation
*/
type ExportStore1OK struct {
	Payload io.Writer
}

func (o *ExportStore1OK) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export][%d] exportStore1OK  %+v", 200, o.ToJSONString())
}

func (o *ExportStore1OK) ToJSONString() string {
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

func (o *ExportStore1OK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportStore1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportStore1NotFound creates a ExportStore1NotFound with default headers values
func NewExportStore1NotFound() *ExportStore1NotFound {
	return &ExportStore1NotFound{}
}

/*ExportStore1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type ExportStore1NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ExportStore1NotFound) Error() string {
	return fmt.Sprintf("[POST /platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export][%d] exportStore1NotFound  %+v", 404, o.ToJSONString())
}

func (o *ExportStore1NotFound) ToJSONString() string {
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

func (o *ExportStore1NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStore1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
