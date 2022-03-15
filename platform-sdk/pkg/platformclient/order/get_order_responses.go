// Code generated by go-swagger; DO NOT EDIT.

package order

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

// GetOrderReader is a Reader for the GetOrder structure.
type GetOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/orders/{orderNo} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetOrderOK creates a GetOrderOK with default headers values
func NewGetOrderOK() *GetOrderOK {
	return &GetOrderOK{}
}

/*GetOrderOK handles this case with default header values.

  successful operation
*/
type GetOrderOK struct {
	Payload *platformclientmodels.OrderInfo
}

func (o *GetOrderOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/orders/{orderNo}][%d] getOrderOK  %+v", 200, o.Payload)
}

func (o *GetOrderOK) GetPayload() *platformclientmodels.OrderInfo {
	return o.Payload
}

func (o *GetOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.OrderInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetOrderNotFound creates a GetOrderNotFound with default headers values
func NewGetOrderNotFound() *GetOrderNotFound {
	return &GetOrderNotFound{}
}

/*GetOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32141</td><td>Order [{orderNo}] does not exist</td></tr></table>
*/
type GetOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetOrderNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/orders/{orderNo}][%d] getOrderNotFound  %+v", 404, o.Payload)
}

func (o *GetOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
