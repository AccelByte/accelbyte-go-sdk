// Code generated by go-swagger; DO NOT EDIT.

package store

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

// ListStoresReader is a Reader for the ListStores structure.
type ListStoresReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListStoresReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListStoresOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/stores returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListStoresOK creates a ListStoresOK with default headers values
func NewListStoresOK() *ListStoresOK {
	return &ListStoresOK{}
}

/*ListStoresOK handles this case with default header values.

  successful operation
*/
type ListStoresOK struct {
	Payload []*platformclientmodels.StoreInfo
}

func (o *ListStoresOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/stores][%d] listStoresOK  %+v", 200, o.Payload)
}

func (o *ListStoresOK) GetPayload() []*platformclientmodels.StoreInfo {
	return o.Payload
}

func (o *ListStoresOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
