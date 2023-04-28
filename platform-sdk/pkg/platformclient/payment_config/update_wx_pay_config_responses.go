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

// UpdateWxPayConfigReader is a Reader for the UpdateWxPayConfig structure.
type UpdateWxPayConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateWxPayConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateWxPayConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateWxPayConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateWxPayConfigOK creates a UpdateWxPayConfigOK with default headers values
func NewUpdateWxPayConfigOK() *UpdateWxPayConfigOK {
	return &UpdateWxPayConfigOK{}
}

/*UpdateWxPayConfigOK handles this case with default header values.

  successful operation
*/
type UpdateWxPayConfigOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdateWxPayConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig][%d] updateWxPayConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateWxPayConfigOK) ToJSONString() string {
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

func (o *UpdateWxPayConfigOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdateWxPayConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateWxPayConfigNotFound creates a UpdateWxPayConfigNotFound with default headers values
func NewUpdateWxPayConfigNotFound() *UpdateWxPayConfigNotFound {
	return &UpdateWxPayConfigNotFound{}
}

/*UpdateWxPayConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr><tr><td>33221</td><td>Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}]</td></tr></table>
*/
type UpdateWxPayConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateWxPayConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig][%d] updateWxPayConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateWxPayConfigNotFound) ToJSONString() string {
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

func (o *UpdateWxPayConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateWxPayConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
