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

// UpdatePaymentDomainWhitelistConfigReader is a Reader for the UpdatePaymentDomainWhitelistConfig structure.
type UpdatePaymentDomainWhitelistConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePaymentDomainWhitelistConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePaymentDomainWhitelistConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdatePaymentDomainWhitelistConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/payment/config/domains returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePaymentDomainWhitelistConfigOK creates a UpdatePaymentDomainWhitelistConfigOK with default headers values
func NewUpdatePaymentDomainWhitelistConfigOK() *UpdatePaymentDomainWhitelistConfigOK {
	return &UpdatePaymentDomainWhitelistConfigOK{}
}

/*UpdatePaymentDomainWhitelistConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePaymentDomainWhitelistConfigOK struct {
	Payload *platformclientmodels.PaymentDomainWhitelistConfigInfo
}

func (o *UpdatePaymentDomainWhitelistConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/config/domains][%d] updatePaymentDomainWhitelistConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePaymentDomainWhitelistConfigOK) ToJSONString() string {
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

func (o *UpdatePaymentDomainWhitelistConfigOK) GetPayload() *platformclientmodels.PaymentDomainWhitelistConfigInfo {
	return o.Payload
}

func (o *UpdatePaymentDomainWhitelistConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentDomainWhitelistConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePaymentDomainWhitelistConfigUnprocessableEntity creates a UpdatePaymentDomainWhitelistConfigUnprocessableEntity with default headers values
func NewUpdatePaymentDomainWhitelistConfigUnprocessableEntity() *UpdatePaymentDomainWhitelistConfigUnprocessableEntity {
	return &UpdatePaymentDomainWhitelistConfigUnprocessableEntity{}
}

/*UpdatePaymentDomainWhitelistConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePaymentDomainWhitelistConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdatePaymentDomainWhitelistConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/config/domains][%d] updatePaymentDomainWhitelistConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdatePaymentDomainWhitelistConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdatePaymentDomainWhitelistConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentDomainWhitelistConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
