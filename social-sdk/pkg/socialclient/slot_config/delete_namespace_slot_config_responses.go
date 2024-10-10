// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot_config

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteNamespaceSlotConfigReader is a Reader for the DeleteNamespaceSlotConfig structure.
type DeleteNamespaceSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNamespaceSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteNamespaceSlotConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/admin/namespaces/{namespace}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNamespaceSlotConfigNoContent creates a DeleteNamespaceSlotConfigNoContent with default headers values
func NewDeleteNamespaceSlotConfigNoContent() *DeleteNamespaceSlotConfigNoContent {
	return &DeleteNamespaceSlotConfigNoContent{}
}

/*DeleteNamespaceSlotConfigNoContent handles this case with default header values.

  Successful delete of namespace slot config
*/
type DeleteNamespaceSlotConfigNoContent struct {
}

func (o *DeleteNamespaceSlotConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/admin/namespaces/{namespace}/config][%d] deleteNamespaceSlotConfigNoContent ", 204)
}

func (o *DeleteNamespaceSlotConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
