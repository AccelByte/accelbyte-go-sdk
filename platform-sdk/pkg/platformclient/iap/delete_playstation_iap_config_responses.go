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

// DeletePlaystationIAPConfigReader is a Reader for the DeletePlaystationIAPConfig structure.
type DeletePlaystationIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePlaystationIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePlaystationIAPConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/playstation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePlaystationIAPConfigNoContent creates a DeletePlaystationIAPConfigNoContent with default headers values
func NewDeletePlaystationIAPConfigNoContent() *DeletePlaystationIAPConfigNoContent {
	return &DeletePlaystationIAPConfigNoContent{}
}

/*DeletePlaystationIAPConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeletePlaystationIAPConfigNoContent struct {
}

func (o *DeletePlaystationIAPConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/playstation][%d] deletePlaystationIapConfigNoContent ", 204)
}

func (o *DeletePlaystationIAPConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
