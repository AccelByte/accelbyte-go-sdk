// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

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

// PublicGetUnpaidPaymentOrderReader is a Reader for the PublicGetUnpaidPaymentOrder structure.
type PublicGetUnpaidPaymentOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUnpaidPaymentOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUnpaidPaymentOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUnpaidPaymentOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicGetUnpaidPaymentOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUnpaidPaymentOrderOK creates a PublicGetUnpaidPaymentOrderOK with default headers values
func NewPublicGetUnpaidPaymentOrderOK() *PublicGetUnpaidPaymentOrderOK {
	return &PublicGetUnpaidPaymentOrderOK{}
}

/*PublicGetUnpaidPaymentOrderOK handles this case with default header values.

  successful operation
*/
type PublicGetUnpaidPaymentOrderOK struct {
	Payload *platformclientmodels.PaymentOrderDetails
}

func (o *PublicGetUnpaidPaymentOrderOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info][%d] publicGetUnpaidPaymentOrderOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUnpaidPaymentOrderOK) ToJSONString() string {
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

func (o *PublicGetUnpaidPaymentOrderOK) GetPayload() *platformclientmodels.PaymentOrderDetails {
	return o.Payload
}

func (o *PublicGetUnpaidPaymentOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderDetails)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUnpaidPaymentOrderNotFound creates a PublicGetUnpaidPaymentOrderNotFound with default headers values
func NewPublicGetUnpaidPaymentOrderNotFound() *PublicGetUnpaidPaymentOrderNotFound {
	return &PublicGetUnpaidPaymentOrderNotFound{}
}

/*PublicGetUnpaidPaymentOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr><tr><td>20008</td><td>user [{userId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUnpaidPaymentOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUnpaidPaymentOrderNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info][%d] publicGetUnpaidPaymentOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUnpaidPaymentOrderNotFound) ToJSONString() string {
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

func (o *PublicGetUnpaidPaymentOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUnpaidPaymentOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUnpaidPaymentOrderConflict creates a PublicGetUnpaidPaymentOrderConflict with default headers values
func NewPublicGetUnpaidPaymentOrderConflict() *PublicGetUnpaidPaymentOrderConflict {
	return &PublicGetUnpaidPaymentOrderConflict{}
}

/*PublicGetUnpaidPaymentOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33171</td><td>Invalid payment order status [{status}] for payment order [{paymentOrderNo}]</td></tr></table>
*/
type PublicGetUnpaidPaymentOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUnpaidPaymentOrderConflict) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info][%d] publicGetUnpaidPaymentOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicGetUnpaidPaymentOrderConflict) ToJSONString() string {
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

func (o *PublicGetUnpaidPaymentOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUnpaidPaymentOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
