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

// UpdateCheckoutConfigReader is a Reader for the UpdateCheckoutConfig structure.
type UpdateCheckoutConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateCheckoutConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateCheckoutConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateCheckoutConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /admin/payment/config/merchant/{id}/checkoutconfig returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateCheckoutConfigOK creates a UpdateCheckoutConfigOK with default headers values
func NewUpdateCheckoutConfigOK() *UpdateCheckoutConfigOK {
	return &UpdateCheckoutConfigOK{}
}

/*UpdateCheckoutConfigOK handles this case with default header values.

  successful operation
*/
type UpdateCheckoutConfigOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdateCheckoutConfigOK) Error() string {
	return fmt.Sprintf("[PUT /admin/payment/config/merchant/{id}/checkoutconfig][%d] updateCheckoutConfigOK  %+v", 200, o.Payload)
}

func (o *UpdateCheckoutConfigOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdateCheckoutConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.PaymentMerchantConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCheckoutConfigNotFound creates a UpdateCheckoutConfigNotFound with default headers values
func NewUpdateCheckoutConfigNotFound() *UpdateCheckoutConfigNotFound {
	return &UpdateCheckoutConfigNotFound{}
}

/*UpdateCheckoutConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr><tr><td>33221</td><td>Update [{paymentProvider}] config in payment merchant config [{id}] failed with message [{errMsg}]</td></tr></table>
*/
type UpdateCheckoutConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateCheckoutConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /admin/payment/config/merchant/{id}/checkoutconfig][%d] updateCheckoutConfigNotFound  %+v", 404, o.Payload)
}

func (o *UpdateCheckoutConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCheckoutConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
