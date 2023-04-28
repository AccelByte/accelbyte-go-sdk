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

// DebugMatchedPaymentProviderConfigReader is a Reader for the DebugMatchedPaymentProviderConfig structure.
type DebugMatchedPaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DebugMatchedPaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDebugMatchedPaymentProviderConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDebugMatchedPaymentProviderConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/provider/matched returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDebugMatchedPaymentProviderConfigOK creates a DebugMatchedPaymentProviderConfigOK with default headers values
func NewDebugMatchedPaymentProviderConfigOK() *DebugMatchedPaymentProviderConfigOK {
	return &DebugMatchedPaymentProviderConfigOK{}
}

/*DebugMatchedPaymentProviderConfigOK handles this case with default header values.

  successful operation
*/
type DebugMatchedPaymentProviderConfigOK struct {
	Payload *platformclientmodels.PaymentProviderConfigInfo
}

func (o *DebugMatchedPaymentProviderConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/provider/matched][%d] debugMatchedPaymentProviderConfigOK  %+v", 200, o.ToJSONString())
}

func (o *DebugMatchedPaymentProviderConfigOK) ToJSONString() string {
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

func (o *DebugMatchedPaymentProviderConfigOK) GetPayload() *platformclientmodels.PaymentProviderConfigInfo {
	return o.Payload
}

func (o *DebugMatchedPaymentProviderConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentProviderConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDebugMatchedPaymentProviderConfigNotFound creates a DebugMatchedPaymentProviderConfigNotFound with default headers values
func NewDebugMatchedPaymentProviderConfigNotFound() *DebugMatchedPaymentProviderConfigNotFound {
	return &DebugMatchedPaymentProviderConfigNotFound{}
}

/*DebugMatchedPaymentProviderConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33241</td><td>Payment provider config [{id}] does not exist</td></tr></table>
*/
type DebugMatchedPaymentProviderConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebugMatchedPaymentProviderConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/provider/matched][%d] debugMatchedPaymentProviderConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DebugMatchedPaymentProviderConfigNotFound) ToJSONString() string {
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

func (o *DebugMatchedPaymentProviderConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebugMatchedPaymentProviderConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
