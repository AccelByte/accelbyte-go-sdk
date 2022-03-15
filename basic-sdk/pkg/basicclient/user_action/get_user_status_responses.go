// Code generated by go-swagger; DO NOT EDIT.

package user_action

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

// GetUserStatusReader is a Reader for the GetUserStatus structure.
type GetUserStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGetUserStatusUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/actions/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserStatusOK creates a GetUserStatusOK with default headers values
func NewGetUserStatusOK() *GetUserStatusOK {
	return &GetUserStatusOK{}
}

/*GetUserStatusOK handles this case with default header values.

  successful operation
*/
type GetUserStatusOK struct {
	Payload *basicclientmodels.ADTOObjectForEqu8UserStatus
}

func (o *GetUserStatusOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/status][%d] getUserStatusOK  %+v", 200, o.Payload)
}

func (o *GetUserStatusOK) GetPayload() *basicclientmodels.ADTOObjectForEqu8UserStatus {
	return o.Payload
}

func (o *GetUserStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ADTOObjectForEqu8UserStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStatusBadRequest creates a GetUserStatusBadRequest with default headers values
func NewGetUserStatusBadRequest() *GetUserStatusBadRequest {
	return &GetUserStatusBadRequest{}
}

/*GetUserStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type GetUserStatusBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserStatusBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/status][%d] getUserStatusBadRequest  %+v", 400, o.Payload)
}

func (o *GetUserStatusBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStatusNotFound creates a GetUserStatusNotFound with default headers values
func NewGetUserStatusNotFound() *GetUserStatusNotFound {
	return &GetUserStatusNotFound{}
}

/*GetUserStatusNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11641</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type GetUserStatusNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserStatusNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/status][%d] getUserStatusNotFound  %+v", 404, o.Payload)
}

func (o *GetUserStatusNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStatusUnprocessableEntity creates a GetUserStatusUnprocessableEntity with default headers values
func NewGetUserStatusUnprocessableEntity() *GetUserStatusUnprocessableEntity {
	return &GetUserStatusUnprocessableEntity{}
}

/*GetUserStatusUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserStatusUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetUserStatusUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/status][%d] getUserStatusUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *GetUserStatusUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetUserStatusUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStatusInternalServerError creates a GetUserStatusInternalServerError with default headers values
func NewGetUserStatusInternalServerError() *GetUserStatusInternalServerError {
	return &GetUserStatusInternalServerError{}
}

/*GetUserStatusInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserStatusInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/status][%d] getUserStatusInternalServerError  %+v", 500, o.Payload)
}

func (o *GetUserStatusInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
