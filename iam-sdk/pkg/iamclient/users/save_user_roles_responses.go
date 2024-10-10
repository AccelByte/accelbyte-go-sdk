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

// SaveUserRolesReader is a Reader for the SaveUserRoles structure.
type SaveUserRolesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveUserRolesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSaveUserRolesNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveUserRolesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveUserRolesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSaveUserRolesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSaveUserRolesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSaveUserRolesConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveUserRolesNoContent creates a SaveUserRolesNoContent with default headers values
func NewSaveUserRolesNoContent() *SaveUserRolesNoContent {
	return &SaveUserRolesNoContent{}
}

/*SaveUserRolesNoContent handles this case with default header values.

  Operation succeeded
*/
type SaveUserRolesNoContent struct {
}

func (o *SaveUserRolesNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesNoContent ", 204)
}

func (o *SaveUserRolesNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSaveUserRolesBadRequest creates a SaveUserRolesBadRequest with default headers values
func NewSaveUserRolesBadRequest() *SaveUserRolesBadRequest {
	return &SaveUserRolesBadRequest{}
}

/*SaveUserRolesBadRequest handles this case with default header values.

  Invalid request
*/
type SaveUserRolesBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserRolesBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveUserRolesBadRequest) ToJSONString() string {
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

func (o *SaveUserRolesBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserRolesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveUserRolesUnauthorized creates a SaveUserRolesUnauthorized with default headers values
func NewSaveUserRolesUnauthorized() *SaveUserRolesUnauthorized {
	return &SaveUserRolesUnauthorized{}
}

/*SaveUserRolesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SaveUserRolesUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserRolesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveUserRolesUnauthorized) ToJSONString() string {
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

func (o *SaveUserRolesUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserRolesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveUserRolesForbidden creates a SaveUserRolesForbidden with default headers values
func NewSaveUserRolesForbidden() *SaveUserRolesForbidden {
	return &SaveUserRolesForbidden{}
}

/*SaveUserRolesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SaveUserRolesForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SaveUserRolesForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesForbidden  %+v", 403, o.ToJSONString())
}

func (o *SaveUserRolesForbidden) ToJSONString() string {
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

func (o *SaveUserRolesForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SaveUserRolesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveUserRolesNotFound creates a SaveUserRolesNotFound with default headers values
func NewSaveUserRolesNotFound() *SaveUserRolesNotFound {
	return &SaveUserRolesNotFound{}
}

/*SaveUserRolesNotFound handles this case with default header values.

  Data not found
*/
type SaveUserRolesNotFound struct {
}

func (o *SaveUserRolesNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesNotFound ", 404)
}

func (o *SaveUserRolesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSaveUserRolesConflict creates a SaveUserRolesConflict with default headers values
func NewSaveUserRolesConflict() *SaveUserRolesConflict {
	return &SaveUserRolesConflict{}
}

/*SaveUserRolesConflict handles this case with default header values.

  Conflict
*/
type SaveUserRolesConflict struct {
}

func (o *SaveUserRolesConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/roles][%d] saveUserRolesConflict ", 409)
}

func (o *SaveUserRolesConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
