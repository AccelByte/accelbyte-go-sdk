// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteIAPItemConfigReader is a Reader for the DeleteIAPItemConfig structure.
type DeleteIAPItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteIAPItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteIAPItemConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteIAPItemConfigNoContent creates a DeleteIAPItemConfigNoContent with default headers values
func NewDeleteIAPItemConfigNoContent() *DeleteIAPItemConfigNoContent {
	return &DeleteIAPItemConfigNoContent{}
}

/*DeleteIAPItemConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteIAPItemConfigNoContent struct {
}

func (o *DeleteIAPItemConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/item][%d] deleteIapItemConfigNoContent ", 204)
}

func (o *DeleteIAPItemConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
