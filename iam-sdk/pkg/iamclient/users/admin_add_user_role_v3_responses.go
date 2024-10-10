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

// AdminAddUserRoleV3Reader is a Reader for the AdminAddUserRoleV3 structure.
type AdminAddUserRoleV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddUserRoleV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddUserRoleV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddUserRoleV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddUserRoleV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddUserRoleV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddUserRoleV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminAddUserRoleV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddUserRoleV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddUserRoleV3NoContent creates a AdminAddUserRoleV3NoContent with default headers values
func NewAdminAddUserRoleV3NoContent() *AdminAddUserRoleV3NoContent {
	return &AdminAddUserRoleV3NoContent{}
}

/*AdminAddUserRoleV3NoContent handles this case with default header values.

  No Content
*/
type AdminAddUserRoleV3NoContent struct {
}

func (o *AdminAddUserRoleV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3NoContent ", 204)
}

func (o *AdminAddUserRoleV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddUserRoleV3BadRequest creates a AdminAddUserRoleV3BadRequest with default headers values
func NewAdminAddUserRoleV3BadRequest() *AdminAddUserRoleV3BadRequest {
	return &AdminAddUserRoleV3BadRequest{}
}

/*AdminAddUserRoleV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminAddUserRoleV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddUserRoleV3BadRequest) ToJSONString() string {
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

func (o *AdminAddUserRoleV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserRoleV3Unauthorized creates a AdminAddUserRoleV3Unauthorized with default headers values
func NewAdminAddUserRoleV3Unauthorized() *AdminAddUserRoleV3Unauthorized {
	return &AdminAddUserRoleV3Unauthorized{}
}

/*AdminAddUserRoleV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddUserRoleV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddUserRoleV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddUserRoleV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserRoleV3Forbidden creates a AdminAddUserRoleV3Forbidden with default headers values
func NewAdminAddUserRoleV3Forbidden() *AdminAddUserRoleV3Forbidden {
	return &AdminAddUserRoleV3Forbidden{}
}

/*AdminAddUserRoleV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10159</td><td>operator is not a role manager</td></tr></table>
*/
type AdminAddUserRoleV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddUserRoleV3Forbidden) ToJSONString() string {
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

func (o *AdminAddUserRoleV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserRoleV3NotFound creates a AdminAddUserRoleV3NotFound with default headers values
func NewAdminAddUserRoleV3NotFound() *AdminAddUserRoleV3NotFound {
	return &AdminAddUserRoleV3NotFound{}
}

/*AdminAddUserRoleV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10156</td><td>role not found</td></tr></table>
*/
type AdminAddUserRoleV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddUserRoleV3NotFound) ToJSONString() string {
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

func (o *AdminAddUserRoleV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserRoleV3Conflict creates a AdminAddUserRoleV3Conflict with default headers values
func NewAdminAddUserRoleV3Conflict() *AdminAddUserRoleV3Conflict {
	return &AdminAddUserRoleV3Conflict{}
}

/*AdminAddUserRoleV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10160</td><td>user already has the role</td></tr><tr><td>10161</td><td>user already the role member</td></tr></table>
*/
type AdminAddUserRoleV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminAddUserRoleV3Conflict) ToJSONString() string {
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

func (o *AdminAddUserRoleV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserRoleV3InternalServerError creates a AdminAddUserRoleV3InternalServerError with default headers values
func NewAdminAddUserRoleV3InternalServerError() *AdminAddUserRoleV3InternalServerError {
	return &AdminAddUserRoleV3InternalServerError{}
}

/*AdminAddUserRoleV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminAddUserRoleV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserRoleV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}][%d] adminAddUserRoleV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddUserRoleV3InternalServerError) ToJSONString() string {
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

func (o *AdminAddUserRoleV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserRoleV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
