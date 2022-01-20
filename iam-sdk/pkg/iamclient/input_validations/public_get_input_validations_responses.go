// Code generated by go-swagger; DO NOT EDIT.

package input_validations

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PublicGetInputValidationsReader is a Reader for the PublicGetInputValidations structure.
type PublicGetInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetInputValidationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetInputValidationsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetInputValidationsOK creates a PublicGetInputValidationsOK with default headers values
func NewPublicGetInputValidationsOK() *PublicGetInputValidationsOK {
	return &PublicGetInputValidationsOK{}
}

/*PublicGetInputValidationsOK handles this case with default header values.

  OK
*/
type PublicGetInputValidationsOK struct {
	Payload *iamclientmodels.ModelInputValidationsPublicResponse
}

func (o *PublicGetInputValidationsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations][%d] publicGetInputValidationsOK  %+v", 200, o.Payload)
}

func (o *PublicGetInputValidationsOK) GetPayload() *iamclientmodels.ModelInputValidationsPublicResponse {
	return o.Payload
}

func (o *PublicGetInputValidationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.ModelInputValidationsPublicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetInputValidationsNotFound creates a PublicGetInputValidationsNotFound with default headers values
func NewPublicGetInputValidationsNotFound() *PublicGetInputValidationsNotFound {
	return &PublicGetInputValidationsNotFound{}
}

/*PublicGetInputValidationsNotFound handles this case with default header values.

  Data not found
*/
type PublicGetInputValidationsNotFound struct {
}

func (o *PublicGetInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations][%d] publicGetInputValidationsNotFound ", 404)
}

func (o *PublicGetInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewPublicGetInputValidationsInternalServerError creates a PublicGetInputValidationsInternalServerError with default headers values
func NewPublicGetInputValidationsInternalServerError() *PublicGetInputValidationsInternalServerError {
	return &PublicGetInputValidationsInternalServerError{}
}

/*PublicGetInputValidationsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetInputValidationsInternalServerError struct {
}

func (o *PublicGetInputValidationsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/inputValidations][%d] publicGetInputValidationsInternalServerError ", 500)
}

func (o *PublicGetInputValidationsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}