// Code generated by go-swagger; DO NOT EDIT.

package anonymization

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AnonymizePaymentReader is a Reader for the AnonymizePayment structure.
type AnonymizePaymentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizePaymentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizePaymentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizePaymentNoContent creates a AnonymizePaymentNoContent with default headers values
func NewAnonymizePaymentNoContent() *AnonymizePaymentNoContent {
	return &AnonymizePaymentNoContent{}
}

/*AnonymizePaymentNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizePaymentNoContent struct {
}

func (o *AnonymizePaymentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment][%d] anonymizePaymentNoContent ", 204)
}

func (o *AnonymizePaymentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
