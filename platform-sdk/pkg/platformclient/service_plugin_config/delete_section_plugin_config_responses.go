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

// DeleteSectionPluginConfigReader is a Reader for the DeleteSectionPluginConfig structure.
type DeleteSectionPluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSectionPluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSectionPluginConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/catalog/plugins/section returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSectionPluginConfigNoContent creates a DeleteSectionPluginConfigNoContent with default headers values
func NewDeleteSectionPluginConfigNoContent() *DeleteSectionPluginConfigNoContent {
	return &DeleteSectionPluginConfigNoContent{}
}

/*DeleteSectionPluginConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteSectionPluginConfigNoContent struct {
}

func (o *DeleteSectionPluginConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/catalog/plugins/section][%d] deleteSectionPluginConfigNoContent ", 204)
}

func (o *DeleteSectionPluginConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
