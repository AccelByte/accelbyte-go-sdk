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

// UpdateItemPurchaseConditionReader is a Reader for the UpdateItemPurchaseCondition structure.
type UpdateItemPurchaseConditionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateItemPurchaseConditionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateItemPurchaseConditionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateItemPurchaseConditionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateItemPurchaseConditionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateItemPurchaseConditionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateItemPurchaseConditionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateItemPurchaseConditionOK creates a UpdateItemPurchaseConditionOK with default headers values
func NewUpdateItemPurchaseConditionOK() *UpdateItemPurchaseConditionOK {
	return &UpdateItemPurchaseConditionOK{}
}

/*UpdateItemPurchaseConditionOK handles this case with default header values.

  successful operation
*/
type UpdateItemPurchaseConditionOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *UpdateItemPurchaseConditionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition][%d] updateItemPurchaseConditionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateItemPurchaseConditionOK) ToJSONString() string {
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

func (o *UpdateItemPurchaseConditionOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *UpdateItemPurchaseConditionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemPurchaseConditionBadRequest creates a UpdateItemPurchaseConditionBadRequest with default headers values
func NewUpdateItemPurchaseConditionBadRequest() *UpdateItemPurchaseConditionBadRequest {
	return &UpdateItemPurchaseConditionBadRequest{}
}

/*UpdateItemPurchaseConditionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30331</td><td>Invalid purchase condition</td></tr></table>
*/
type UpdateItemPurchaseConditionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemPurchaseConditionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition][%d] updateItemPurchaseConditionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateItemPurchaseConditionBadRequest) ToJSONString() string {
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

func (o *UpdateItemPurchaseConditionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemPurchaseConditionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemPurchaseConditionNotFound creates a UpdateItemPurchaseConditionNotFound with default headers values
func NewUpdateItemPurchaseConditionNotFound() *UpdateItemPurchaseConditionNotFound {
	return &UpdateItemPurchaseConditionNotFound{}
}

/*UpdateItemPurchaseConditionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateItemPurchaseConditionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemPurchaseConditionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition][%d] updateItemPurchaseConditionNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateItemPurchaseConditionNotFound) ToJSONString() string {
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

func (o *UpdateItemPurchaseConditionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemPurchaseConditionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemPurchaseConditionConflict creates a UpdateItemPurchaseConditionConflict with default headers values
func NewUpdateItemPurchaseConditionConflict() *UpdateItemPurchaseConditionConflict {
	return &UpdateItemPurchaseConditionConflict{}
}

/*UpdateItemPurchaseConditionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type UpdateItemPurchaseConditionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemPurchaseConditionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition][%d] updateItemPurchaseConditionConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateItemPurchaseConditionConflict) ToJSONString() string {
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

func (o *UpdateItemPurchaseConditionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemPurchaseConditionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemPurchaseConditionUnprocessableEntity creates a UpdateItemPurchaseConditionUnprocessableEntity with default headers values
func NewUpdateItemPurchaseConditionUnprocessableEntity() *UpdateItemPurchaseConditionUnprocessableEntity {
	return &UpdateItemPurchaseConditionUnprocessableEntity{}
}

/*UpdateItemPurchaseConditionUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateItemPurchaseConditionUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateItemPurchaseConditionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition][%d] updateItemPurchaseConditionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateItemPurchaseConditionUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateItemPurchaseConditionUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateItemPurchaseConditionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
