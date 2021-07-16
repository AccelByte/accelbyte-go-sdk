// Code generated by go-swagger; DO NOT EDIT.

package wallet

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

// PublicGetMyWalletReader is a Reader for the PublicGetMyWallet structure.
type PublicGetMyWalletReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyWalletReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyWalletOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /public/namespaces/{namespace}/users/me/wallets/{currencyCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyWalletOK creates a PublicGetMyWalletOK with default headers values
func NewPublicGetMyWalletOK() *PublicGetMyWalletOK {
	return &PublicGetMyWalletOK{}
}

/*PublicGetMyWalletOK handles this case with default header values.

  successful operation
*/
type PublicGetMyWalletOK struct {
	Payload *platformclientmodels.WalletInfo
}

func (o *PublicGetMyWalletOK) Error() string {
	return fmt.Sprintf("[GET /public/namespaces/{namespace}/users/me/wallets/{currencyCode}][%d] publicGetMyWalletOK  %+v", 200, o.Payload)
}

func (o *PublicGetMyWalletOK) GetPayload() *platformclientmodels.WalletInfo {
	return o.Payload
}

func (o *PublicGetMyWalletOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.WalletInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
