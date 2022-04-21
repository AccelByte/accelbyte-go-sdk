// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AddRoleManagersReader is a Reader for the AddRoleManagers structure.
type AddRoleManagersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddRoleManagersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddRoleManagersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddRoleManagersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddRoleManagersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddRoleManagersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddRoleManagersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddRoleManagersNoContent creates a AddRoleManagersNoContent with default headers values
func NewAddRoleManagersNoContent() *AddRoleManagersNoContent {
	return &AddRoleManagersNoContent{}
}

/*AddRoleManagersNoContent handles this case with default header values.

  Operation succeeded
*/
type AddRoleManagersNoContent struct {
}

func (o *AddRoleManagersNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersNoContent ", 204)
}

func (o *AddRoleManagersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleManagersBadRequest creates a AddRoleManagersBadRequest with default headers values
func NewAddRoleManagersBadRequest() *AddRoleManagersBadRequest {
	return &AddRoleManagersBadRequest{}
}

/*AddRoleManagersBadRequest handles this case with default header values.

  Invalid request
*/
type AddRoleManagersBadRequest struct {
}

func (o *AddRoleManagersBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersBadRequest ", 400)
}

func (o *AddRoleManagersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleManagersUnauthorized creates a AddRoleManagersUnauthorized with default headers values
func NewAddRoleManagersUnauthorized() *AddRoleManagersUnauthorized {
	return &AddRoleManagersUnauthorized{}
}

/*AddRoleManagersUnauthorized handles this case with default header values.

  Unauthorized access
*/
type AddRoleManagersUnauthorized struct {
}

func (o *AddRoleManagersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersUnauthorized ", 401)
}

func (o *AddRoleManagersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleManagersForbidden creates a AddRoleManagersForbidden with default headers values
func NewAddRoleManagersForbidden() *AddRoleManagersForbidden {
	return &AddRoleManagersForbidden{}
}

/*AddRoleManagersForbidden handles this case with default header values.

  Forbidden
*/
type AddRoleManagersForbidden struct {
}

func (o *AddRoleManagersForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersForbidden ", 403)
}

func (o *AddRoleManagersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleManagersNotFound creates a AddRoleManagersNotFound with default headers values
func NewAddRoleManagersNotFound() *AddRoleManagersNotFound {
	return &AddRoleManagersNotFound{}
}

/*AddRoleManagersNotFound handles this case with default header values.

  Data not found
*/
type AddRoleManagersNotFound struct {
}

func (o *AddRoleManagersNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/managers][%d] addRoleManagersNotFound ", 404)
}

func (o *AddRoleManagersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
