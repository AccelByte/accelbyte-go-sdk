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

// AddRoleMembersReader is a Reader for the AddRoleMembers structure.
type AddRoleMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddRoleMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddRoleMembersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddRoleMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddRoleMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddRoleMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddRoleMembersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddRoleMembersNoContent creates a AddRoleMembersNoContent with default headers values
func NewAddRoleMembersNoContent() *AddRoleMembersNoContent {
	return &AddRoleMembersNoContent{}
}

/*AddRoleMembersNoContent handles this case with default header values.

  Operation succeeded
*/
type AddRoleMembersNoContent struct {
}

func (o *AddRoleMembersNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersNoContent ", 204)
}

func (o *AddRoleMembersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleMembersBadRequest creates a AddRoleMembersBadRequest with default headers values
func NewAddRoleMembersBadRequest() *AddRoleMembersBadRequest {
	return &AddRoleMembersBadRequest{}
}

/*AddRoleMembersBadRequest handles this case with default header values.

  Invalid request
*/
type AddRoleMembersBadRequest struct {
}

func (o *AddRoleMembersBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersBadRequest ", 400)
}

func (o *AddRoleMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleMembersUnauthorized creates a AddRoleMembersUnauthorized with default headers values
func NewAddRoleMembersUnauthorized() *AddRoleMembersUnauthorized {
	return &AddRoleMembersUnauthorized{}
}

/*AddRoleMembersUnauthorized handles this case with default header values.

  Unauthorized access
*/
type AddRoleMembersUnauthorized struct {
}

func (o *AddRoleMembersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersUnauthorized ", 401)
}

func (o *AddRoleMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleMembersForbidden creates a AddRoleMembersForbidden with default headers values
func NewAddRoleMembersForbidden() *AddRoleMembersForbidden {
	return &AddRoleMembersForbidden{}
}

/*AddRoleMembersForbidden handles this case with default header values.

  Forbidden
*/
type AddRoleMembersForbidden struct {
}

func (o *AddRoleMembersForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersForbidden ", 403)
}

func (o *AddRoleMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAddRoleMembersNotFound creates a AddRoleMembersNotFound with default headers values
func NewAddRoleMembersNotFound() *AddRoleMembersNotFound {
	return &AddRoleMembersNotFound{}
}

/*AddRoleMembersNotFound handles this case with default header values.

  Data not found
*/
type AddRoleMembersNotFound struct {
}

func (o *AddRoleMembersNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersNotFound ", 404)
}

func (o *AddRoleMembersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
