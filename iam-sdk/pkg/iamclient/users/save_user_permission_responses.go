// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// SaveUserPermissionReader is a Reader for the SaveUserPermission structure.
type SaveUserPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveUserPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSaveUserPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveUserPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveUserPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveUserPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSaveUserPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveUserPermissionNoContent creates a SaveUserPermissionNoContent with default headers values
func NewSaveUserPermissionNoContent() *SaveUserPermissionNoContent {
	return &SaveUserPermissionNoContent{}
}

/*SaveUserPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type SaveUserPermissionNoContent struct {
}

func (o *SaveUserPermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionNoContent ", 204)
}

func (o *SaveUserPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSaveUserPermissionBadRequest creates a SaveUserPermissionBadRequest with default headers values
func NewSaveUserPermissionBadRequest() *SaveUserPermissionBadRequest {
	return &SaveUserPermissionBadRequest{}
}

/*SaveUserPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type SaveUserPermissionBadRequest struct {
}

func (o *SaveUserPermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionBadRequest ", 400)
}

func (o *SaveUserPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSaveUserPermissionUnauthorized creates a SaveUserPermissionUnauthorized with default headers values
func NewSaveUserPermissionUnauthorized() *SaveUserPermissionUnauthorized {
	return &SaveUserPermissionUnauthorized{}
}

/*SaveUserPermissionUnauthorized handles this case with default header values.

  Unauthorized access
*/
type SaveUserPermissionUnauthorized struct {
}

func (o *SaveUserPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionUnauthorized ", 401)
}

func (o *SaveUserPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSaveUserPermissionForbidden creates a SaveUserPermissionForbidden with default headers values
func NewSaveUserPermissionForbidden() *SaveUserPermissionForbidden {
	return &SaveUserPermissionForbidden{}
}

/*SaveUserPermissionForbidden handles this case with default header values.

  Forbidden
*/
type SaveUserPermissionForbidden struct {
}

func (o *SaveUserPermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionForbidden ", 403)
}

func (o *SaveUserPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSaveUserPermissionNotFound creates a SaveUserPermissionNotFound with default headers values
func NewSaveUserPermissionNotFound() *SaveUserPermissionNotFound {
	return &SaveUserPermissionNotFound{}
}

/*SaveUserPermissionNotFound handles this case with default header values.

  Data not found
*/
type SaveUserPermissionNotFound struct {
}

func (o *SaveUserPermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/permissions][%d] saveUserPermissionNotFound ", 404)
}

func (o *SaveUserPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
