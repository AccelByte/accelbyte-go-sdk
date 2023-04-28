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

// ChargePaymentOrderReader is a Reader for the ChargePaymentOrder structure.
type ChargePaymentOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ChargePaymentOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewChargePaymentOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewChargePaymentOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewChargePaymentOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewChargePaymentOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewChargePaymentOrderOK creates a ChargePaymentOrderOK with default headers values
func NewChargePaymentOrderOK() *ChargePaymentOrderOK {
	return &ChargePaymentOrderOK{}
}

/*ChargePaymentOrderOK handles this case with default header values.

  successful operation
*/
type ChargePaymentOrderOK struct {
	Payload *platformclientmodels.PaymentOrderInfo
}

func (o *ChargePaymentOrderOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] chargePaymentOrderOK  %+v", 200, o.ToJSONString())
}

func (o *ChargePaymentOrderOK) ToJSONString() string {
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

func (o *ChargePaymentOrderOK) GetPayload() *platformclientmodels.PaymentOrderInfo {
	return o.Payload
}

func (o *ChargePaymentOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewChargePaymentOrderBadRequest creates a ChargePaymentOrderBadRequest with default headers values
func NewChargePaymentOrderBadRequest() *ChargePaymentOrderBadRequest {
	return &ChargePaymentOrderBadRequest{}
}

/*ChargePaymentOrderBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33322</td><td>Payment provider [{paymentProvider}] not supported</td></tr></table>
*/
type ChargePaymentOrderBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ChargePaymentOrderBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] chargePaymentOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ChargePaymentOrderBadRequest) ToJSONString() string {
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

func (o *ChargePaymentOrderBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChargePaymentOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewChargePaymentOrderNotFound creates a ChargePaymentOrderNotFound with default headers values
func NewChargePaymentOrderNotFound() *ChargePaymentOrderNotFound {
	return &ChargePaymentOrderNotFound{}
}

/*ChargePaymentOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type ChargePaymentOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ChargePaymentOrderNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] chargePaymentOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *ChargePaymentOrderNotFound) ToJSONString() string {
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

func (o *ChargePaymentOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChargePaymentOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewChargePaymentOrderConflict creates a ChargePaymentOrderConflict with default headers values
func NewChargePaymentOrderConflict() *ChargePaymentOrderConflict {
	return &ChargePaymentOrderConflict{}
}

/*ChargePaymentOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33171</td><td>Invalid payment order status [{status}] for payment order [{paymentOrderNo}]</td></tr></table>
*/
type ChargePaymentOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ChargePaymentOrderConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] chargePaymentOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *ChargePaymentOrderConflict) ToJSONString() string {
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

func (o *ChargePaymentOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChargePaymentOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
