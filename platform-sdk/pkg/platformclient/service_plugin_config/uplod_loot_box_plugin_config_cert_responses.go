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

// UplodLootBoxPluginConfigCertReader is a Reader for the UplodLootBoxPluginConfigCert structure.
type UplodLootBoxPluginConfigCertReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UplodLootBoxPluginConfigCertReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUplodLootBoxPluginConfigCertOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUplodLootBoxPluginConfigCertUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUplodLootBoxPluginConfigCertOK creates a UplodLootBoxPluginConfigCertOK with default headers values
func NewUplodLootBoxPluginConfigCertOK() *UplodLootBoxPluginConfigCertOK {
	return &UplodLootBoxPluginConfigCertOK{}
}

/*UplodLootBoxPluginConfigCertOK handles this case with default header values.

  successful operation
*/
type UplodLootBoxPluginConfigCertOK struct {
	Payload *platformclientmodels.LootBoxPluginConfigInfo
}

func (o *UplodLootBoxPluginConfigCertOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert][%d] uplodLootBoxPluginConfigCertOK  %+v", 200, o.ToJSONString())
}

func (o *UplodLootBoxPluginConfigCertOK) ToJSONString() string {
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

func (o *UplodLootBoxPluginConfigCertOK) GetPayload() *platformclientmodels.LootBoxPluginConfigInfo {
	return o.Payload
}

func (o *UplodLootBoxPluginConfigCertOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUplodLootBoxPluginConfigCertUnprocessableEntity creates a UplodLootBoxPluginConfigCertUnprocessableEntity with default headers values
func NewUplodLootBoxPluginConfigCertUnprocessableEntity() *UplodLootBoxPluginConfigCertUnprocessableEntity {
	return &UplodLootBoxPluginConfigCertUnprocessableEntity{}
}

/*UplodLootBoxPluginConfigCertUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UplodLootBoxPluginConfigCertUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UplodLootBoxPluginConfigCertUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert][%d] uplodLootBoxPluginConfigCertUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UplodLootBoxPluginConfigCertUnprocessableEntity) ToJSONString() string {
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

func (o *UplodLootBoxPluginConfigCertUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UplodLootBoxPluginConfigCertUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
