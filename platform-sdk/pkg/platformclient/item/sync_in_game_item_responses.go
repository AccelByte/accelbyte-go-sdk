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

// SyncInGameItemReader is a Reader for the SyncInGameItem structure.
type SyncInGameItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncInGameItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncInGameItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncInGameItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncInGameItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSyncInGameItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewSyncInGameItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncInGameItemOK creates a SyncInGameItemOK with default headers values
func NewSyncInGameItemOK() *SyncInGameItemOK {
	return &SyncInGameItemOK{}
}

/*SyncInGameItemOK handles this case with default header values.

  successful operation
*/
type SyncInGameItemOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *SyncInGameItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items][%d] syncInGameItemOK  %+v", 200, o.ToJSONString())
}

func (o *SyncInGameItemOK) ToJSONString() string {
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

func (o *SyncInGameItemOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *SyncInGameItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncInGameItemBadRequest creates a SyncInGameItemBadRequest with default headers values
func NewSyncInGameItemBadRequest() *SyncInGameItemBadRequest {
	return &SyncInGameItemBadRequest{}
}

/*SyncInGameItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr><tr><td>30022</td><td>Default region [{region}] is required</td></tr><tr><td>30324</td><td>Invalid namespace [{namespace}]</td></tr></table>
*/
type SyncInGameItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncInGameItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items][%d] syncInGameItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncInGameItemBadRequest) ToJSONString() string {
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

func (o *SyncInGameItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncInGameItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncInGameItemNotFound creates a SyncInGameItemNotFound with default headers values
func NewSyncInGameItemNotFound() *SyncInGameItemNotFound {
	return &SyncInGameItemNotFound{}
}

/*SyncInGameItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30241</td><td>Category [{categoryPath}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type SyncInGameItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncInGameItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items][%d] syncInGameItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncInGameItemNotFound) ToJSONString() string {
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

func (o *SyncInGameItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncInGameItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncInGameItemConflict creates a SyncInGameItemConflict with default headers values
func NewSyncInGameItemConflict() *SyncInGameItemConflict {
	return &SyncInGameItemConflict{}
}

/*SyncInGameItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr><tr><td>30373</td><td>ItemType [{itemType}] is not allowed in namespace [{namespace}]</td></tr></table>
*/
type SyncInGameItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncInGameItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items][%d] syncInGameItemConflict  %+v", 409, o.ToJSONString())
}

func (o *SyncInGameItemConflict) ToJSONString() string {
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

func (o *SyncInGameItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncInGameItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncInGameItemUnprocessableEntity creates a SyncInGameItemUnprocessableEntity with default headers values
func NewSyncInGameItemUnprocessableEntity() *SyncInGameItemUnprocessableEntity {
	return &SyncInGameItemUnprocessableEntity{}
}

/*SyncInGameItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type SyncInGameItemUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *SyncInGameItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items][%d] syncInGameItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *SyncInGameItemUnprocessableEntity) ToJSONString() string {
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

func (o *SyncInGameItemUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *SyncInGameItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
