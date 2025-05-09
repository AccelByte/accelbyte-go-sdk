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

// ListUserCurrencyTransactionsReader is a Reader for the ListUserCurrencyTransactions structure.
type ListUserCurrencyTransactionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListUserCurrencyTransactionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListUserCurrencyTransactionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListUserCurrencyTransactionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListUserCurrencyTransactionsOK creates a ListUserCurrencyTransactionsOK with default headers values
func NewListUserCurrencyTransactionsOK() *ListUserCurrencyTransactionsOK {
	return &ListUserCurrencyTransactionsOK{}
}

/*ListUserCurrencyTransactionsOK handles this case with default header values.

  successful operation
*/
type ListUserCurrencyTransactionsOK struct {
	Payload *platformclientmodels.WalletTransactionPagingSlicedResult
}

func (o *ListUserCurrencyTransactionsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions][%d] listUserCurrencyTransactionsOK  %+v", 200, o.ToJSONString())
}

func (o *ListUserCurrencyTransactionsOK) ToJSONString() string {
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

func (o *ListUserCurrencyTransactionsOK) GetPayload() *platformclientmodels.WalletTransactionPagingSlicedResult {
	return o.Payload
}

func (o *ListUserCurrencyTransactionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.WalletTransactionPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListUserCurrencyTransactionsNotFound creates a ListUserCurrencyTransactionsNotFound with default headers values
func NewListUserCurrencyTransactionsNotFound() *ListUserCurrencyTransactionsNotFound {
	return &ListUserCurrencyTransactionsNotFound{}
}

/*ListUserCurrencyTransactionsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35141</td><td>Wallet [{walletId}] does not exist</td></tr></table>
*/
type ListUserCurrencyTransactionsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ListUserCurrencyTransactionsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions][%d] listUserCurrencyTransactionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListUserCurrencyTransactionsNotFound) ToJSONString() string {
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

func (o *ListUserCurrencyTransactionsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ListUserCurrencyTransactionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
