// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

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

// GetPaymentCustomizationReader is a Reader for the GetPaymentCustomization structure.
type GetPaymentCustomizationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentCustomizationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentCustomizationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/customization returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentCustomizationOK creates a GetPaymentCustomizationOK with default headers values
func NewGetPaymentCustomizationOK() *GetPaymentCustomizationOK {
	return &GetPaymentCustomizationOK{}
}

/*GetPaymentCustomizationOK handles this case with default header values.

  successful operation
*/
type GetPaymentCustomizationOK struct {
	Payload *platformclientmodels.Customization
}

func (o *GetPaymentCustomizationOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/customization][%d] getPaymentCustomizationOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentCustomizationOK) ToJSONString() string {
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

func (o *GetPaymentCustomizationOK) GetPayload() *platformclientmodels.Customization {
	return o.Payload
}

func (o *GetPaymentCustomizationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.Customization)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
