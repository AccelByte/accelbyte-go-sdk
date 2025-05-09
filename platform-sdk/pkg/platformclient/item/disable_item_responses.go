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

// DisableItemReader is a Reader for the DisableItem structure.
type DisableItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DisableItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDisableItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDisableItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDisableItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/{itemId}/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDisableItemOK creates a DisableItemOK with default headers values
func NewDisableItemOK() *DisableItemOK {
	return &DisableItemOK{}
}

/*DisableItemOK handles this case with default header values.

  successful operation
*/
type DisableItemOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *DisableItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/disable][%d] disableItemOK  %+v", 200, o.ToJSONString())
}

func (o *DisableItemOK) ToJSONString() string {
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

func (o *DisableItemOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *DisableItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDisableItemNotFound creates a DisableItemNotFound with default headers values
func NewDisableItemNotFound() *DisableItemNotFound {
	return &DisableItemNotFound{}
}

/*DisableItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DisableItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DisableItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/disable][%d] disableItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *DisableItemNotFound) ToJSONString() string {
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

func (o *DisableItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DisableItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableItemConflict creates a DisableItemConflict with default headers values
func NewDisableItemConflict() *DisableItemConflict {
	return &DisableItemConflict{}
}

/*DisableItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr><tr><td>30387</td><td>The item [{itemId}] is currently associated and cannot be disabled in namespace [{namespace}], Feature {featureName}, Module {moduleName}, and Reference ID {referenceId} are using this item ID</td></tr></table>
*/
type DisableItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DisableItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/disable][%d] disableItemConflict  %+v", 409, o.ToJSONString())
}

func (o *DisableItemConflict) ToJSONString() string {
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

func (o *DisableItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DisableItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
