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

// QueryWalletsReader is a Reader for the QueryWallets structure.
type QueryWalletsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryWalletsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryWalletsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/wallets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryWalletsOK creates a QueryWalletsOK with default headers values
func NewQueryWalletsOK() *QueryWalletsOK {
	return &QueryWalletsOK{}
}

/*QueryWalletsOK handles this case with default header values.

  successful operation
*/
type QueryWalletsOK struct {
	Payload *platformclientmodels.WalletPagingSlicedResult
}

func (o *QueryWalletsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/wallets][%d] queryWalletsOK  %+v", 200, o.ToJSONString())
}

func (o *QueryWalletsOK) ToJSONString() string {
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

func (o *QueryWalletsOK) GetPayload() *platformclientmodels.WalletPagingSlicedResult {
	return o.Payload
}

func (o *QueryWalletsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.WalletPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
