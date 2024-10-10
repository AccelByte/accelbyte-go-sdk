// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteRevocationConfigReader is a Reader for the DeleteRevocationConfig structure.
type DeleteRevocationConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRevocationConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRevocationConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/revocation/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRevocationConfigNoContent creates a DeleteRevocationConfigNoContent with default headers values
func NewDeleteRevocationConfigNoContent() *DeleteRevocationConfigNoContent {
	return &DeleteRevocationConfigNoContent{}
}

/*DeleteRevocationConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteRevocationConfigNoContent struct {
}

func (o *DeleteRevocationConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/revocation/config][%d] deleteRevocationConfigNoContent ", 204)
}

func (o *DeleteRevocationConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
