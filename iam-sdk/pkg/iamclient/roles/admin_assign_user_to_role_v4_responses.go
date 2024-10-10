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

// AdminAssignUserToRoleV4Reader is a Reader for the AdminAssignUserToRoleV4 structure.
type AdminAssignUserToRoleV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAssignUserToRoleV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminAssignUserToRoleV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAssignUserToRoleV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAssignUserToRoleV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAssignUserToRoleV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAssignUserToRoleV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminAssignUserToRoleV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminAssignUserToRoleV4UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/roles/{roleId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAssignUserToRoleV4Created creates a AdminAssignUserToRoleV4Created with default headers values
func NewAdminAssignUserToRoleV4Created() *AdminAssignUserToRoleV4Created {
	return &AdminAssignUserToRoleV4Created{}
}

/*AdminAssignUserToRoleV4Created handles this case with default header values.

  Operation succeeded
*/
type AdminAssignUserToRoleV4Created struct {
	Payload *iamclientmodels.ModelAssignedUserV4Response
}

func (o *AdminAssignUserToRoleV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4Created) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4Created) GetPayload() *iamclientmodels.ModelAssignedUserV4Response {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelAssignedUserV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAssignUserToRoleV4BadRequest creates a AdminAssignUserToRoleV4BadRequest with default headers values
func NewAdminAssignUserToRoleV4BadRequest() *AdminAssignUserToRoleV4BadRequest {
	return &AdminAssignUserToRoleV4BadRequest{}
}

/*AdminAssignUserToRoleV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10457</td><td>specified role is not admin role</td></tr></table>
*/
type AdminAssignUserToRoleV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4BadRequest) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAssignUserToRoleV4Unauthorized creates a AdminAssignUserToRoleV4Unauthorized with default headers values
func NewAdminAssignUserToRoleV4Unauthorized() *AdminAssignUserToRoleV4Unauthorized {
	return &AdminAssignUserToRoleV4Unauthorized{}
}

/*AdminAssignUserToRoleV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAssignUserToRoleV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4Unauthorized) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAssignUserToRoleV4Forbidden creates a AdminAssignUserToRoleV4Forbidden with default headers values
func NewAdminAssignUserToRoleV4Forbidden() *AdminAssignUserToRoleV4Forbidden {
	return &AdminAssignUserToRoleV4Forbidden{}
}

/*AdminAssignUserToRoleV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10459</td><td>operator is not a role manager</td></tr><tr><td>10182</td><td>given namespace cannot be assigned to the role</td></tr></table>
*/
type AdminAssignUserToRoleV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4Forbidden) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAssignUserToRoleV4NotFound creates a AdminAssignUserToRoleV4NotFound with default headers values
func NewAdminAssignUserToRoleV4NotFound() *AdminAssignUserToRoleV4NotFound {
	return &AdminAssignUserToRoleV4NotFound{}
}

/*AdminAssignUserToRoleV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminAssignUserToRoleV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4NotFound) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAssignUserToRoleV4Conflict creates a AdminAssignUserToRoleV4Conflict with default headers values
func NewAdminAssignUserToRoleV4Conflict() *AdminAssignUserToRoleV4Conflict {
	return &AdminAssignUserToRoleV4Conflict{}
}

/*AdminAssignUserToRoleV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10469</td><td>role member exist</td></tr></table>
*/
type AdminAssignUserToRoleV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4Conflict) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAssignUserToRoleV4UnprocessableEntity creates a AdminAssignUserToRoleV4UnprocessableEntity with default headers values
func NewAdminAssignUserToRoleV4UnprocessableEntity() *AdminAssignUserToRoleV4UnprocessableEntity {
	return &AdminAssignUserToRoleV4UnprocessableEntity{}
}

/*AdminAssignUserToRoleV4UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10183</td><td>unprocessable entity</td></tr></table>
*/
type AdminAssignUserToRoleV4UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAssignUserToRoleV4UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/users][%d] adminAssignUserToRoleV4UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminAssignUserToRoleV4UnprocessableEntity) ToJSONString() string {
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

func (o *AdminAssignUserToRoleV4UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAssignUserToRoleV4UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
