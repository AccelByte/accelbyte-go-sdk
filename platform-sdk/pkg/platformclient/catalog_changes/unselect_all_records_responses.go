// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// UnselectAllRecordsReader is a Reader for the UnselectAllRecords structure.
type UnselectAllRecordsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnselectAllRecordsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnselectAllRecordsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnselectAllRecordsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnselectAllRecordsNoContent creates a UnselectAllRecordsNoContent with default headers values
func NewUnselectAllRecordsNoContent() *UnselectAllRecordsNoContent {
	return &UnselectAllRecordsNoContent{}
}

/*UnselectAllRecordsNoContent handles this case with default header values.

  No Content
*/
type UnselectAllRecordsNoContent struct {
}

func (o *UnselectAllRecordsNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll][%d] unselectAllRecordsNoContent ", 204)
}

func (o *UnselectAllRecordsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnselectAllRecordsNotFound creates a UnselectAllRecordsNotFound with default headers values
func NewUnselectAllRecordsNotFound() *UnselectAllRecordsNotFound {
	return &UnselectAllRecordsNotFound{}
}

/*UnselectAllRecordsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UnselectAllRecordsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UnselectAllRecordsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll][%d] unselectAllRecordsNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnselectAllRecordsNotFound) ToJSONString() string {
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

func (o *UnselectAllRecordsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnselectAllRecordsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
