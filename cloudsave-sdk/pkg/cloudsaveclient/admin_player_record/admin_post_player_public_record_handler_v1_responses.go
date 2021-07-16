// Code generated by go-swagger; DO NOT EDIT.

package admin_player_record

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminPostPlayerPublicRecordHandlerV1Reader is a Reader for the AdminPostPlayerPublicRecordHandlerV1 structure.
type AdminPostPlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPostPlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPostPlayerPublicRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPostPlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPostPlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	default:
		result := NewAdminPostPlayerPublicRecordHandlerV1Default(response.Code())
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		if response.Code()/100 == 2 {
			return result, nil
		}
		return result, nil
	}
}

// NewAdminPostPlayerPublicRecordHandlerV1OK creates a AdminPostPlayerPublicRecordHandlerV1OK with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1OK() *AdminPostPlayerPublicRecordHandlerV1OK {
	return &AdminPostPlayerPublicRecordHandlerV1OK{}
}

/*AdminPostPlayerPublicRecordHandlerV1OK handles this case with default header values.

  User level records saved
*/
type AdminPostPlayerPublicRecordHandlerV1OK struct {
}

func (o *AdminPostPlayerPublicRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userID}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1OK ", 200)
}

func (o *AdminPostPlayerPublicRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminPostPlayerPublicRecordHandlerV1BadRequest creates a AdminPostPlayerPublicRecordHandlerV1BadRequest with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1BadRequest() *AdminPostPlayerPublicRecordHandlerV1BadRequest {
	return &AdminPostPlayerPublicRecordHandlerV1BadRequest{}
}

/*AdminPostPlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminPostPlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userID}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.Payload)
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerPublicRecordHandlerV1InternalServerError creates a AdminPostPlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1InternalServerError() *AdminPostPlayerPublicRecordHandlerV1InternalServerError {
	return &AdminPostPlayerPublicRecordHandlerV1InternalServerError{}
}

/*AdminPostPlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPostPlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ResponseError
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userID}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.Payload)
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPostPlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(cloudsaveclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPostPlayerPublicRecordHandlerV1Default creates a AdminPostPlayerPublicRecordHandlerV1Default with default headers values
func NewAdminPostPlayerPublicRecordHandlerV1Default(code int) *AdminPostPlayerPublicRecordHandlerV1Default {
	return &AdminPostPlayerPublicRecordHandlerV1Default{
		_statusCode: code,
	}
}

/*AdminPostPlayerPublicRecordHandlerV1Default handles this case with default header values.

  AdminPostPlayerPublicRecordHandlerV1Default admin post player public record handler v1 default
*/
type AdminPostPlayerPublicRecordHandlerV1Default struct {
	_statusCode int
}

// Code gets the status code for the admin post player public record handler v1 default response
func (o *AdminPostPlayerPublicRecordHandlerV1Default) Code() int {
	return o._statusCode
}

func (o *AdminPostPlayerPublicRecordHandlerV1Default) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userID}/records/{key}/public][%d] adminPostPlayerPublicRecordHandlerV1 default ", o._statusCode)
}

func (o *AdminPostPlayerPublicRecordHandlerV1Default) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
