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

// ListUserWalletTransactionsReader is a Reader for the ListUserWalletTransactions structure.
type ListUserWalletTransactionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListUserWalletTransactionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListUserWalletTransactionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListUserWalletTransactionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListUserWalletTransactionsOK creates a ListUserWalletTransactionsOK with default headers values
func NewListUserWalletTransactionsOK() *ListUserWalletTransactionsOK {
	return &ListUserWalletTransactionsOK{}
}

/*ListUserWalletTransactionsOK handles this case with default header values.

  successful operation
*/
type ListUserWalletTransactionsOK struct {
	Payload *platformclientmodels.DetailedWalletTransactionPagingSlicedResult
}

func (o *ListUserWalletTransactionsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions][%d] listUserWalletTransactionsOK  %+v", 200, o.ToJSONString())
}

func (o *ListUserWalletTransactionsOK) ToJSONString() string {
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

func (o *ListUserWalletTransactionsOK) GetPayload() *platformclientmodels.DetailedWalletTransactionPagingSlicedResult {
	return o.Payload
}

func (o *ListUserWalletTransactionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.DetailedWalletTransactionPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListUserWalletTransactionsNotFound creates a ListUserWalletTransactionsNotFound with default headers values
func NewListUserWalletTransactionsNotFound() *ListUserWalletTransactionsNotFound {
	return &ListUserWalletTransactionsNotFound{}
}

/*ListUserWalletTransactionsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35141</td><td>Wallet [{walletId}] does not exist</td></tr></table>
*/
type ListUserWalletTransactionsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ListUserWalletTransactionsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions][%d] listUserWalletTransactionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListUserWalletTransactionsNotFound) ToJSONString() string {
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

func (o *ListUserWalletTransactionsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ListUserWalletTransactionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
