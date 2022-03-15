// Code generated by go-swagger; DO NOT EDIT.

package currency

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

// CreateCurrencyReader is a Reader for the CreateCurrency structure.
type CreateCurrencyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateCurrencyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateCurrencyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateCurrencyConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateCurrencyUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/currencies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateCurrencyOK creates a CreateCurrencyOK with default headers values
func NewCreateCurrencyOK() *CreateCurrencyOK {
	return &CreateCurrencyOK{}
}

/*CreateCurrencyOK handles this case with default header values.

  successful operation
*/
type CreateCurrencyOK struct {
	Payload *platformclientmodels.CurrencyInfo
}

func (o *CreateCurrencyOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/currencies][%d] createCurrencyOK  %+v", 200, o.Payload)
}

func (o *CreateCurrencyOK) GetPayload() *platformclientmodels.CurrencyInfo {
	return o.Payload
}

func (o *CreateCurrencyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.CurrencyInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateCurrencyConflict creates a CreateCurrencyConflict with default headers values
func NewCreateCurrencyConflict() *CreateCurrencyConflict {
	return &CreateCurrencyConflict{}
}

/*CreateCurrencyConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>36171</td><td>Currency [{currencyCode}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreateCurrencyConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateCurrencyConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/currencies][%d] createCurrencyConflict  %+v", 409, o.Payload)
}

func (o *CreateCurrencyConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateCurrencyConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateCurrencyUnprocessableEntity creates a CreateCurrencyUnprocessableEntity with default headers values
func NewCreateCurrencyUnprocessableEntity() *CreateCurrencyUnprocessableEntity {
	return &CreateCurrencyUnprocessableEntity{}
}

/*CreateCurrencyUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateCurrencyUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateCurrencyUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/currencies][%d] createCurrencyUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *CreateCurrencyUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateCurrencyUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
