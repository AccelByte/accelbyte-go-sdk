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

// DeleteUserSlotConfigReader is a Reader for the DeleteUserSlotConfig structure.
type DeleteUserSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserSlotConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/admin/namespaces/{namespace}/users/{userId}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserSlotConfigNoContent creates a DeleteUserSlotConfigNoContent with default headers values
func NewDeleteUserSlotConfigNoContent() *DeleteUserSlotConfigNoContent {
	return &DeleteUserSlotConfigNoContent{}
}

/*DeleteUserSlotConfigNoContent handles this case with default header values.

  Successful delete of user/namespace slot config
*/
type DeleteUserSlotConfigNoContent struct {
}

func (o *DeleteUserSlotConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/admin/namespaces/{namespace}/users/{userId}/config][%d] deleteUserSlotConfigNoContent ", 204)
}

func (o *DeleteUserSlotConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
