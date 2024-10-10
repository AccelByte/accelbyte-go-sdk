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

// TestXsollaConfigByIDReader is a Reader for the TestXsollaConfigByID structure.
type TestXsollaConfigByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestXsollaConfigByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestXsollaConfigByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewTestXsollaConfigByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/merchant/{id}/xsollaconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestXsollaConfigByIDOK creates a TestXsollaConfigByIDOK with default headers values
func NewTestXsollaConfigByIDOK() *TestXsollaConfigByIDOK {
	return &TestXsollaConfigByIDOK{}
}

/*TestXsollaConfigByIDOK handles this case with default header values.

  successful operation
*/
type TestXsollaConfigByIDOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestXsollaConfigByIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/xsollaconfig/test][%d] testXsollaConfigByIdOK  %+v", 200, o.ToJSONString())
}

func (o *TestXsollaConfigByIDOK) ToJSONString() string {
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

func (o *TestXsollaConfigByIDOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestXsollaConfigByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewTestXsollaConfigByIDNotFound creates a TestXsollaConfigByIDNotFound with default headers values
func NewTestXsollaConfigByIDNotFound() *TestXsollaConfigByIDNotFound {
	return &TestXsollaConfigByIDNotFound{}
}

/*TestXsollaConfigByIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type TestXsollaConfigByIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *TestXsollaConfigByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/xsollaconfig/test][%d] testXsollaConfigByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *TestXsollaConfigByIDNotFound) ToJSONString() string {
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

func (o *TestXsollaConfigByIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *TestXsollaConfigByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
