// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// BulkFulfillItemsV3Reader is a Reader for the BulkFulfillItemsV3 structure.
type BulkFulfillItemsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFulfillItemsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFulfillItemsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFulfillItemsV3OK creates a BulkFulfillItemsV3OK with default headers values
func NewBulkFulfillItemsV3OK() *BulkFulfillItemsV3OK {
	return &BulkFulfillItemsV3OK{}
}

/*BulkFulfillItemsV3OK handles this case with default header values.

  OK
*/
type BulkFulfillItemsV3OK struct {
	Payload []*platformclientmodels.FulfillmentV2Result
}

func (o *BulkFulfillItemsV3OK) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/bulk][%d] bulkFulfillItemsV3OK  %+v", 200, o.ToJSONString())
}

func (o *BulkFulfillItemsV3OK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *BulkFulfillItemsV3OK) GetPayload() []*platformclientmodels.FulfillmentV2Result {
	return o.Payload
}

func (o *BulkFulfillItemsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
