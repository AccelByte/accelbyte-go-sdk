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

// DebitByWalletPlatformReader is a Reader for the DebitByWalletPlatform structure.
type DebitByWalletPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DebitByWalletPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDebitByWalletPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDebitByWalletPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDebitByWalletPlatformUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDebitByWalletPlatformOK creates a DebitByWalletPlatformOK with default headers values
func NewDebitByWalletPlatformOK() *DebitByWalletPlatformOK {
	return &DebitByWalletPlatformOK{}
}

/*DebitByWalletPlatformOK handles this case with default header values.

  successful operation
*/
type DebitByWalletPlatformOK struct {
	Payload *platformclientmodels.PlatformWallet
}

func (o *DebitByWalletPlatformOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform][%d] debitByWalletPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *DebitByWalletPlatformOK) ToJSONString() string {
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

func (o *DebitByWalletPlatformOK) GetPayload() *platformclientmodels.PlatformWallet {
	return o.Payload
}

func (o *DebitByWalletPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformWallet)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDebitByWalletPlatformBadRequest creates a DebitByWalletPlatformBadRequest with default headers values
func NewDebitByWalletPlatformBadRequest() *DebitByWalletPlatformBadRequest {
	return &DebitByWalletPlatformBadRequest{}
}

/*DebitByWalletPlatformBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr></table>
*/
type DebitByWalletPlatformBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DebitByWalletPlatformBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform][%d] debitByWalletPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DebitByWalletPlatformBadRequest) ToJSONString() string {
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

func (o *DebitByWalletPlatformBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DebitByWalletPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDebitByWalletPlatformUnprocessableEntity creates a DebitByWalletPlatformUnprocessableEntity with default headers values
func NewDebitByWalletPlatformUnprocessableEntity() *DebitByWalletPlatformUnprocessableEntity {
	return &DebitByWalletPlatformUnprocessableEntity{}
}

/*DebitByWalletPlatformUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DebitByWalletPlatformUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *DebitByWalletPlatformUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform][%d] debitByWalletPlatformUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DebitByWalletPlatformUnprocessableEntity) ToJSONString() string {
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

func (o *DebitByWalletPlatformUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DebitByWalletPlatformUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
