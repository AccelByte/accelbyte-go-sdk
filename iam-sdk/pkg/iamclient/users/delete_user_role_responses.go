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

// DeleteUserRoleReader is a Reader for the DeleteUserRole structure.
type DeleteUserRoleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRoleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRoleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRoleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRoleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRoleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRoleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRoleNoContent creates a DeleteUserRoleNoContent with default headers values
func NewDeleteUserRoleNoContent() *DeleteUserRoleNoContent {
	return &DeleteUserRoleNoContent{}
}

/*DeleteUserRoleNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteUserRoleNoContent struct {
}

func (o *DeleteUserRoleNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] deleteUserRoleNoContent ", 204)
}

func (o *DeleteUserRoleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRoleUnauthorized creates a DeleteUserRoleUnauthorized with default headers values
func NewDeleteUserRoleUnauthorized() *DeleteUserRoleUnauthorized {
	return &DeleteUserRoleUnauthorized{}
}

/*DeleteUserRoleUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserRoleUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteUserRoleUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] deleteUserRoleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRoleUnauthorized) ToJSONString() string {
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

func (o *DeleteUserRoleUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteUserRoleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserRoleForbidden creates a DeleteUserRoleForbidden with default headers values
func NewDeleteUserRoleForbidden() *DeleteUserRoleForbidden {
	return &DeleteUserRoleForbidden{}
}

/*DeleteUserRoleForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10159</td><td>operator is not a role manager</td></tr></table>
*/
type DeleteUserRoleForbidden struct {
}

func (o *DeleteUserRoleForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] deleteUserRoleForbidden ", 403)
}

func (o *DeleteUserRoleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRoleNotFound creates a DeleteUserRoleNotFound with default headers values
func NewDeleteUserRoleNotFound() *DeleteUserRoleNotFound {
	return &DeleteUserRoleNotFound{}
}

/*DeleteUserRoleNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10156</td><td>role not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type DeleteUserRoleNotFound struct {
}

func (o *DeleteUserRoleNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] deleteUserRoleNotFound ", 404)
}

func (o *DeleteUserRoleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRoleInternalServerError creates a DeleteUserRoleInternalServerError with default headers values
func NewDeleteUserRoleInternalServerError() *DeleteUserRoleInternalServerError {
	return &DeleteUserRoleInternalServerError{}
}

/*DeleteUserRoleInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteUserRoleInternalServerError struct {
}

func (o *DeleteUserRoleInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] deleteUserRoleInternalServerError ", 500)
}

func (o *DeleteUserRoleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
