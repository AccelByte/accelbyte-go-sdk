// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_dedicated

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

// SyncPaymentOrdersReader is a Reader for the SyncPaymentOrders structure.
type SyncPaymentOrdersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncPaymentOrdersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncPaymentOrdersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/orders returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncPaymentOrdersOK creates a SyncPaymentOrdersOK with default headers values
func NewSyncPaymentOrdersOK() *SyncPaymentOrdersOK {
	return &SyncPaymentOrdersOK{}
}

/*SyncPaymentOrdersOK handles this case with default header values.

  successful operation
*/
type SyncPaymentOrdersOK struct {
	Payload *platformclientmodels.PaymentOrderSyncResult
}

func (o *SyncPaymentOrdersOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/orders][%d] syncPaymentOrdersOK  %+v", 200, o.ToJSONString())
}

func (o *SyncPaymentOrdersOK) ToJSONString() string {
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

func (o *SyncPaymentOrdersOK) GetPayload() *platformclientmodels.PaymentOrderSyncResult {
	return o.Payload
}

func (o *SyncPaymentOrdersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderSyncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
