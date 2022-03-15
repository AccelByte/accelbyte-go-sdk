// Code generated by go-swagger; DO NOT EDIT.

package category

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

// PublicGetRootCategoriesReader is a Reader for the PublicGetRootCategories structure.
type PublicGetRootCategoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetRootCategoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetRootCategoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/categories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetRootCategoriesOK creates a PublicGetRootCategoriesOK with default headers values
func NewPublicGetRootCategoriesOK() *PublicGetRootCategoriesOK {
	return &PublicGetRootCategoriesOK{}
}

/*PublicGetRootCategoriesOK handles this case with default header values.

  successful operation
*/
type PublicGetRootCategoriesOK struct {
	Payload []*platformclientmodels.CategoryInfo
}

func (o *PublicGetRootCategoriesOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/categories][%d] publicGetRootCategoriesOK  %+v", 200, o.Payload)
}

func (o *PublicGetRootCategoriesOK) GetPayload() []*platformclientmodels.CategoryInfo {
	return o.Payload
}

func (o *PublicGetRootCategoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
