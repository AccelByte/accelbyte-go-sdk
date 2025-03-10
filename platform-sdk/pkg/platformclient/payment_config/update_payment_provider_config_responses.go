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

// UpdatePaymentProviderConfigReader is a Reader for the UpdatePaymentProviderConfig structure.
type UpdatePaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePaymentProviderConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePaymentProviderConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePaymentProviderConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdatePaymentProviderConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdatePaymentProviderConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/provider/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePaymentProviderConfigOK creates a UpdatePaymentProviderConfigOK with default headers values
func NewUpdatePaymentProviderConfigOK() *UpdatePaymentProviderConfigOK {
	return &UpdatePaymentProviderConfigOK{}
}

/*UpdatePaymentProviderConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePaymentProviderConfigOK struct {
	Payload *platformclientmodels.PaymentProviderConfigInfo
}

func (o *UpdatePaymentProviderConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/provider/{id}][%d] updatePaymentProviderConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePaymentProviderConfigOK) ToJSONString() string {
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

func (o *UpdatePaymentProviderConfigOK) GetPayload() *platformclientmodels.PaymentProviderConfigInfo {
	return o.Payload
}

func (o *UpdatePaymentProviderConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePaymentProviderConfigBadRequest creates a UpdatePaymentProviderConfigBadRequest with default headers values
func NewUpdatePaymentProviderConfigBadRequest() *UpdatePaymentProviderConfigBadRequest {
	return &UpdatePaymentProviderConfigBadRequest{}
}

/*UpdatePaymentProviderConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33221</td><td>TaxJar api token required</td></tr></table>
*/
type UpdatePaymentProviderConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePaymentProviderConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/provider/{id}][%d] updatePaymentProviderConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePaymentProviderConfigBadRequest) ToJSONString() string {
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

func (o *UpdatePaymentProviderConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentProviderConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePaymentProviderConfigNotFound creates a UpdatePaymentProviderConfigNotFound with default headers values
func NewUpdatePaymentProviderConfigNotFound() *UpdatePaymentProviderConfigNotFound {
	return &UpdatePaymentProviderConfigNotFound{}
}

/*UpdatePaymentProviderConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33241</td><td>Payment provider config [{id}] does not exist</td></tr></table>
*/
type UpdatePaymentProviderConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePaymentProviderConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/provider/{id}][%d] updatePaymentProviderConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePaymentProviderConfigNotFound) ToJSONString() string {
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

func (o *UpdatePaymentProviderConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentProviderConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePaymentProviderConfigConflict creates a UpdatePaymentProviderConfigConflict with default headers values
func NewUpdatePaymentProviderConfigConflict() *UpdatePaymentProviderConfigConflict {
	return &UpdatePaymentProviderConfigConflict{}
}

/*UpdatePaymentProviderConfigConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33271</td><td>Payment provider config for namespace [{namespace}] and region [{region}] already exists</td></tr></table>
*/
type UpdatePaymentProviderConfigConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePaymentProviderConfigConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/provider/{id}][%d] updatePaymentProviderConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdatePaymentProviderConfigConflict) ToJSONString() string {
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

func (o *UpdatePaymentProviderConfigConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentProviderConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePaymentProviderConfigUnprocessableEntity creates a UpdatePaymentProviderConfigUnprocessableEntity with default headers values
func NewUpdatePaymentProviderConfigUnprocessableEntity() *UpdatePaymentProviderConfigUnprocessableEntity {
	return &UpdatePaymentProviderConfigUnprocessableEntity{}
}

/*UpdatePaymentProviderConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePaymentProviderConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdatePaymentProviderConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/provider/{id}][%d] updatePaymentProviderConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdatePaymentProviderConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdatePaymentProviderConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentProviderConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
