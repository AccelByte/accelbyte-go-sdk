// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AnonymizeFulfillmentReader is a Reader for the AnonymizeFulfillment structure.
type AnonymizeFulfillmentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeFulfillmentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeFulfillmentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeFulfillmentNoContent creates a AnonymizeFulfillmentNoContent with default headers values
func NewAnonymizeFulfillmentNoContent() *AnonymizeFulfillmentNoContent {
	return &AnonymizeFulfillmentNoContent{}
}

/*AnonymizeFulfillmentNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizeFulfillmentNoContent struct {
}

func (o *AnonymizeFulfillmentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment][%d] anonymizeFulfillmentNoContent ", 204)
}

func (o *AnonymizeFulfillmentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
