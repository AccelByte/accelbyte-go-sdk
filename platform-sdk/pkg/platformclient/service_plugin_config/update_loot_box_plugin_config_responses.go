// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

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

// UpdateLootBoxPluginConfigReader is a Reader for the UpdateLootBoxPluginConfig structure.
type UpdateLootBoxPluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLootBoxPluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLootBoxPluginConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateLootBoxPluginConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLootBoxPluginConfigOK creates a UpdateLootBoxPluginConfigOK with default headers values
func NewUpdateLootBoxPluginConfigOK() *UpdateLootBoxPluginConfigOK {
	return &UpdateLootBoxPluginConfigOK{}
}

/*UpdateLootBoxPluginConfigOK handles this case with default header values.

  successful operation
*/
type UpdateLootBoxPluginConfigOK struct {
	Payload *platformclientmodels.LootBoxPluginConfigInfo
}

func (o *UpdateLootBoxPluginConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox][%d] updateLootBoxPluginConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLootBoxPluginConfigOK) ToJSONString() string {
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

func (o *UpdateLootBoxPluginConfigOK) GetPayload() *platformclientmodels.LootBoxPluginConfigInfo {
	return o.Payload
}

func (o *UpdateLootBoxPluginConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.LootBoxPluginConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLootBoxPluginConfigUnprocessableEntity creates a UpdateLootBoxPluginConfigUnprocessableEntity with default headers values
func NewUpdateLootBoxPluginConfigUnprocessableEntity() *UpdateLootBoxPluginConfigUnprocessableEntity {
	return &UpdateLootBoxPluginConfigUnprocessableEntity{}
}

/*UpdateLootBoxPluginConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateLootBoxPluginConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateLootBoxPluginConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox][%d] updateLootBoxPluginConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateLootBoxPluginConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateLootBoxPluginConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateLootBoxPluginConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
