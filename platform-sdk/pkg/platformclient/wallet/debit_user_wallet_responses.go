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

// DebitUserWalletReader is a Reader for the DebitUserWallet structure.
type DebitUserWalletReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DebitUserWalletReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDebitUserWalletOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDebitUserWalletBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDebitUserWalletNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDebitUserWalletConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDebitUserWalletUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDebitUserWalletOK creates a DebitUserWalletOK with default headers values
func NewDebitUserWalletOK() *DebitUserWalletOK {
	return &DebitUserWalletOK{}
}

/*DebitUserWalletOK handles this case with default header values.

  successful operation
*/
type DebitUserWalletOK struct {
	Payload *platformclientmodels.WalletInfo
}

func (o *DebitUserWalletOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit][%d] debitUserWalletOK  %+v", 200, o.ToJSONString())
}

func (o *DebitUserWalletOK) ToJSONString() string {
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

func (o *DebitUserWalletOK) GetPayload() *platformclientmodels.WalletInfo {
	return o.Payload
}

func (o *DebitUserWalletOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletBadRequest creates a DebitUserWalletBadRequest with default headers values
func NewDebitUserWalletBadRequest() *DebitUserWalletBadRequest {
	return &DebitUserWalletBadRequest{}
}

/*DebitUserWalletBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr></table>
*/
type DebitUserWalletBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitUserWalletBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit][%d] debitUserWalletBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DebitUserWalletBadRequest) ToJSONString() string {
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

func (o *DebitUserWalletBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletNotFound creates a DebitUserWalletNotFound with default headers values
func NewDebitUserWalletNotFound() *DebitUserWalletNotFound {
	return &DebitUserWalletNotFound{}
}

/*DebitUserWalletNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35141</td><td>Wallet [{walletId}] does not exist</td></tr></table>
*/
type DebitUserWalletNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitUserWalletNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit][%d] debitUserWalletNotFound  %+v", 404, o.ToJSONString())
}

func (o *DebitUserWalletNotFound) ToJSONString() string {
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

func (o *DebitUserWalletNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletConflict creates a DebitUserWalletConflict with default headers values
func NewDebitUserWalletConflict() *DebitUserWalletConflict {
	return &DebitUserWalletConflict{}
}

/*DebitUserWalletConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type DebitUserWalletConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitUserWalletConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit][%d] debitUserWalletConflict  %+v", 409, o.ToJSONString())
}

func (o *DebitUserWalletConflict) ToJSONString() string {
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

func (o *DebitUserWalletConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitUserWalletUnprocessableEntity creates a DebitUserWalletUnprocessableEntity with default headers values
func NewDebitUserWalletUnprocessableEntity() *DebitUserWalletUnprocessableEntity {
	return &DebitUserWalletUnprocessableEntity{}
}

/*DebitUserWalletUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DebitUserWalletUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *DebitUserWalletUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit][%d] debitUserWalletUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DebitUserWalletUnprocessableEntity) ToJSONString() string {
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

func (o *DebitUserWalletUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DebitUserWalletUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
