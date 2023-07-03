// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteLootBoxPluginConfig1Reader is a Reader for the DeleteLootBoxPluginConfig1 structure.
type DeleteLootBoxPluginConfig1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteLootBoxPluginConfig1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteLootBoxPluginConfig1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/revocation/plugins/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteLootBoxPluginConfig1NoContent creates a DeleteLootBoxPluginConfig1NoContent with default headers values
func NewDeleteLootBoxPluginConfig1NoContent() *DeleteLootBoxPluginConfig1NoContent {
	return &DeleteLootBoxPluginConfig1NoContent{}
}

/*DeleteLootBoxPluginConfig1NoContent handles this case with default header values.

  Delete successfully
*/
type DeleteLootBoxPluginConfig1NoContent struct {
}

func (o *DeleteLootBoxPluginConfig1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] deleteLootBoxPluginConfig1NoContent ", 204)
}

func (o *DeleteLootBoxPluginConfig1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
