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

// CreateUserPaymentOrderReader is a Reader for the CreateUserPaymentOrder structure.
type CreateUserPaymentOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateUserPaymentOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateUserPaymentOrderCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateUserPaymentOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateUserPaymentOrderForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateUserPaymentOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateUserPaymentOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateUserPaymentOrderUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateUserPaymentOrderCreated creates a CreateUserPaymentOrderCreated with default headers values
func NewCreateUserPaymentOrderCreated() *CreateUserPaymentOrderCreated {
	return &CreateUserPaymentOrderCreated{}
}

/*CreateUserPaymentOrderCreated handles this case with default header values.

  successful operation
*/
type CreateUserPaymentOrderCreated struct {
	Payload *platformclientmodels.PaymentOrderInfo
}

func (o *CreateUserPaymentOrderCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateUserPaymentOrderCreated) ToJSONString() string {
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

func (o *CreateUserPaymentOrderCreated) GetPayload() *platformclientmodels.PaymentOrderInfo {
	return o.Payload
}

func (o *CreateUserPaymentOrderCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserPaymentOrderBadRequest creates a CreateUserPaymentOrderBadRequest with default headers values
func NewCreateUserPaymentOrderBadRequest() *CreateUserPaymentOrderBadRequest {
	return &CreateUserPaymentOrderBadRequest{}
}

/*CreateUserPaymentOrderBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33121</td><td>Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}]</td></tr><tr><td>33122</td><td>Subscription not match when create payment order</td></tr></table>
*/
type CreateUserPaymentOrderBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateUserPaymentOrderBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateUserPaymentOrderBadRequest) ToJSONString() string {
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

func (o *CreateUserPaymentOrderBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateUserPaymentOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserPaymentOrderForbidden creates a CreateUserPaymentOrderForbidden with default headers values
func NewCreateUserPaymentOrderForbidden() *CreateUserPaymentOrderForbidden {
	return &CreateUserPaymentOrderForbidden{}
}

/*CreateUserPaymentOrderForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type CreateUserPaymentOrderForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateUserPaymentOrderForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateUserPaymentOrderForbidden) ToJSONString() string {
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

func (o *CreateUserPaymentOrderForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateUserPaymentOrderForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserPaymentOrderNotFound creates a CreateUserPaymentOrderNotFound with default headers values
func NewCreateUserPaymentOrderNotFound() *CreateUserPaymentOrderNotFound {
	return &CreateUserPaymentOrderNotFound{}
}

/*CreateUserPaymentOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr><tr><td>33145</td><td>Recurring token not found</td></tr><tr><td>20008</td><td>user [{userId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateUserPaymentOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateUserPaymentOrderNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateUserPaymentOrderNotFound) ToJSONString() string {
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

func (o *CreateUserPaymentOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateUserPaymentOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserPaymentOrderConflict creates a CreateUserPaymentOrderConflict with default headers values
func NewCreateUserPaymentOrderConflict() *CreateUserPaymentOrderConflict {
	return &CreateUserPaymentOrderConflict{}
}

/*CreateUserPaymentOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type CreateUserPaymentOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateUserPaymentOrderConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateUserPaymentOrderConflict) ToJSONString() string {
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

func (o *CreateUserPaymentOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateUserPaymentOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserPaymentOrderUnprocessableEntity creates a CreateUserPaymentOrderUnprocessableEntity with default headers values
func NewCreateUserPaymentOrderUnprocessableEntity() *CreateUserPaymentOrderUnprocessableEntity {
	return &CreateUserPaymentOrderUnprocessableEntity{}
}

/*CreateUserPaymentOrderUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateUserPaymentOrderUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateUserPaymentOrderUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders][%d] createUserPaymentOrderUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateUserPaymentOrderUnprocessableEntity) ToJSONString() string {
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

func (o *CreateUserPaymentOrderUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateUserPaymentOrderUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
