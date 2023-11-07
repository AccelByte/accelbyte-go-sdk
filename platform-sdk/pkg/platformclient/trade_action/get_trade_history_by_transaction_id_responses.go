// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package trade_action

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// GetTradeHistoryByTransactionIDReader is a Reader for the GetTradeHistoryByTransactionID structure.
type GetTradeHistoryByTransactionIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTradeHistoryByTransactionIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTradeHistoryByTransactionIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/trade/{transactionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTradeHistoryByTransactionIDOK creates a GetTradeHistoryByTransactionIDOK with default headers values
func NewGetTradeHistoryByTransactionIDOK() *GetTradeHistoryByTransactionIDOK {
	return &GetTradeHistoryByTransactionIDOK{}
}

/*GetTradeHistoryByTransactionIDOK handles this case with default header values.

  successful operation
*/
type GetTradeHistoryByTransactionIDOK struct {
}

func (o *GetTradeHistoryByTransactionIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/trade/{transactionId}][%d] getTradeHistoryByTransactionIdOK ", 200)
}

func (o *GetTradeHistoryByTransactionIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
