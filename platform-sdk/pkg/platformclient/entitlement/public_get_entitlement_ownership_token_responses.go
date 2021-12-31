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

// PublicGetEntitlementOwnershipTokenReader is a Reader for the PublicGetEntitlementOwnershipToken structure.
type PublicGetEntitlementOwnershipTokenReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetEntitlementOwnershipTokenReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetEntitlementOwnershipTokenOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /public/namespaces/{namespace}/users/me/entitlements/ownershipToken returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetEntitlementOwnershipTokenOK creates a PublicGetEntitlementOwnershipTokenOK with default headers values
func NewPublicGetEntitlementOwnershipTokenOK() *PublicGetEntitlementOwnershipTokenOK {
	return &PublicGetEntitlementOwnershipTokenOK{}
}

/*PublicGetEntitlementOwnershipTokenOK handles this case with default header values.

  successful operation
*/
type PublicGetEntitlementOwnershipTokenOK struct {
	Payload *platformclientmodels.OwnershipToken
}

func (o *PublicGetEntitlementOwnershipTokenOK) Error() string {
	return fmt.Sprintf("[GET /public/namespaces/{namespace}/users/me/entitlements/ownershipToken][%d] publicGetEntitlementOwnershipTokenOK  %+v", 200, o.Payload)
}

func (o *PublicGetEntitlementOwnershipTokenOK) GetPayload() *platformclientmodels.OwnershipToken {
	return o.Payload
}

func (o *PublicGetEntitlementOwnershipTokenOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.OwnershipToken)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}