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

// DeleteServicePluginConfigReader is a Reader for the DeleteServicePluginConfig structure.
type DeleteServicePluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteServicePluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteServicePluginConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/configs/servicePlugin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteServicePluginConfigNoContent creates a DeleteServicePluginConfigNoContent with default headers values
func NewDeleteServicePluginConfigNoContent() *DeleteServicePluginConfigNoContent {
	return &DeleteServicePluginConfigNoContent{}
}

/*DeleteServicePluginConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteServicePluginConfigNoContent struct {
}

func (o *DeleteServicePluginConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/configs/servicePlugin][%d] deleteServicePluginConfigNoContent ", 204)
}

func (o *DeleteServicePluginConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
