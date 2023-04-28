// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// UpdateRolePermissionsReader is a Reader for the UpdateRolePermissions structure.
type UpdateRolePermissionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateRolePermissionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateRolePermissionsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateRolePermissionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateRolePermissionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateRolePermissionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateRolePermissionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateRolePermissionsNoContent creates a UpdateRolePermissionsNoContent with default headers values
func NewUpdateRolePermissionsNoContent() *UpdateRolePermissionsNoContent {
	return &UpdateRolePermissionsNoContent{}
}

/*UpdateRolePermissionsNoContent handles this case with default header values.

  Operation succeeded
*/
type UpdateRolePermissionsNoContent struct {
}

func (o *UpdateRolePermissionsNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions][%d] updateRolePermissionsNoContent ", 204)
}

func (o *UpdateRolePermissionsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateRolePermissionsBadRequest creates a UpdateRolePermissionsBadRequest with default headers values
func NewUpdateRolePermissionsBadRequest() *UpdateRolePermissionsBadRequest {
	return &UpdateRolePermissionsBadRequest{}
}

/*UpdateRolePermissionsBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateRolePermissionsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRolePermissionsBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions][%d] updateRolePermissionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateRolePermissionsBadRequest) ToJSONString() string {
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

func (o *UpdateRolePermissionsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRolePermissionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRolePermissionsUnauthorized creates a UpdateRolePermissionsUnauthorized with default headers values
func NewUpdateRolePermissionsUnauthorized() *UpdateRolePermissionsUnauthorized {
	return &UpdateRolePermissionsUnauthorized{}
}

/*UpdateRolePermissionsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateRolePermissionsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRolePermissionsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions][%d] updateRolePermissionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateRolePermissionsUnauthorized) ToJSONString() string {
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

func (o *UpdateRolePermissionsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRolePermissionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRolePermissionsForbidden creates a UpdateRolePermissionsForbidden with default headers values
func NewUpdateRolePermissionsForbidden() *UpdateRolePermissionsForbidden {
	return &UpdateRolePermissionsForbidden{}
}

/*UpdateRolePermissionsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateRolePermissionsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRolePermissionsForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions][%d] updateRolePermissionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateRolePermissionsForbidden) ToJSONString() string {
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

func (o *UpdateRolePermissionsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRolePermissionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRolePermissionsNotFound creates a UpdateRolePermissionsNotFound with default headers values
func NewUpdateRolePermissionsNotFound() *UpdateRolePermissionsNotFound {
	return &UpdateRolePermissionsNotFound{}
}

/*UpdateRolePermissionsNotFound handles this case with default header values.

  Data not found
*/
type UpdateRolePermissionsNotFound struct {
}

func (o *UpdateRolePermissionsNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions][%d] updateRolePermissionsNotFound ", 404)
}

func (o *UpdateRolePermissionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
