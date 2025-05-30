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

// UpdatePayPalConfigReader is a Reader for the UpdatePayPalConfig structure.
type UpdatePayPalConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePayPalConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePayPalConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePayPalConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/merchant/{id}/paypalconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePayPalConfigOK creates a UpdatePayPalConfigOK with default headers values
func NewUpdatePayPalConfigOK() *UpdatePayPalConfigOK {
	return &UpdatePayPalConfigOK{}
}

/*UpdatePayPalConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePayPalConfigOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdatePayPalConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/paypalconfig][%d] updatePayPalConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePayPalConfigOK) ToJSONString() string {
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

func (o *UpdatePayPalConfigOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdatePayPalConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePayPalConfigNotFound creates a UpdatePayPalConfigNotFound with default headers values
func NewUpdatePayPalConfigNotFound() *UpdatePayPalConfigNotFound {
	return &UpdatePayPalConfigNotFound{}
}

/*UpdatePayPalConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr><tr><td>33221</td><td>Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}]</td></tr></table>
*/
type UpdatePayPalConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePayPalConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/paypalconfig][%d] updatePayPalConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePayPalConfigNotFound) ToJSONString() string {
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

func (o *UpdatePayPalConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePayPalConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
