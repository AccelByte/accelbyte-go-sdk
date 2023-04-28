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

// GetWalletReader is a Reader for the GetWallet structure.
type GetWalletReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetWalletReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetWalletOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetWalletNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/wallets/{walletId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetWalletOK creates a GetWalletOK with default headers values
func NewGetWalletOK() *GetWalletOK {
	return &GetWalletOK{}
}

/*GetWalletOK handles this case with default header values.

  successful operation
*/
type GetWalletOK struct {
	Payload *platformclientmodels.WalletInfo
}

func (o *GetWalletOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/wallets/{walletId}][%d] getWalletOK  %+v", 200, o.ToJSONString())
}

func (o *GetWalletOK) ToJSONString() string {
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

func (o *GetWalletOK) GetPayload() *platformclientmodels.WalletInfo {
	return o.Payload
}

func (o *GetWalletOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetWalletNotFound creates a GetWalletNotFound with default headers values
func NewGetWalletNotFound() *GetWalletNotFound {
	return &GetWalletNotFound{}
}

/*GetWalletNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35141</td><td>Wallet [{walletId}] does not exist</td></tr></table>
*/
type GetWalletNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetWalletNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/wallets/{walletId}][%d] getWalletNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetWalletNotFound) ToJSONString() string {
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

func (o *GetWalletNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetWalletNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
