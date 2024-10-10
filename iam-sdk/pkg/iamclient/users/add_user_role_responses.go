// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AddUserRoleReader is a Reader for the AddUserRole structure.
type AddUserRoleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddUserRoleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddUserRoleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddUserRoleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddUserRoleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddUserRoleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAddUserRoleConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddUserRoleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddUserRoleNoContent creates a AddUserRoleNoContent with default headers values
func NewAddUserRoleNoContent() *AddUserRoleNoContent {
	return &AddUserRoleNoContent{}
}

/*AddUserRoleNoContent handles this case with default header values.

  Operation succeeded
*/
type AddUserRoleNoContent struct {
}

func (o *AddUserRoleNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleNoContent ", 204)
}

func (o *AddUserRoleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserRoleUnauthorized creates a AddUserRoleUnauthorized with default headers values
func NewAddUserRoleUnauthorized() *AddUserRoleUnauthorized {
	return &AddUserRoleUnauthorized{}
}

/*AddUserRoleUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddUserRoleUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddUserRoleUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddUserRoleUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AddUserRoleUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddUserRoleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddUserRoleForbidden creates a AddUserRoleForbidden with default headers values
func NewAddUserRoleForbidden() *AddUserRoleForbidden {
	return &AddUserRoleForbidden{}
}

/*AddUserRoleForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10159</td><td>operator is not a role manager</td></tr></table>
*/
type AddUserRoleForbidden struct {
}

func (o *AddUserRoleForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleForbidden ", 403)
}

func (o *AddUserRoleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserRoleNotFound creates a AddUserRoleNotFound with default headers values
func NewAddUserRoleNotFound() *AddUserRoleNotFound {
	return &AddUserRoleNotFound{}
}

/*AddUserRoleNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10156</td><td>role not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AddUserRoleNotFound struct {
}

func (o *AddUserRoleNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleNotFound ", 404)
}

func (o *AddUserRoleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserRoleConflict creates a AddUserRoleConflict with default headers values
func NewAddUserRoleConflict() *AddUserRoleConflict {
	return &AddUserRoleConflict{}
}

/*AddUserRoleConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10160</td><td>user already has the role</td></tr><tr><td>10161</td><td>user already the role member</td></tr></table>
*/
type AddUserRoleConflict struct {
}

func (o *AddUserRoleConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleConflict ", 409)
}

func (o *AddUserRoleConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserRoleInternalServerError creates a AddUserRoleInternalServerError with default headers values
func NewAddUserRoleInternalServerError() *AddUserRoleInternalServerError {
	return &AddUserRoleInternalServerError{}
}

/*AddUserRoleInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AddUserRoleInternalServerError struct {
}

func (o *AddUserRoleInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] addUserRoleInternalServerError ", 500)
}

func (o *AddUserRoleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
