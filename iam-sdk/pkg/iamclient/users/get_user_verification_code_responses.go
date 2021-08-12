// Code generated by go-swagger; DO NOT EDIT.

package users

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

// GetUserVerificationCodeReader is a Reader for the GetUserVerificationCode structure.
type GetUserVerificationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserVerificationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserVerificationCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserVerificationCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserVerificationCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserVerificationCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserVerificationCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserVerificationCodeOK creates a GetUserVerificationCodeOK with default headers values
func NewGetUserVerificationCodeOK() *GetUserVerificationCodeOK {
	return &GetUserVerificationCodeOK{}
}

/*GetUserVerificationCodeOK handles this case with default header values.

  OK
*/
type GetUserVerificationCodeOK struct {
	Payload *iamclientmodels.ModelVerificationCodeResponse
}

func (o *GetUserVerificationCodeOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes][%d] getUserVerificationCodeOK  %+v", 200, o.Payload)
}

func (o *GetUserVerificationCodeOK) GetPayload() *iamclientmodels.ModelVerificationCodeResponse {
	return o.Payload
}

func (o *GetUserVerificationCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.ModelVerificationCodeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserVerificationCodeUnauthorized creates a GetUserVerificationCodeUnauthorized with default headers values
func NewGetUserVerificationCodeUnauthorized() *GetUserVerificationCodeUnauthorized {
	return &GetUserVerificationCodeUnauthorized{}
}

/*GetUserVerificationCodeUnauthorized handles this case with default header values.

  Unauthorized access
*/
type GetUserVerificationCodeUnauthorized struct {
}

func (o *GetUserVerificationCodeUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes][%d] getUserVerificationCodeUnauthorized ", 401)
}

func (o *GetUserVerificationCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetUserVerificationCodeForbidden creates a GetUserVerificationCodeForbidden with default headers values
func NewGetUserVerificationCodeForbidden() *GetUserVerificationCodeForbidden {
	return &GetUserVerificationCodeForbidden{}
}

/*GetUserVerificationCodeForbidden handles this case with default header values.

  Forbidden
*/
type GetUserVerificationCodeForbidden struct {
}

func (o *GetUserVerificationCodeForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes][%d] getUserVerificationCodeForbidden ", 403)
}

func (o *GetUserVerificationCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetUserVerificationCodeNotFound creates a GetUserVerificationCodeNotFound with default headers values
func NewGetUserVerificationCodeNotFound() *GetUserVerificationCodeNotFound {
	return &GetUserVerificationCodeNotFound{}
}

/*GetUserVerificationCodeNotFound handles this case with default header values.

  Data not found
*/
type GetUserVerificationCodeNotFound struct {
}

func (o *GetUserVerificationCodeNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes][%d] getUserVerificationCodeNotFound ", 404)
}

func (o *GetUserVerificationCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetUserVerificationCodeInternalServerError creates a GetUserVerificationCodeInternalServerError with default headers values
func NewGetUserVerificationCodeInternalServerError() *GetUserVerificationCodeInternalServerError {
	return &GetUserVerificationCodeInternalServerError{}
}

/*GetUserVerificationCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserVerificationCodeInternalServerError struct {
}

func (o *GetUserVerificationCodeInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/codes][%d] getUserVerificationCodeInternalServerError ", 500)
}

func (o *GetUserVerificationCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
