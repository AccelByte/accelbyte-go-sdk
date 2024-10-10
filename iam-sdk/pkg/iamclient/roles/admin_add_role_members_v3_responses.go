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

// AdminAddRoleMembersV3Reader is a Reader for the AdminAddRoleMembersV3 structure.
type AdminAddRoleMembersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddRoleMembersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddRoleMembersV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddRoleMembersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddRoleMembersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddRoleMembersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddRoleMembersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminAddRoleMembersV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddRoleMembersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddRoleMembersV3NoContent creates a AdminAddRoleMembersV3NoContent with default headers values
func NewAdminAddRoleMembersV3NoContent() *AdminAddRoleMembersV3NoContent {
	return &AdminAddRoleMembersV3NoContent{}
}

/*AdminAddRoleMembersV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminAddRoleMembersV3NoContent struct {
}

func (o *AdminAddRoleMembersV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3NoContent ", 204)
}

func (o *AdminAddRoleMembersV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddRoleMembersV3BadRequest creates a AdminAddRoleMembersV3BadRequest with default headers values
func NewAdminAddRoleMembersV3BadRequest() *AdminAddRoleMembersV3BadRequest {
	return &AdminAddRoleMembersV3BadRequest{}
}

/*AdminAddRoleMembersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10457</td><td>specified role is not admin role</td></tr></table>
*/
type AdminAddRoleMembersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3BadRequest) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleMembersV3Unauthorized creates a AdminAddRoleMembersV3Unauthorized with default headers values
func NewAdminAddRoleMembersV3Unauthorized() *AdminAddRoleMembersV3Unauthorized {
	return &AdminAddRoleMembersV3Unauthorized{}
}

/*AdminAddRoleMembersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddRoleMembersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleMembersV3Forbidden creates a AdminAddRoleMembersV3Forbidden with default headers values
func NewAdminAddRoleMembersV3Forbidden() *AdminAddRoleMembersV3Forbidden {
	return &AdminAddRoleMembersV3Forbidden{}
}

/*AdminAddRoleMembersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10459</td><td>operator is not a role manager</td></tr></table>
*/
type AdminAddRoleMembersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3Forbidden) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleMembersV3NotFound creates a AdminAddRoleMembersV3NotFound with default headers values
func NewAdminAddRoleMembersV3NotFound() *AdminAddRoleMembersV3NotFound {
	return &AdminAddRoleMembersV3NotFound{}
}

/*AdminAddRoleMembersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminAddRoleMembersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3NotFound) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleMembersV3Conflict creates a AdminAddRoleMembersV3Conflict with default headers values
func NewAdminAddRoleMembersV3Conflict() *AdminAddRoleMembersV3Conflict {
	return &AdminAddRoleMembersV3Conflict{}
}

/*AdminAddRoleMembersV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10469</td><td>role member exist</td></tr></table>
*/
type AdminAddRoleMembersV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3Conflict) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleMembersV3InternalServerError creates a AdminAddRoleMembersV3InternalServerError with default headers values
func NewAdminAddRoleMembersV3InternalServerError() *AdminAddRoleMembersV3InternalServerError {
	return &AdminAddRoleMembersV3InternalServerError{}
}

/*AdminAddRoleMembersV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminAddRoleMembersV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleMembersV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/members][%d] adminAddRoleMembersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddRoleMembersV3InternalServerError) ToJSONString() string {
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

func (o *AdminAddRoleMembersV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleMembersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
