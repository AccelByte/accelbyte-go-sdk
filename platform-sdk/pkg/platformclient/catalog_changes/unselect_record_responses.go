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

// UnselectRecordReader is a Reader for the UnselectRecord structure.
type UnselectRecordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnselectRecordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnselectRecordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnselectRecordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUnselectRecordConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnselectRecordNoContent creates a UnselectRecordNoContent with default headers values
func NewUnselectRecordNoContent() *UnselectRecordNoContent {
	return &UnselectRecordNoContent{}
}

/*UnselectRecordNoContent handles this case with default header values.

  No Content
*/
type UnselectRecordNoContent struct {
}

func (o *UnselectRecordNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect][%d] unselectRecordNoContent ", 204)
}

func (o *UnselectRecordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnselectRecordNotFound creates a UnselectRecordNotFound with default headers values
func NewUnselectRecordNotFound() *UnselectRecordNotFound {
	return &UnselectRecordNotFound{}
}

/*UnselectRecordNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30041</td><td>Changelog [{changelogId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UnselectRecordNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UnselectRecordNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect][%d] unselectRecordNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnselectRecordNotFound) ToJSONString() string {
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

func (o *UnselectRecordNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnselectRecordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUnselectRecordConflict creates a UnselectRecordConflict with default headers values
func NewUnselectRecordConflict() *UnselectRecordConflict {
	return &UnselectRecordConflict{}
}

/*UnselectRecordConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30071</td><td>Can't unselect item [{itemId}] when the item which is bound to is already selected in namespace [{namespace}]</td></tr><tr><td>30072</td><td>Can't unselect category [{categoryPath}] when item with this category is already selected in namespace [{namespace}]</td></tr><tr><td>30073</td><td>Can't unselect store change</td></tr><tr><td>30074</td><td>Can't unselect subscription's content [{itemId}] when subscription is already selected in namespace [{namespace}]</td></tr></table>
*/
type UnselectRecordConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UnselectRecordConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect][%d] unselectRecordConflict  %+v", 409, o.ToJSONString())
}

func (o *UnselectRecordConflict) ToJSONString() string {
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

func (o *UnselectRecordConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnselectRecordConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
