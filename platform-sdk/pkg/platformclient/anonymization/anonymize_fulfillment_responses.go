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

// AnonymizeFulfillmentReader is a Reader for the AnonymizeFulfillment structure.
type AnonymizeFulfillmentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeFulfillmentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeFulfillmentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeFulfillmentNoContent creates a AnonymizeFulfillmentNoContent with default headers values
func NewAnonymizeFulfillmentNoContent() *AnonymizeFulfillmentNoContent {
	return &AnonymizeFulfillmentNoContent{}
}

/*AnonymizeFulfillmentNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizeFulfillmentNoContent struct {
}

func (o *AnonymizeFulfillmentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment][%d] anonymizeFulfillmentNoContent ", 204)
}

func (o *AnonymizeFulfillmentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
