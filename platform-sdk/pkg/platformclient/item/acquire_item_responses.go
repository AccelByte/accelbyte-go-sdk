// Code generated by go-swagger; DO NOT EDIT.

package item

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

// AcquireItemReader is a Reader for the AcquireItem structure.
type AcquireItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcquireItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcquireItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcquireItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/{itemId}/acquire returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcquireItemOK creates a AcquireItemOK with default headers values
func NewAcquireItemOK() *AcquireItemOK {
	return &AcquireItemOK{}
}

/*AcquireItemOK handles this case with default header values.

  successful operation
*/
type AcquireItemOK struct {
	Payload *platformclientmodels.ItemAcquireResult
}

func (o *AcquireItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/acquire][%d] acquireItemOK  %+v", 200, o.Payload)
}

func (o *AcquireItemOK) GetPayload() *platformclientmodels.ItemAcquireResult {
	return o.Payload
}

func (o *AcquireItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ItemAcquireResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAcquireItemNotFound creates a AcquireItemNotFound with default headers values
func NewAcquireItemNotFound() *AcquireItemNotFound {
	return &AcquireItemNotFound{}
}

/*AcquireItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type AcquireItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AcquireItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/acquire][%d] acquireItemNotFound  %+v", 404, o.Payload)
}

func (o *AcquireItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AcquireItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
