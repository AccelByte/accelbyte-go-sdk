// Code generated by go-swagger; DO NOT EDIT.

package e_q_u8_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// GetConfigReader is a Reader for the GetConfig structure.
type GetConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /v1/admin/namespaces/{namespace}/equ8/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetConfigOK creates a GetConfigOK with default headers values
func NewGetConfigOK() *GetConfigOK {
	return &GetConfigOK{}
}

/*GetConfigOK handles this case with default header values.

  successful operation
*/
type GetConfigOK struct {
	Payload *basicclientmodels.Equ8Config
}

func (o *GetConfigOK) Error() string {
	return fmt.Sprintf("[GET /v1/admin/namespaces/{namespace}/equ8/config][%d] getConfigOK  %+v", 200, o.Payload)
}

func (o *GetConfigOK) GetPayload() *basicclientmodels.Equ8Config {
	return o.Payload
}

func (o *GetConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.Equ8Config)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigNotFound creates a GetConfigNotFound with default headers values
func NewGetConfigNotFound() *GetConfigNotFound {
	return &GetConfigNotFound{}
}

/*GetConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11641</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type GetConfigNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /v1/admin/namespaces/{namespace}/equ8/config][%d] getConfigNotFound  %+v", 404, o.Payload)
}

func (o *GetConfigNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigInternalServerError creates a GetConfigInternalServerError with default headers values
func NewGetConfigInternalServerError() *GetConfigInternalServerError {
	return &GetConfigInternalServerError{}
}

/*GetConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetConfigInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /v1/admin/namespaces/{namespace}/equ8/config][%d] getConfigInternalServerError  %+v", 500, o.Payload)
}

func (o *GetConfigInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}