// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// GetPaymentMerchantConfig1Reader is a Reader for the GetPaymentMerchantConfig1 structure.
type GetPaymentMerchantConfig1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentMerchantConfig1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentMerchantConfig1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPaymentMerchantConfig1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/merchant/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentMerchantConfig1OK creates a GetPaymentMerchantConfig1OK with default headers values
func NewGetPaymentMerchantConfig1OK() *GetPaymentMerchantConfig1OK {
	return &GetPaymentMerchantConfig1OK{}
}

/*GetPaymentMerchantConfig1OK handles this case with default header values.

  successful operation
*/
type GetPaymentMerchantConfig1OK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *GetPaymentMerchantConfig1OK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}][%d] getPaymentMerchantConfig1OK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentMerchantConfig1OK) ToJSONString() string {
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

func (o *GetPaymentMerchantConfig1OK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *GetPaymentMerchantConfig1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentMerchantConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPaymentMerchantConfig1NotFound creates a GetPaymentMerchantConfig1NotFound with default headers values
func NewGetPaymentMerchantConfig1NotFound() *GetPaymentMerchantConfig1NotFound {
	return &GetPaymentMerchantConfig1NotFound{}
}

/*GetPaymentMerchantConfig1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type GetPaymentMerchantConfig1NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentMerchantConfig1NotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}][%d] getPaymentMerchantConfig1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPaymentMerchantConfig1NotFound) ToJSONString() string {
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

func (o *GetPaymentMerchantConfig1NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentMerchantConfig1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
