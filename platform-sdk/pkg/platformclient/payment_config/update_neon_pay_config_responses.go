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

// UpdateNeonPayConfigReader is a Reader for the UpdateNeonPayConfig structure.
type UpdateNeonPayConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateNeonPayConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateNeonPayConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateNeonPayConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/merchant/{id}/neonpayconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateNeonPayConfigOK creates a UpdateNeonPayConfigOK with default headers values
func NewUpdateNeonPayConfigOK() *UpdateNeonPayConfigOK {
	return &UpdateNeonPayConfigOK{}
}

/*UpdateNeonPayConfigOK handles this case with default header values.

  successful operation
*/
type UpdateNeonPayConfigOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdateNeonPayConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/neonpayconfig][%d] updateNeonPayConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateNeonPayConfigOK) ToJSONString() string {
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

func (o *UpdateNeonPayConfigOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdateNeonPayConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateNeonPayConfigNotFound creates a UpdateNeonPayConfigNotFound with default headers values
func NewUpdateNeonPayConfigNotFound() *UpdateNeonPayConfigNotFound {
	return &UpdateNeonPayConfigNotFound{}
}

/*UpdateNeonPayConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr><tr><td>33221</td><td>Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}]</td></tr></table>
*/
type UpdateNeonPayConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateNeonPayConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/neonpayconfig][%d] updateNeonPayConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateNeonPayConfigNotFound) ToJSONString() string {
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

func (o *UpdateNeonPayConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateNeonPayConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
