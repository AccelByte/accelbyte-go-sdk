// Code generated by go-swagger; DO NOT EDIT.

package anonymization

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminDeleteAllUserGroupReader is a Reader for the AdminDeleteAllUserGroup structure.
type AdminDeleteAllUserGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAllUserGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteAllUserGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAllUserGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAllUserGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAllUserGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAllUserGroupOK creates a AdminDeleteAllUserGroupOK with default headers values
func NewAdminDeleteAllUserGroupOK() *AdminDeleteAllUserGroupOK {
	return &AdminDeleteAllUserGroupOK{}
}

/*AdminDeleteAllUserGroupOK handles this case with default header values.

  OK
*/
type AdminDeleteAllUserGroupOK struct {
}

func (o *AdminDeleteAllUserGroupOK) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupOK ", 200)
}

func (o *AdminDeleteAllUserGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminDeleteAllUserGroupUnauthorized creates a AdminDeleteAllUserGroupUnauthorized with default headers values
func NewAdminDeleteAllUserGroupUnauthorized() *AdminDeleteAllUserGroupUnauthorized {
	return &AdminDeleteAllUserGroupUnauthorized{}
}

/*AdminDeleteAllUserGroupUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteAllUserGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminDeleteAllUserGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserGroupNotFound creates a AdminDeleteAllUserGroupNotFound with default headers values
func NewAdminDeleteAllUserGroupNotFound() *AdminDeleteAllUserGroupNotFound {
	return &AdminDeleteAllUserGroupNotFound{}
}

/*AdminDeleteAllUserGroupNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteAllUserGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupNotFound  %+v", 404, o.Payload)
}

func (o *AdminDeleteAllUserGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserGroupInternalServerError creates a AdminDeleteAllUserGroupInternalServerError with default headers values
func NewAdminDeleteAllUserGroupInternalServerError() *AdminDeleteAllUserGroupInternalServerError {
	return &AdminDeleteAllUserGroupInternalServerError{}
}

/*AdminDeleteAllUserGroupInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteAllUserGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminDeleteAllUserGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}