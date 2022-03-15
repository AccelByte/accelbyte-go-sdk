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

// DeletePaymentProviderConfigReader is a Reader for the DeletePaymentProviderConfig structure.
type DeletePaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePaymentProviderConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeletePaymentProviderConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/payment/config/provider/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePaymentProviderConfigNoContent creates a DeletePaymentProviderConfigNoContent with default headers values
func NewDeletePaymentProviderConfigNoContent() *DeletePaymentProviderConfigNoContent {
	return &DeletePaymentProviderConfigNoContent{}
}

/*DeletePaymentProviderConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeletePaymentProviderConfigNoContent struct {
}

func (o *DeletePaymentProviderConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/payment/config/provider/{id}][%d] deletePaymentProviderConfigNoContent ", 204)
}

func (o *DeletePaymentProviderConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDeletePaymentProviderConfigNotFound creates a DeletePaymentProviderConfigNotFound with default headers values
func NewDeletePaymentProviderConfigNotFound() *DeletePaymentProviderConfigNotFound {
	return &DeletePaymentProviderConfigNotFound{}
}

/*DeletePaymentProviderConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33241</td><td>Payment provider config [{id}] does not exist</td></tr></table>
*/
type DeletePaymentProviderConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeletePaymentProviderConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/payment/config/provider/{id}][%d] deletePaymentProviderConfigNotFound  %+v", 404, o.Payload)
}

func (o *DeletePaymentProviderConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeletePaymentProviderConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
