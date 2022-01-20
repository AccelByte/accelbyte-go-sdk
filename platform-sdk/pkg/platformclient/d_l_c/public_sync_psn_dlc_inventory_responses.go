// Code generated by go-swagger; DO NOT EDIT.

package d_l_c

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

// PublicSyncPsnDlcInventoryReader is a Reader for the PublicSyncPsnDlcInventory structure.
type PublicSyncPsnDlcInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSyncPsnDlcInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSyncPsnDlcInventoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSyncPsnDlcInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /public/namespaces/{namespace}/users/{userId}/dlc/psn/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSyncPsnDlcInventoryNoContent creates a PublicSyncPsnDlcInventoryNoContent with default headers values
func NewPublicSyncPsnDlcInventoryNoContent() *PublicSyncPsnDlcInventoryNoContent {
	return &PublicSyncPsnDlcInventoryNoContent{}
}

/*PublicSyncPsnDlcInventoryNoContent handles this case with default header values.

  Successful operation
*/
type PublicSyncPsnDlcInventoryNoContent struct {
}

func (o *PublicSyncPsnDlcInventoryNoContent) Error() string {
	return fmt.Sprintf("[PUT /public/namespaces/{namespace}/users/{userId}/dlc/psn/sync][%d] publicSyncPsnDlcInventoryNoContent ", 204)
}

func (o *PublicSyncPsnDlcInventoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewPublicSyncPsnDlcInventoryBadRequest creates a PublicSyncPsnDlcInventoryBadRequest with default headers values
func NewPublicSyncPsnDlcInventoryBadRequest() *PublicSyncPsnDlcInventoryBadRequest {
	return &PublicSyncPsnDlcInventoryBadRequest{}
}

/*PublicSyncPsnDlcInventoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39123</td><td>PSN Sync failed with status code [{statusCode}] and psnAuthCode is [{psnAuthCode}]</td></tr>
*/
type PublicSyncPsnDlcInventoryBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSyncPsnDlcInventoryBadRequest) Error() string {
	return fmt.Sprintf("[PUT /public/namespaces/{namespace}/users/{userId}/dlc/psn/sync][%d] publicSyncPsnDlcInventoryBadRequest  %+v", 400, o.Payload)
}

func (o *PublicSyncPsnDlcInventoryBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSyncPsnDlcInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}