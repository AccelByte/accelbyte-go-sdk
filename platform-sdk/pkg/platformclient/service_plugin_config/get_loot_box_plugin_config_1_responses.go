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

// GetLootBoxPluginConfig1Reader is a Reader for the GetLootBoxPluginConfig1 structure.
type GetLootBoxPluginConfig1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLootBoxPluginConfig1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLootBoxPluginConfig1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/revocation/plugins/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLootBoxPluginConfig1OK creates a GetLootBoxPluginConfig1OK with default headers values
func NewGetLootBoxPluginConfig1OK() *GetLootBoxPluginConfig1OK {
	return &GetLootBoxPluginConfig1OK{}
}

/*GetLootBoxPluginConfig1OK handles this case with default header values.

  successful operation
*/
type GetLootBoxPluginConfig1OK struct {
	Payload *platformclientmodels.RevocationPluginConfigInfo
}

func (o *GetLootBoxPluginConfig1OK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] getLootBoxPluginConfig1OK  %+v", 200, o.ToJSONString())
}

func (o *GetLootBoxPluginConfig1OK) ToJSONString() string {
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

func (o *GetLootBoxPluginConfig1OK) GetPayload() *platformclientmodels.RevocationPluginConfigInfo {
	return o.Payload
}

func (o *GetLootBoxPluginConfig1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
