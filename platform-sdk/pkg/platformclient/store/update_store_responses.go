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

// UpdateStoreReader is a Reader for the UpdateStore structure.
type UpdateStoreReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateStoreReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateStoreOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateStoreNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateStoreConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateStoreUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateStoreOK creates a UpdateStoreOK with default headers values
func NewUpdateStoreOK() *UpdateStoreOK {
	return &UpdateStoreOK{}
}

/*UpdateStoreOK handles this case with default header values.

  successful operation
*/
type UpdateStoreOK struct {
	Payload *platformclientmodels.StoreInfo
}

func (o *UpdateStoreOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}][%d] updateStoreOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateStoreOK) ToJSONString() string {
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

func (o *UpdateStoreOK) GetPayload() *platformclientmodels.StoreInfo {
	return o.Payload
}

func (o *UpdateStoreOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.StoreInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateStoreNotFound creates a UpdateStoreNotFound with default headers values
func NewUpdateStoreNotFound() *UpdateStoreNotFound {
	return &UpdateStoreNotFound{}
}

/*UpdateStoreNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateStoreNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateStoreNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}][%d] updateStoreNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateStoreNotFound) ToJSONString() string {
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

func (o *UpdateStoreNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStoreNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStoreConflict creates a UpdateStoreConflict with default headers values
func NewUpdateStoreConflict() *UpdateStoreConflict {
	return &UpdateStoreConflict{}
}

/*UpdateStoreConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30171</td><td>Store [{store}] can't change default language to [{language}]</td></tr><tr><td>30172</td><td>Store [{store}] can't change default region to [{region}]</td></tr></table>
*/
type UpdateStoreConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateStoreConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}][%d] updateStoreConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateStoreConflict) ToJSONString() string {
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

func (o *UpdateStoreConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateStoreConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateStoreUnprocessableEntity creates a UpdateStoreUnprocessableEntity with default headers values
func NewUpdateStoreUnprocessableEntity() *UpdateStoreUnprocessableEntity {
	return &UpdateStoreUnprocessableEntity{}
}

/*UpdateStoreUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateStoreUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateStoreUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}][%d] updateStoreUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateStoreUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateStoreUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateStoreUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
