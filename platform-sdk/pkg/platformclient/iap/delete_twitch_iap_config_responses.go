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

// DeleteTwitchIAPConfigReader is a Reader for the DeleteTwitchIAPConfig structure.
type DeleteTwitchIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTwitchIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTwitchIAPConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/twitch returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTwitchIAPConfigNoContent creates a DeleteTwitchIAPConfigNoContent with default headers values
func NewDeleteTwitchIAPConfigNoContent() *DeleteTwitchIAPConfigNoContent {
	return &DeleteTwitchIAPConfigNoContent{}
}

/*DeleteTwitchIAPConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteTwitchIAPConfigNoContent struct {
}

func (o *DeleteTwitchIAPConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/twitch][%d] deleteTwitchIapConfigNoContent ", 204)
}

func (o *DeleteTwitchIAPConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
