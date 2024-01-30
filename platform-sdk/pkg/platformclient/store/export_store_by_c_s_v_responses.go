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

// ExportStoreByCSVReader is a Reader for the ExportStoreByCSV structure.
type ExportStoreByCSVReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportStoreByCSVReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportStoreByCSVOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewExportStoreByCSVBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewExportStoreByCSVNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewExportStoreByCSVConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/stores/exportByCSV returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportStoreByCSVOK creates a ExportStoreByCSVOK with default headers values
func NewExportStoreByCSVOK(writer io.Writer) *ExportStoreByCSVOK {
	return &ExportStoreByCSVOK{
		Payload: writer,
	}
}

/*ExportStoreByCSVOK handles this case with default header values.

  Successful operation
*/
type ExportStoreByCSVOK struct {
	Payload io.Writer
}

func (o *ExportStoreByCSVOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/exportByCSV][%d] exportStoreByCSVOK  %+v", 200, o.ToJSONString())
}

func (o *ExportStoreByCSVOK) ToJSONString() string {
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

func (o *ExportStoreByCSVOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportStoreByCSVOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportStoreByCSVBadRequest creates a ExportStoreByCSVBadRequest with default headers values
func NewExportStoreByCSVBadRequest() *ExportStoreByCSVBadRequest {
	return &ExportStoreByCSVBadRequest{}
}

/*ExportStoreByCSVBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30025</td><td>[{header}] is required by CSV import/export for catalogType [{catalogType}]</td></tr></table>
*/
type ExportStoreByCSVBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ExportStoreByCSVBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/exportByCSV][%d] exportStoreByCSVBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ExportStoreByCSVBadRequest) ToJSONString() string {
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

func (o *ExportStoreByCSVBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStoreByCSVBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportStoreByCSVNotFound creates a ExportStoreByCSVNotFound with default headers values
func NewExportStoreByCSVNotFound() *ExportStoreByCSVNotFound {
	return &ExportStoreByCSVNotFound{}
}

/*ExportStoreByCSVNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type ExportStoreByCSVNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ExportStoreByCSVNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/exportByCSV][%d] exportStoreByCSVNotFound  %+v", 404, o.ToJSONString())
}

func (o *ExportStoreByCSVNotFound) ToJSONString() string {
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

func (o *ExportStoreByCSVNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStoreByCSVNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportStoreByCSVConflict creates a ExportStoreByCSVConflict with default headers values
func NewExportStoreByCSVConflict() *ExportStoreByCSVConflict {
	return &ExportStoreByCSVConflict{}
}

/*ExportStoreByCSVConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30076</td><td>CSV header [{headerName}] is not supported for CatalogType [{catalogType}]</td></tr></table>
*/
type ExportStoreByCSVConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ExportStoreByCSVConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/exportByCSV][%d] exportStoreByCSVConflict  %+v", 409, o.ToJSONString())
}

func (o *ExportStoreByCSVConflict) ToJSONString() string {
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

func (o *ExportStoreByCSVConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ExportStoreByCSVConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
