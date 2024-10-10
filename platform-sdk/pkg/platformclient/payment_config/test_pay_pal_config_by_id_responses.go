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

// TestPayPalConfigByIDReader is a Reader for the TestPayPalConfigByID structure.
type TestPayPalConfigByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestPayPalConfigByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestPayPalConfigByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewTestPayPalConfigByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/merchant/{id}/paypalconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestPayPalConfigByIDOK creates a TestPayPalConfigByIDOK with default headers values
func NewTestPayPalConfigByIDOK() *TestPayPalConfigByIDOK {
	return &TestPayPalConfigByIDOK{}
}

/*TestPayPalConfigByIDOK handles this case with default header values.

  successful operation
*/
type TestPayPalConfigByIDOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestPayPalConfigByIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/paypalconfig/test][%d] testPayPalConfigByIdOK  %+v", 200, o.ToJSONString())
}

func (o *TestPayPalConfigByIDOK) ToJSONString() string {
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

func (o *TestPayPalConfigByIDOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestPayPalConfigByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TestResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTestPayPalConfigByIDNotFound creates a TestPayPalConfigByIDNotFound with default headers values
func NewTestPayPalConfigByIDNotFound() *TestPayPalConfigByIDNotFound {
	return &TestPayPalConfigByIDNotFound{}
}

/*TestPayPalConfigByIDNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>33045</td><td>errors.net.accelbyte.platform.payment.payment_merchant_config_not_found</td></tr></table>
*/
type TestPayPalConfigByIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *TestPayPalConfigByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/paypalconfig/test][%d] testPayPalConfigByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *TestPayPalConfigByIDNotFound) ToJSONString() string {
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

func (o *TestPayPalConfigByIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *TestPayPalConfigByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
