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

// CheckBalanceReader is a Reader for the CheckBalance structure.
type CheckBalanceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckBalanceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCheckBalanceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCheckBalanceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckBalanceOK creates a CheckBalanceOK with default headers values
func NewCheckBalanceOK() *CheckBalanceOK {
	return &CheckBalanceOK{}
}

/*CheckBalanceOK handles this case with default header values.

  Successfully determined if user has enough balance.
*/
type CheckBalanceOK struct {
}

func (o *CheckBalanceOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck][%d] checkBalanceOK ", 200)
}

func (o *CheckBalanceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCheckBalanceBadRequest creates a CheckBalanceBadRequest with default headers values
func NewCheckBalanceBadRequest() *CheckBalanceBadRequest {
	return &CheckBalanceBadRequest{}
}

/*CheckBalanceBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr></table>
*/
type CheckBalanceBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CheckBalanceBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck][%d] checkBalanceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CheckBalanceBadRequest) ToJSONString() string {
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

func (o *CheckBalanceBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CheckBalanceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
