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

// DeleteRevocationPluginConfigReader is a Reader for the DeleteRevocationPluginConfig structure.
type DeleteRevocationPluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRevocationPluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRevocationPluginConfigNoContent()
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

// NewDeleteRevocationPluginConfigNoContent creates a DeleteRevocationPluginConfigNoContent with default headers values
func NewDeleteRevocationPluginConfigNoContent() *DeleteRevocationPluginConfigNoContent {
	return &DeleteRevocationPluginConfigNoContent{}
}

/*DeleteRevocationPluginConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteRevocationPluginConfigNoContent struct {
}

func (o *DeleteRevocationPluginConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] deleteRevocationPluginConfigNoContent ", 204)
}

func (o *DeleteRevocationPluginConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
