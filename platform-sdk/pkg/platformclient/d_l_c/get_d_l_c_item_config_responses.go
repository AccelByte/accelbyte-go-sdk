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

// GetDLCItemConfigReader is a Reader for the GetDLCItemConfig structure.
type GetDLCItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDLCItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDLCItemConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDLCItemConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/dlc/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDLCItemConfigOK creates a GetDLCItemConfigOK with default headers values
func NewGetDLCItemConfigOK() *GetDLCItemConfigOK {
	return &GetDLCItemConfigOK{}
}

/*GetDLCItemConfigOK handles this case with default header values.

  successful operation
*/
type GetDLCItemConfigOK struct {
	Payload *platformclientmodels.DLCItemConfigInfo
}

func (o *GetDLCItemConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/item][%d] getDLCItemConfigOK  %+v", 200, o.Payload)
}

func (o *GetDLCItemConfigOK) GetPayload() *platformclientmodels.DLCItemConfigInfo {
	return o.Payload
}

func (o *GetDLCItemConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.DLCItemConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDLCItemConfigNotFound creates a GetDLCItemConfigNotFound with default headers values
func NewGetDLCItemConfigNotFound() *GetDLCItemConfigNotFound {
	return &GetDLCItemConfigNotFound{}
}

/*GetDLCItemConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39341</td><td>DLC item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetDLCItemConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetDLCItemConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/item][%d] getDLCItemConfigNotFound  %+v", 404, o.Payload)
}

func (o *GetDLCItemConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetDLCItemConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
