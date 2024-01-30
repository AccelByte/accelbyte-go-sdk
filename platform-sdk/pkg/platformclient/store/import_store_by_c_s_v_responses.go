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

// ImportStoreByCSVReader is a Reader for the ImportStoreByCSV structure.
type ImportStoreByCSVReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportStoreByCSVReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportStoreByCSVOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportStoreByCSVBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImportStoreByCSVNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewImportStoreByCSVConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportStoreByCSVOK creates a ImportStoreByCSVOK with default headers values
func NewImportStoreByCSVOK() *ImportStoreByCSVOK {
	return &ImportStoreByCSVOK{}
}

/*ImportStoreByCSVOK handles this case with default header values.

  successful operation
*/
type ImportStoreByCSVOK struct {
	Payload *platformclientmodels.ImportStoreResult
}

func (o *ImportStoreByCSVOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV][%d] importStoreByCSVOK  %+v", 200, o.ToJSONString())
}

func (o *ImportStoreByCSVOK) ToJSONString() string {
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

func (o *ImportStoreByCSVOK) GetPayload() *platformclientmodels.ImportStoreResult {
	return o.Payload
}

func (o *ImportStoreByCSVOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ImportStoreResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportStoreByCSVBadRequest creates a ImportStoreByCSVBadRequest with default headers values
func NewImportStoreByCSVBadRequest() *ImportStoreByCSVBadRequest {
	return &ImportStoreByCSVBadRequest{}
}

/*ImportStoreByCSVBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30024</td><td>Unable to parse CSV cell [{content}]</td></tr><tr><td>30025</td><td>[{header}] is required by CSV import/export for catalogType [{catalogType}]</td></tr><tr><td>30121</td><td>Store data is invalid</td></tr></table>
*/
type ImportStoreByCSVBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportStoreByCSVBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV][%d] importStoreByCSVBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportStoreByCSVBadRequest) ToJSONString() string {
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

func (o *ImportStoreByCSVBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStoreByCSVBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStoreByCSVNotFound creates a ImportStoreByCSVNotFound with default headers values
func NewImportStoreByCSVNotFound() *ImportStoreByCSVNotFound {
	return &ImportStoreByCSVNotFound{}
}

/*ImportStoreByCSVNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type ImportStoreByCSVNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportStoreByCSVNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV][%d] importStoreByCSVNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImportStoreByCSVNotFound) ToJSONString() string {
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

func (o *ImportStoreByCSVNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStoreByCSVNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStoreByCSVConflict creates a ImportStoreByCSVConflict with default headers values
func NewImportStoreByCSVConflict() *ImportStoreByCSVConflict {
	return &ImportStoreByCSVConflict{}
}

/*ImportStoreByCSVConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30076</td><td>CSV header [{headerName}] is not supported for CatalogType [{catalogType}]</td></tr><tr><td>30382</td><td>Duplicated Item sku [{sku}]</td></tr></table>
*/
type ImportStoreByCSVConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportStoreByCSVConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV][%d] importStoreByCSVConflict  %+v", 409, o.ToJSONString())
}

func (o *ImportStoreByCSVConflict) ToJSONString() string {
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

func (o *ImportStoreByCSVConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStoreByCSVConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
