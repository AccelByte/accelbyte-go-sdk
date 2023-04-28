// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// BulkDisableCodesReader is a Reader for the BulkDisableCodes structure.
type BulkDisableCodesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkDisableCodesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkDisableCodesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkDisableCodesOK creates a BulkDisableCodesOK with default headers values
func NewBulkDisableCodesOK() *BulkDisableCodesOK {
	return &BulkDisableCodesOK{}
}

/*BulkDisableCodesOK handles this case with default header values.

  successful operation
*/
type BulkDisableCodesOK struct {
	Payload *platformclientmodels.BulkOperationResult
}

func (o *BulkDisableCodesOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk][%d] bulkDisableCodesOK  %+v", 200, o.ToJSONString())
}

func (o *BulkDisableCodesOK) ToJSONString() string {
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

func (o *BulkDisableCodesOK) GetPayload() *platformclientmodels.BulkOperationResult {
	return o.Payload
}

func (o *BulkDisableCodesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.BulkOperationResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
