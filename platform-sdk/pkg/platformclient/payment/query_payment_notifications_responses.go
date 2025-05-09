// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

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

// QueryPaymentNotificationsReader is a Reader for the QueryPaymentNotifications structure.
type QueryPaymentNotificationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryPaymentNotificationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryPaymentNotificationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/notifications returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryPaymentNotificationsOK creates a QueryPaymentNotificationsOK with default headers values
func NewQueryPaymentNotificationsOK() *QueryPaymentNotificationsOK {
	return &QueryPaymentNotificationsOK{}
}

/*QueryPaymentNotificationsOK handles this case with default header values.

  successful operation
*/
type QueryPaymentNotificationsOK struct {
	Payload *platformclientmodels.PaymentNotificationPagingSlicedResult
}

func (o *QueryPaymentNotificationsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/notifications][%d] queryPaymentNotificationsOK  %+v", 200, o.ToJSONString())
}

func (o *QueryPaymentNotificationsOK) ToJSONString() string {
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

func (o *QueryPaymentNotificationsOK) GetPayload() *platformclientmodels.PaymentNotificationPagingSlicedResult {
	return o.Payload
}

func (o *QueryPaymentNotificationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentNotificationPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
