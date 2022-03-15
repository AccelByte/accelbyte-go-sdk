// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

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

// SyncXboxInventoryReader is a Reader for the SyncXboxInventory structure.
type SyncXboxInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncXboxInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncXboxInventoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncXboxInventoryOK creates a SyncXboxInventoryOK with default headers values
func NewSyncXboxInventoryOK() *SyncXboxInventoryOK {
	return &SyncXboxInventoryOK{}
}

/*SyncXboxInventoryOK handles this case with default header values.

  successful operation
*/
type SyncXboxInventoryOK struct {
	Payload []*platformclientmodels.XblReconcileResult
}

func (o *SyncXboxInventoryOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync][%d] syncXboxInventoryOK  %+v", 200, o.Payload)
}

func (o *SyncXboxInventoryOK) GetPayload() []*platformclientmodels.XblReconcileResult {
	return o.Payload
}

func (o *SyncXboxInventoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
