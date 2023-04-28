// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// BulkGetLocaleItemsReader is a Reader for the BulkGetLocaleItems structure.
type BulkGetLocaleItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetLocaleItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetLocaleItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkGetLocaleItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/locale/byIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetLocaleItemsOK creates a BulkGetLocaleItemsOK with default headers values
func NewBulkGetLocaleItemsOK() *BulkGetLocaleItemsOK {
	return &BulkGetLocaleItemsOK{}
}

/*BulkGetLocaleItemsOK handles this case with default header values.

  successful operation
*/
type BulkGetLocaleItemsOK struct {
	Payload []*platformclientmodels.ItemInfo
}

func (o *BulkGetLocaleItemsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/locale/byIds][%d] bulkGetLocaleItemsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetLocaleItemsOK) ToJSONString() string {
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

func (o *BulkGetLocaleItemsOK) GetPayload() []*platformclientmodels.ItemInfo {
	return o.Payload
}

func (o *BulkGetLocaleItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetLocaleItemsNotFound creates a BulkGetLocaleItemsNotFound with default headers values
func NewBulkGetLocaleItemsNotFound() *BulkGetLocaleItemsNotFound {
	return &BulkGetLocaleItemsNotFound{}
}

/*BulkGetLocaleItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type BulkGetLocaleItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *BulkGetLocaleItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/locale/byIds][%d] bulkGetLocaleItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkGetLocaleItemsNotFound) ToJSONString() string {
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

func (o *BulkGetLocaleItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetLocaleItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
