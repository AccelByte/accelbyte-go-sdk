// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// DebitUserWalletByCurrencyCodeReader is a Reader for the DebitUserWalletByCurrencyCode structure.
type DebitUserWalletByCurrencyCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DebitUserWalletByCurrencyCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDebitUserWalletByCurrencyCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDebitUserWalletByCurrencyCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDebitUserWalletByCurrencyCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDebitUserWalletByCurrencyCodeUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDebitUserWalletByCurrencyCodeOK creates a DebitUserWalletByCurrencyCodeOK with default headers values
func NewDebitUserWalletByCurrencyCodeOK() *DebitUserWalletByCurrencyCodeOK {
	return &DebitUserWalletByCurrencyCodeOK{}
}

/*DebitUserWalletByCurrencyCodeOK handles this case with default header values.

  successful operation
*/
type DebitUserWalletByCurrencyCodeOK struct {
	Payload *platformclientmodels.WalletInfo
}

func (o *DebitUserWalletByCurrencyCodeOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit][%d] debitUserWalletByCurrencyCodeOK  %+v", 200, o.ToJSONString())
}

func (o *DebitUserWalletByCurrencyCodeOK) ToJSONString() string {
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

func (o *DebitUserWalletByCurrencyCodeOK) GetPayload() *platformclientmodels.WalletInfo {
	return o.Payload
}

func (o *DebitUserWalletByCurrencyCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.WalletInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDebitUserWalletByCurrencyCodeBadRequest creates a DebitUserWalletByCurrencyCodeBadRequest with default headers values
func NewDebitUserWalletByCurrencyCodeBadRequest() *DebitUserWalletByCurrencyCodeBadRequest {
	return &DebitUserWalletByCurrencyCodeBadRequest{}
}

/*DebitUserWalletByCurrencyCodeBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr></table>
*/
type DebitUserWalletByCurrencyCodeBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitUserWalletByCurrencyCodeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit][%d] debitUserWalletByCurrencyCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DebitUserWalletByCurrencyCodeBadRequest) ToJSONString() string {
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

func (o *DebitUserWalletByCurrencyCodeBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletByCurrencyCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletByCurrencyCodeConflict creates a DebitUserWalletByCurrencyCodeConflict with default headers values
func NewDebitUserWalletByCurrencyCodeConflict() *DebitUserWalletByCurrencyCodeConflict {
	return &DebitUserWalletByCurrencyCodeConflict{}
}

/*DebitUserWalletByCurrencyCodeConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type DebitUserWalletByCurrencyCodeConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitUserWalletByCurrencyCodeConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit][%d] debitUserWalletByCurrencyCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *DebitUserWalletByCurrencyCodeConflict) ToJSONString() string {
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

func (o *DebitUserWalletByCurrencyCodeConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletByCurrencyCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletByCurrencyCodeUnprocessableEntity creates a DebitUserWalletByCurrencyCodeUnprocessableEntity with default headers values
func NewDebitUserWalletByCurrencyCodeUnprocessableEntity() *DebitUserWalletByCurrencyCodeUnprocessableEntity {
	return &DebitUserWalletByCurrencyCodeUnprocessableEntity{}
}

/*DebitUserWalletByCurrencyCodeUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DebitUserWalletByCurrencyCodeUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *DebitUserWalletByCurrencyCodeUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit][%d] debitUserWalletByCurrencyCodeUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DebitUserWalletByCurrencyCodeUnprocessableEntity) ToJSONString() string {
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

func (o *DebitUserWalletByCurrencyCodeUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletByCurrencyCodeUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
