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

// GetLootBoxPluginConfigReader is a Reader for the GetLootBoxPluginConfig structure.
type GetLootBoxPluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLootBoxPluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLootBoxPluginConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLootBoxPluginConfigOK creates a GetLootBoxPluginConfigOK with default headers values
func NewGetLootBoxPluginConfigOK() *GetLootBoxPluginConfigOK {
	return &GetLootBoxPluginConfigOK{}
}

/*GetLootBoxPluginConfigOK handles this case with default header values.

  successful operation
*/
type GetLootBoxPluginConfigOK struct {
	Payload *platformclientmodels.LootBoxPluginConfigInfo
}

func (o *GetLootBoxPluginConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox][%d] getLootBoxPluginConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetLootBoxPluginConfigOK) ToJSONString() string {
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

func (o *GetLootBoxPluginConfigOK) GetPayload() *platformclientmodels.LootBoxPluginConfigInfo {
	return o.Payload
}

func (o *GetLootBoxPluginConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
