// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clawback

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

// QueryIAPClawbackHistoryReader is a Reader for the QueryIAPClawbackHistory structure.
type QueryIAPClawbackHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryIAPClawbackHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryIAPClawbackHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/iap/clawback/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryIAPClawbackHistoryOK creates a QueryIAPClawbackHistoryOK with default headers values
func NewQueryIAPClawbackHistoryOK() *QueryIAPClawbackHistoryOK {
	return &QueryIAPClawbackHistoryOK{}
}

/*QueryIAPClawbackHistoryOK handles this case with default header values.

  successful operation
*/
type QueryIAPClawbackHistoryOK struct {
	Payload *platformclientmodels.IAPClawbackPagingSlicedResult
}

func (o *QueryIAPClawbackHistoryOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/clawback/histories][%d] queryIapClawbackHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *QueryIAPClawbackHistoryOK) ToJSONString() string {
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

func (o *QueryIAPClawbackHistoryOK) GetPayload() *platformclientmodels.IAPClawbackPagingSlicedResult {
	return o.Payload
}

func (o *QueryIAPClawbackHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.IAPClawbackPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
