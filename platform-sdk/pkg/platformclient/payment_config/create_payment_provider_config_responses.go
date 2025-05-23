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

// CreatePaymentProviderConfigReader is a Reader for the CreatePaymentProviderConfig structure.
type CreatePaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreatePaymentProviderConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePaymentProviderConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePaymentProviderConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreatePaymentProviderConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/payment/config/provider returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePaymentProviderConfigOK creates a CreatePaymentProviderConfigOK with default headers values
func NewCreatePaymentProviderConfigOK() *CreatePaymentProviderConfigOK {
	return &CreatePaymentProviderConfigOK{}
}

/*CreatePaymentProviderConfigOK handles this case with default header values.

  successful operation
*/
type CreatePaymentProviderConfigOK struct {
	Payload *platformclientmodels.PaymentProviderConfigInfo
}

func (o *CreatePaymentProviderConfigOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/payment/config/provider][%d] createPaymentProviderConfigOK  %+v", 200, o.ToJSONString())
}

func (o *CreatePaymentProviderConfigOK) ToJSONString() string {
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

func (o *CreatePaymentProviderConfigOK) GetPayload() *platformclientmodels.PaymentProviderConfigInfo {
	return o.Payload
}

func (o *CreatePaymentProviderConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentProviderConfigBadRequest creates a CreatePaymentProviderConfigBadRequest with default headers values
func NewCreatePaymentProviderConfigBadRequest() *CreatePaymentProviderConfigBadRequest {
	return &CreatePaymentProviderConfigBadRequest{}
}

/*CreatePaymentProviderConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33221</td><td>TaxJar api token required</td></tr></table>
*/
type CreatePaymentProviderConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentProviderConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/payment/config/provider][%d] createPaymentProviderConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePaymentProviderConfigBadRequest) ToJSONString() string {
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

func (o *CreatePaymentProviderConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentProviderConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentProviderConfigConflict creates a CreatePaymentProviderConfigConflict with default headers values
func NewCreatePaymentProviderConfigConflict() *CreatePaymentProviderConfigConflict {
	return &CreatePaymentProviderConfigConflict{}
}

/*CreatePaymentProviderConfigConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33271</td><td>Payment provider config for namespace [{namespace}] and region [{region}] already exists</td></tr></table>
*/
type CreatePaymentProviderConfigConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentProviderConfigConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/payment/config/provider][%d] createPaymentProviderConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePaymentProviderConfigConflict) ToJSONString() string {
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

func (o *CreatePaymentProviderConfigConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentProviderConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentProviderConfigUnprocessableEntity creates a CreatePaymentProviderConfigUnprocessableEntity with default headers values
func NewCreatePaymentProviderConfigUnprocessableEntity() *CreatePaymentProviderConfigUnprocessableEntity {
	return &CreatePaymentProviderConfigUnprocessableEntity{}
}

/*CreatePaymentProviderConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePaymentProviderConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreatePaymentProviderConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/payment/config/provider][%d] createPaymentProviderConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreatePaymentProviderConfigUnprocessableEntity) ToJSONString() string {
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

func (o *CreatePaymentProviderConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreatePaymentProviderConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
