// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// QueryPaymentProviderConfigReader is a Reader for the QueryPaymentProviderConfig structure.
type QueryPaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryPaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryPaymentProviderConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/provider returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryPaymentProviderConfigOK creates a QueryPaymentProviderConfigOK with default headers values
func NewQueryPaymentProviderConfigOK() *QueryPaymentProviderConfigOK {
	return &QueryPaymentProviderConfigOK{}
}

/*QueryPaymentProviderConfigOK handles this case with default header values.

  successful operation
*/
type QueryPaymentProviderConfigOK struct {
	Payload *platformclientmodels.PaymentProviderConfigPagingSlicedResult
}

func (o *QueryPaymentProviderConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/provider][%d] queryPaymentProviderConfigOK  %+v", 200, o.ToJSONString())
}

func (o *QueryPaymentProviderConfigOK) ToJSONString() string {
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

func (o *QueryPaymentProviderConfigOK) GetPayload() *platformclientmodels.PaymentProviderConfigPagingSlicedResult {
	return o.Payload
}

func (o *QueryPaymentProviderConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentProviderConfigPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
