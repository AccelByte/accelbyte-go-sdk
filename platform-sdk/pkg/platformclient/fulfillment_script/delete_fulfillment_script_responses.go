// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment_script

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteFulfillmentScriptReader is a Reader for the DeleteFulfillmentScript structure.
type DeleteFulfillmentScriptReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteFulfillmentScriptReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteFulfillmentScriptNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/fulfillment/scripts/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteFulfillmentScriptNoContent creates a DeleteFulfillmentScriptNoContent with default headers values
func NewDeleteFulfillmentScriptNoContent() *DeleteFulfillmentScriptNoContent {
	return &DeleteFulfillmentScriptNoContent{}
}

/*DeleteFulfillmentScriptNoContent handles this case with default header values.

  delete fulfillment script successfully
*/
type DeleteFulfillmentScriptNoContent struct {
}

func (o *DeleteFulfillmentScriptNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/fulfillment/scripts/{id}][%d] deleteFulfillmentScriptNoContent ", 204)
}

func (o *DeleteFulfillmentScriptNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
