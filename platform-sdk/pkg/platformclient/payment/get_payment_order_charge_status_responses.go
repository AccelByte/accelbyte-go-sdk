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

// GetPaymentOrderChargeStatusReader is a Reader for the GetPaymentOrderChargeStatus structure.
type GetPaymentOrderChargeStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentOrderChargeStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentOrderChargeStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPaymentOrderChargeStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentOrderChargeStatusOK creates a GetPaymentOrderChargeStatusOK with default headers values
func NewGetPaymentOrderChargeStatusOK() *GetPaymentOrderChargeStatusOK {
	return &GetPaymentOrderChargeStatusOK{}
}

/*GetPaymentOrderChargeStatusOK handles this case with default header values.

  successful operation
*/
type GetPaymentOrderChargeStatusOK struct {
	Payload *platformclientmodels.PaymentOrderChargeStatus
}

func (o *GetPaymentOrderChargeStatusOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status][%d] getPaymentOrderChargeStatusOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentOrderChargeStatusOK) ToJSONString() string {
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

func (o *GetPaymentOrderChargeStatusOK) GetPayload() *platformclientmodels.PaymentOrderChargeStatus {
	return o.Payload
}

func (o *GetPaymentOrderChargeStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderChargeStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPaymentOrderChargeStatusNotFound creates a GetPaymentOrderChargeStatusNotFound with default headers values
func NewGetPaymentOrderChargeStatusNotFound() *GetPaymentOrderChargeStatusNotFound {
	return &GetPaymentOrderChargeStatusNotFound{}
}

/*GetPaymentOrderChargeStatusNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type GetPaymentOrderChargeStatusNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentOrderChargeStatusNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status][%d] getPaymentOrderChargeStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPaymentOrderChargeStatusNotFound) ToJSONString() string {
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

func (o *GetPaymentOrderChargeStatusNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentOrderChargeStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
