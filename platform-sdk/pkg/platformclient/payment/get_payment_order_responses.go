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

// GetPaymentOrderReader is a Reader for the GetPaymentOrder structure.
type GetPaymentOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPaymentOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentOrderOK creates a GetPaymentOrderOK with default headers values
func NewGetPaymentOrderOK() *GetPaymentOrderOK {
	return &GetPaymentOrderOK{}
}

/*GetPaymentOrderOK handles this case with default header values.

  successful operation
*/
type GetPaymentOrderOK struct {
	Payload *platformclientmodels.PaymentOrderInfo
}

func (o *GetPaymentOrderOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] getPaymentOrderOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentOrderOK) ToJSONString() string {
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

func (o *GetPaymentOrderOK) GetPayload() *platformclientmodels.PaymentOrderInfo {
	return o.Payload
}

func (o *GetPaymentOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPaymentOrderNotFound creates a GetPaymentOrderNotFound with default headers values
func NewGetPaymentOrderNotFound() *GetPaymentOrderNotFound {
	return &GetPaymentOrderNotFound{}
}

/*GetPaymentOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type GetPaymentOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentOrderNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}][%d] getPaymentOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPaymentOrderNotFound) ToJSONString() string {
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

func (o *GetPaymentOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
