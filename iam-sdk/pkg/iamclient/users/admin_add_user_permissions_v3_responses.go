// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AdminAddUserPermissionsV3Reader is a Reader for the AdminAddUserPermissionsV3 structure.
type AdminAddUserPermissionsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddUserPermissionsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddUserPermissionsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddUserPermissionsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddUserPermissionsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddUserPermissionsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddUserPermissionsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddUserPermissionsV3NoContent creates a AdminAddUserPermissionsV3NoContent with default headers values
func NewAdminAddUserPermissionsV3NoContent() *AdminAddUserPermissionsV3NoContent {
	return &AdminAddUserPermissionsV3NoContent{}
}

/*AdminAddUserPermissionsV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminAddUserPermissionsV3NoContent struct {
}

func (o *AdminAddUserPermissionsV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3NoContent ", 204)
}

func (o *AdminAddUserPermissionsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminAddUserPermissionsV3BadRequest creates a AdminAddUserPermissionsV3BadRequest with default headers values
func NewAdminAddUserPermissionsV3BadRequest() *AdminAddUserPermissionsV3BadRequest {
	return &AdminAddUserPermissionsV3BadRequest{}
}

/*AdminAddUserPermissionsV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminAddUserPermissionsV3BadRequest struct {
}

func (o *AdminAddUserPermissionsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3BadRequest ", 400)
}

func (o *AdminAddUserPermissionsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminAddUserPermissionsV3Unauthorized creates a AdminAddUserPermissionsV3Unauthorized with default headers values
func NewAdminAddUserPermissionsV3Unauthorized() *AdminAddUserPermissionsV3Unauthorized {
	return &AdminAddUserPermissionsV3Unauthorized{}
}

/*AdminAddUserPermissionsV3Unauthorized handles this case with default header values.

  Unauthorized access
*/
type AdminAddUserPermissionsV3Unauthorized struct {
}

func (o *AdminAddUserPermissionsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3Unauthorized ", 401)
}

func (o *AdminAddUserPermissionsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminAddUserPermissionsV3Forbidden creates a AdminAddUserPermissionsV3Forbidden with default headers values
func NewAdminAddUserPermissionsV3Forbidden() *AdminAddUserPermissionsV3Forbidden {
	return &AdminAddUserPermissionsV3Forbidden{}
}

/*AdminAddUserPermissionsV3Forbidden handles this case with default header values.

  Forbidden
*/
type AdminAddUserPermissionsV3Forbidden struct {
}

func (o *AdminAddUserPermissionsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3Forbidden ", 403)
}

func (o *AdminAddUserPermissionsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminAddUserPermissionsV3NotFound creates a AdminAddUserPermissionsV3NotFound with default headers values
func NewAdminAddUserPermissionsV3NotFound() *AdminAddUserPermissionsV3NotFound {
	return &AdminAddUserPermissionsV3NotFound{}
}

/*AdminAddUserPermissionsV3NotFound handles this case with default header values.

  Data not found
*/
type AdminAddUserPermissionsV3NotFound struct {
}

func (o *AdminAddUserPermissionsV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3NotFound ", 404)
}

func (o *AdminAddUserPermissionsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
