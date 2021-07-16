// Code generated by go-swagger; DO NOT EDIT.

package payment_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// TestAliPayConfigByIDReader is a Reader for the TestAliPayConfigByID structure.
type TestAliPayConfigByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestAliPayConfigByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestAliPayConfigByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewTestAliPayConfigByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /admin/payment/config/merchant/{id}/alipayconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestAliPayConfigByIDOK creates a TestAliPayConfigByIDOK with default headers values
func NewTestAliPayConfigByIDOK() *TestAliPayConfigByIDOK {
	return &TestAliPayConfigByIDOK{}
}

/*TestAliPayConfigByIDOK handles this case with default header values.

  successful operation
*/
type TestAliPayConfigByIDOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestAliPayConfigByIDOK) Error() string {
	return fmt.Sprintf("[GET /admin/payment/config/merchant/{id}/alipayconfig/test][%d] testAliPayConfigByIdOK  %+v", 200, o.Payload)
}

func (o *TestAliPayConfigByIDOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestAliPayConfigByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.TestResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTestAliPayConfigByIDNotFound creates a TestAliPayConfigByIDNotFound with default headers values
func NewTestAliPayConfigByIDNotFound() *TestAliPayConfigByIDNotFound {
	return &TestAliPayConfigByIDNotFound{}
}

/*TestAliPayConfigByIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type TestAliPayConfigByIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *TestAliPayConfigByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /admin/payment/config/merchant/{id}/alipayconfig/test][%d] testAliPayConfigByIdNotFound  %+v", 404, o.Payload)
}

func (o *TestAliPayConfigByIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *TestAliPayConfigByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
