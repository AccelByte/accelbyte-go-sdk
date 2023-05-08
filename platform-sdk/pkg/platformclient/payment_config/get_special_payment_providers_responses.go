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
)

// GetSpecialPaymentProvidersReader is a Reader for the GetSpecialPaymentProviders structure.
type GetSpecialPaymentProvidersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSpecialPaymentProvidersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSpecialPaymentProvidersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/provider/special returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSpecialPaymentProvidersOK creates a GetSpecialPaymentProvidersOK with default headers values
func NewGetSpecialPaymentProvidersOK() *GetSpecialPaymentProvidersOK {
	return &GetSpecialPaymentProvidersOK{}
}

/*GetSpecialPaymentProvidersOK handles this case with default header values.

  successful operation
*/
type GetSpecialPaymentProvidersOK struct {
	Payload []string
}

func (o *GetSpecialPaymentProvidersOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/provider/special][%d] getSpecialPaymentProvidersOK  %+v", 200, o.ToJSONString())
}

func (o *GetSpecialPaymentProvidersOK) ToJSONString() string {
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

func (o *GetSpecialPaymentProvidersOK) GetPayload() []string {
	return o.Payload
}

func (o *GetSpecialPaymentProvidersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
