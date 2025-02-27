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

// AddRolePermissionReader is a Reader for the AddRolePermission structure.
type AddRolePermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddRolePermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddRolePermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddRolePermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddRolePermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddRolePermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddRolePermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddRolePermissionNoContent creates a AddRolePermissionNoContent with default headers values
func NewAddRolePermissionNoContent() *AddRolePermissionNoContent {
	return &AddRolePermissionNoContent{}
}

/*AddRolePermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type AddRolePermissionNoContent struct {
}

func (o *AddRolePermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions/{resource}/{action}][%d] addRolePermissionNoContent ", 204)
}

func (o *AddRolePermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddRolePermissionBadRequest creates a AddRolePermissionBadRequest with default headers values
func NewAddRolePermissionBadRequest() *AddRolePermissionBadRequest {
	return &AddRolePermissionBadRequest{}
}

/*AddRolePermissionBadRequest handles this case with default header values.

  Invalid request
*/
type AddRolePermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRolePermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions/{resource}/{action}][%d] addRolePermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddRolePermissionBadRequest) ToJSONString() string {
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

func (o *AddRolePermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRolePermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRolePermissionUnauthorized creates a AddRolePermissionUnauthorized with default headers values
func NewAddRolePermissionUnauthorized() *AddRolePermissionUnauthorized {
	return &AddRolePermissionUnauthorized{}
}

/*AddRolePermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddRolePermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRolePermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions/{resource}/{action}][%d] addRolePermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddRolePermissionUnauthorized) ToJSONString() string {
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

func (o *AddRolePermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRolePermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRolePermissionForbidden creates a AddRolePermissionForbidden with default headers values
func NewAddRolePermissionForbidden() *AddRolePermissionForbidden {
	return &AddRolePermissionForbidden{}
}

/*AddRolePermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddRolePermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRolePermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions/{resource}/{action}][%d] addRolePermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddRolePermissionForbidden) ToJSONString() string {
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

func (o *AddRolePermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRolePermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRolePermissionNotFound creates a AddRolePermissionNotFound with default headers values
func NewAddRolePermissionNotFound() *AddRolePermissionNotFound {
	return &AddRolePermissionNotFound{}
}

/*AddRolePermissionNotFound handles this case with default header values.

  Data not found
*/
type AddRolePermissionNotFound struct {
}

func (o *AddRolePermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/permissions/{resource}/{action}][%d] addRolePermissionNotFound ", 404)
}

func (o *AddRolePermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
