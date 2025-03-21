// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// UpdateDLCItemConfigReader is a Reader for the UpdateDLCItemConfig structure.
type UpdateDLCItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateDLCItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateDLCItemConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateDLCItemConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateDLCItemConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateDLCItemConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateDLCItemConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/dlc/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateDLCItemConfigOK creates a UpdateDLCItemConfigOK with default headers values
func NewUpdateDLCItemConfigOK() *UpdateDLCItemConfigOK {
	return &UpdateDLCItemConfigOK{}
}

/*UpdateDLCItemConfigOK handles this case with default header values.

  successful operation
*/
type UpdateDLCItemConfigOK struct {
	Payload *platformclientmodels.DLCItemConfigInfo
}

func (o *UpdateDLCItemConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/item][%d] updateDlcItemConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateDLCItemConfigOK) ToJSONString() string {
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

func (o *UpdateDLCItemConfigOK) GetPayload() *platformclientmodels.DLCItemConfigInfo {
	return o.Payload
}

func (o *UpdateDLCItemConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.DLCItemConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateDLCItemConfigBadRequest creates a UpdateDLCItemConfigBadRequest with default headers values
func NewUpdateDLCItemConfigBadRequest() *UpdateDLCItemConfigBadRequest {
	return &UpdateDLCItemConfigBadRequest{}
}

/*UpdateDLCItemConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>394721</td><td>Invalid platform DLC config namespace [{namespace}]: [{message}]</td></tr></table>
*/
type UpdateDLCItemConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateDLCItemConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/item][%d] updateDlcItemConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateDLCItemConfigBadRequest) ToJSONString() string {
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

func (o *UpdateDLCItemConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateDLCItemConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDLCItemConfigNotFound creates a UpdateDLCItemConfigNotFound with default headers values
func NewUpdateDLCItemConfigNotFound() *UpdateDLCItemConfigNotFound {
	return &UpdateDLCItemConfigNotFound{}
}

/*UpdateDLCItemConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{itemSku}] does not exist </td></tr></table>
*/
type UpdateDLCItemConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateDLCItemConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/item][%d] updateDlcItemConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateDLCItemConfigNotFound) ToJSONString() string {
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

func (o *UpdateDLCItemConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateDLCItemConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDLCItemConfigConflict creates a UpdateDLCItemConfigConflict with default headers values
func NewUpdateDLCItemConfigConflict() *UpdateDLCItemConfigConflict {
	return &UpdateDLCItemConfigConflict{}
}

/*UpdateDLCItemConfigConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39471</td><td>Duplicated dlc reward id [{dlcRewardId}] in namespace [{namespace}] </td></tr></table>
*/
type UpdateDLCItemConfigConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateDLCItemConfigConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/item][%d] updateDlcItemConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateDLCItemConfigConflict) ToJSONString() string {
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

func (o *UpdateDLCItemConfigConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateDLCItemConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateDLCItemConfigUnprocessableEntity creates a UpdateDLCItemConfigUnprocessableEntity with default headers values
func NewUpdateDLCItemConfigUnprocessableEntity() *UpdateDLCItemConfigUnprocessableEntity {
	return &UpdateDLCItemConfigUnprocessableEntity{}
}

/*UpdateDLCItemConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateDLCItemConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateDLCItemConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/item][%d] updateDlcItemConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateDLCItemConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateDLCItemConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateDLCItemConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
