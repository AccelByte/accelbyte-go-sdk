// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteDLCItemConfigReader is a Reader for the DeleteDLCItemConfig structure.
type DeleteDLCItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteDLCItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteDLCItemConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/dlc/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteDLCItemConfigNoContent creates a DeleteDLCItemConfigNoContent with default headers values
func NewDeleteDLCItemConfigNoContent() *DeleteDLCItemConfigNoContent {
	return &DeleteDLCItemConfigNoContent{}
}

/*DeleteDLCItemConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteDLCItemConfigNoContent struct {
}

func (o *DeleteDLCItemConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/dlc/config/item][%d] deleteDlcItemConfigNoContent ", 204)
}

func (o *DeleteDLCItemConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
