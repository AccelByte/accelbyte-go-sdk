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

// RefundUserPaymentOrderReader is a Reader for the RefundUserPaymentOrder structure.
type RefundUserPaymentOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RefundUserPaymentOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRefundUserPaymentOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRefundUserPaymentOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRefundUserPaymentOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewRefundUserPaymentOrderUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRefundUserPaymentOrderOK creates a RefundUserPaymentOrderOK with default headers values
func NewRefundUserPaymentOrderOK() *RefundUserPaymentOrderOK {
	return &RefundUserPaymentOrderOK{}
}

/*RefundUserPaymentOrderOK handles this case with default header values.

  successful operation
*/
type RefundUserPaymentOrderOK struct {
	Payload *platformclientmodels.PaymentOrderInfo
}

func (o *RefundUserPaymentOrderOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund][%d] refundUserPaymentOrderOK  %+v", 200, o.ToJSONString())
}

func (o *RefundUserPaymentOrderOK) ToJSONString() string {
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

func (o *RefundUserPaymentOrderOK) GetPayload() *platformclientmodels.PaymentOrderInfo {
	return o.Payload
}

func (o *RefundUserPaymentOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRefundUserPaymentOrderNotFound creates a RefundUserPaymentOrderNotFound with default headers values
func NewRefundUserPaymentOrderNotFound() *RefundUserPaymentOrderNotFound {
	return &RefundUserPaymentOrderNotFound{}
}

/*RefundUserPaymentOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type RefundUserPaymentOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RefundUserPaymentOrderNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund][%d] refundUserPaymentOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *RefundUserPaymentOrderNotFound) ToJSONString() string {
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

func (o *RefundUserPaymentOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RefundUserPaymentOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRefundUserPaymentOrderConflict creates a RefundUserPaymentOrderConflict with default headers values
func NewRefundUserPaymentOrderConflict() *RefundUserPaymentOrderConflict {
	return &RefundUserPaymentOrderConflict{}
}

/*RefundUserPaymentOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33172</td><td>Payment order [{paymentOrderNo}] is not refundable</td></tr></table>
*/
type RefundUserPaymentOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RefundUserPaymentOrderConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund][%d] refundUserPaymentOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *RefundUserPaymentOrderConflict) ToJSONString() string {
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

func (o *RefundUserPaymentOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RefundUserPaymentOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRefundUserPaymentOrderUnprocessableEntity creates a RefundUserPaymentOrderUnprocessableEntity with default headers values
func NewRefundUserPaymentOrderUnprocessableEntity() *RefundUserPaymentOrderUnprocessableEntity {
	return &RefundUserPaymentOrderUnprocessableEntity{}
}

/*RefundUserPaymentOrderUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RefundUserPaymentOrderUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *RefundUserPaymentOrderUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund][%d] refundUserPaymentOrderUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *RefundUserPaymentOrderUnprocessableEntity) ToJSONString() string {
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

func (o *RefundUserPaymentOrderUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *RefundUserPaymentOrderUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
