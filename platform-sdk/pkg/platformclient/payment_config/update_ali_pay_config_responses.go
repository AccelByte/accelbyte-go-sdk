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

// UpdateAliPayConfigReader is a Reader for the UpdateAliPayConfig structure.
type UpdateAliPayConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAliPayConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAliPayConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateAliPayConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/merchant/{id}/alipayconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAliPayConfigOK creates a UpdateAliPayConfigOK with default headers values
func NewUpdateAliPayConfigOK() *UpdateAliPayConfigOK {
	return &UpdateAliPayConfigOK{}
}

/*UpdateAliPayConfigOK handles this case with default header values.

  successful operation
*/
type UpdateAliPayConfigOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdateAliPayConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/alipayconfig][%d] updateAliPayConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAliPayConfigOK) ToJSONString() string {
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

func (o *UpdateAliPayConfigOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdateAliPayConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateAliPayConfigNotFound creates a UpdateAliPayConfigNotFound with default headers values
func NewUpdateAliPayConfigNotFound() *UpdateAliPayConfigNotFound {
	return &UpdateAliPayConfigNotFound{}
}

/*UpdateAliPayConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr><tr><td>33221</td><td>Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}]</td></tr></table>
*/
type UpdateAliPayConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateAliPayConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/alipayconfig][%d] updateAliPayConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateAliPayConfigNotFound) ToJSONString() string {
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

func (o *UpdateAliPayConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateAliPayConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
