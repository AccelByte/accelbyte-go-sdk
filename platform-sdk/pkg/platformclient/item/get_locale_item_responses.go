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

// GetLocaleItemReader is a Reader for the GetLocaleItem structure.
type GetLocaleItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLocaleItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLocaleItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLocaleItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/{itemId}/locale returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLocaleItemOK creates a GetLocaleItemOK with default headers values
func NewGetLocaleItemOK() *GetLocaleItemOK {
	return &GetLocaleItemOK{}
}

/*GetLocaleItemOK handles this case with default header values.

  successful operation
*/
type GetLocaleItemOK struct {
	Payload *platformclientmodels.PopulatedItemInfo
}

func (o *GetLocaleItemOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/locale][%d] getLocaleItemOK  %+v", 200, o.Payload)
}

func (o *GetLocaleItemOK) GetPayload() *platformclientmodels.PopulatedItemInfo {
	return o.Payload
}

func (o *GetLocaleItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.PopulatedItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLocaleItemNotFound creates a GetLocaleItemNotFound with default headers values
func NewGetLocaleItemNotFound() *GetLocaleItemNotFound {
	return &GetLocaleItemNotFound{}
}

/*GetLocaleItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetLocaleItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetLocaleItemNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/locale][%d] getLocaleItemNotFound  %+v", 404, o.Payload)
}

func (o *GetLocaleItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetLocaleItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
