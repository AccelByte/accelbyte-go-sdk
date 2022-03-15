// Code generated by go-swagger; DO NOT EDIT.

package payment

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// ListExtOrderNoByExtTxIDReader is a Reader for the ListExtOrderNoByExtTxID structure.
type ListExtOrderNoByExtTxIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListExtOrderNoByExtTxIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListExtOrderNoByExtTxIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/orders/byExtTxId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListExtOrderNoByExtTxIDOK creates a ListExtOrderNoByExtTxIDOK with default headers values
func NewListExtOrderNoByExtTxIDOK() *ListExtOrderNoByExtTxIDOK {
	return &ListExtOrderNoByExtTxIDOK{}
}

/*ListExtOrderNoByExtTxIDOK handles this case with default header values.

  successful operation
*/
type ListExtOrderNoByExtTxIDOK struct {
	Payload []string
}

func (o *ListExtOrderNoByExtTxIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/orders/byExtTxId][%d] listExtOrderNoByExtTxIdOK  %+v", 200, o.Payload)
}

func (o *ListExtOrderNoByExtTxIDOK) GetPayload() []string {
	return o.Payload
}

func (o *ListExtOrderNoByExtTxIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
