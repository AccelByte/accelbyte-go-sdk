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

// UpdateLootBoxPluginConfig1Reader is a Reader for the UpdateLootBoxPluginConfig1 structure.
type UpdateLootBoxPluginConfig1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLootBoxPluginConfig1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLootBoxPluginConfig1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateLootBoxPluginConfig1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLootBoxPluginConfig1OK creates a UpdateLootBoxPluginConfig1OK with default headers values
func NewUpdateLootBoxPluginConfig1OK() *UpdateLootBoxPluginConfig1OK {
	return &UpdateLootBoxPluginConfig1OK{}
}

/*UpdateLootBoxPluginConfig1OK handles this case with default header values.

  successful operation
*/
type UpdateLootBoxPluginConfig1OK struct {
	Payload *platformclientmodels.RevocationPluginConfigInfo
}

func (o *UpdateLootBoxPluginConfig1OK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] updateLootBoxPluginConfig1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLootBoxPluginConfig1OK) ToJSONString() string {
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

func (o *UpdateLootBoxPluginConfig1OK) GetPayload() *platformclientmodels.RevocationPluginConfigInfo {
	return o.Payload
}

func (o *UpdateLootBoxPluginConfig1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevocationPluginConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLootBoxPluginConfig1UnprocessableEntity creates a UpdateLootBoxPluginConfig1UnprocessableEntity with default headers values
func NewUpdateLootBoxPluginConfig1UnprocessableEntity() *UpdateLootBoxPluginConfig1UnprocessableEntity {
	return &UpdateLootBoxPluginConfig1UnprocessableEntity{}
}

/*UpdateLootBoxPluginConfig1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateLootBoxPluginConfig1UnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateLootBoxPluginConfig1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] updateLootBoxPluginConfig1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateLootBoxPluginConfig1UnprocessableEntity) ToJSONString() string {
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

func (o *UpdateLootBoxPluginConfig1UnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateLootBoxPluginConfig1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
