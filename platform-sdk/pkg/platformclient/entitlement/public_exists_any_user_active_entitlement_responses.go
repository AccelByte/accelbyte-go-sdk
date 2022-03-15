// Code generated by go-swagger; DO NOT EDIT.

package entitlement

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

// PublicExistsAnyUserActiveEntitlementReader is a Reader for the PublicExistsAnyUserActiveEntitlement structure.
type PublicExistsAnyUserActiveEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicExistsAnyUserActiveEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicExistsAnyUserActiveEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicExistsAnyUserActiveEntitlementOK creates a PublicExistsAnyUserActiveEntitlementOK with default headers values
func NewPublicExistsAnyUserActiveEntitlementOK() *PublicExistsAnyUserActiveEntitlementOK {
	return &PublicExistsAnyUserActiveEntitlementOK{}
}

/*PublicExistsAnyUserActiveEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicExistsAnyUserActiveEntitlementOK struct {
	Payload *platformclientmodels.Ownership
}

func (o *PublicExistsAnyUserActiveEntitlementOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any][%d] publicExistsAnyUserActiveEntitlementOK  %+v", 200, o.Payload)
}

func (o *PublicExistsAnyUserActiveEntitlementOK) GetPayload() *platformclientmodels.Ownership {
	return o.Payload
}

func (o *PublicExistsAnyUserActiveEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.Ownership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
