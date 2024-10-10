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

// TestStripeConfigByIDReader is a Reader for the TestStripeConfigByID structure.
type TestStripeConfigByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestStripeConfigByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestStripeConfigByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewTestStripeConfigByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/merchant/{id}/stripeconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestStripeConfigByIDOK creates a TestStripeConfigByIDOK with default headers values
func NewTestStripeConfigByIDOK() *TestStripeConfigByIDOK {
	return &TestStripeConfigByIDOK{}
}

/*TestStripeConfigByIDOK handles this case with default header values.

  successful operation
*/
type TestStripeConfigByIDOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestStripeConfigByIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/stripeconfig/test][%d] testStripeConfigByIdOK  %+v", 200, o.ToJSONString())
}

func (o *TestStripeConfigByIDOK) ToJSONString() string {
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

func (o *TestStripeConfigByIDOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestStripeConfigByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewTestStripeConfigByIDNotFound creates a TestStripeConfigByIDNotFound with default headers values
func NewTestStripeConfigByIDNotFound() *TestStripeConfigByIDNotFound {
	return &TestStripeConfigByIDNotFound{}
}

/*TestStripeConfigByIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type TestStripeConfigByIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *TestStripeConfigByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/stripeconfig/test][%d] testStripeConfigByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *TestStripeConfigByIDNotFound) ToJSONString() string {
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

func (o *TestStripeConfigByIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *TestStripeConfigByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
