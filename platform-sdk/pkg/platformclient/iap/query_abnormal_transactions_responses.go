// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// QueryAbnormalTransactionsReader is a Reader for the QueryAbnormalTransactions structure.
type QueryAbnormalTransactionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryAbnormalTransactionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryAbnormalTransactionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryAbnormalTransactionsOK creates a QueryAbnormalTransactionsOK with default headers values
func NewQueryAbnormalTransactionsOK() *QueryAbnormalTransactionsOK {
	return &QueryAbnormalTransactionsOK{}
}

/*QueryAbnormalTransactionsOK handles this case with default header values.

  successful operation
*/
type QueryAbnormalTransactionsOK struct {
	Payload *platformclientmodels.SteamAbnormalTransactionPagingSlicedResult
}

func (o *QueryAbnormalTransactionsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions][%d] queryAbnormalTransactionsOK  %+v", 200, o.ToJSONString())
}

func (o *QueryAbnormalTransactionsOK) ToJSONString() string {
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

func (o *QueryAbnormalTransactionsOK) GetPayload() *platformclientmodels.SteamAbnormalTransactionPagingSlicedResult {
	return o.Payload
}

func (o *QueryAbnormalTransactionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SteamAbnormalTransactionPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
