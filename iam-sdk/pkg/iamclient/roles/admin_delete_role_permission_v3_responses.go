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

// AdminDeleteRolePermissionV3Reader is a Reader for the AdminDeleteRolePermissionV3 structure.
type AdminDeleteRolePermissionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteRolePermissionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteRolePermissionV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteRolePermissionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteRolePermissionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteRolePermissionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteRolePermissionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteRolePermissionV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteRolePermissionV3NoContent creates a AdminDeleteRolePermissionV3NoContent with default headers values
func NewAdminDeleteRolePermissionV3NoContent() *AdminDeleteRolePermissionV3NoContent {
	return &AdminDeleteRolePermissionV3NoContent{}
}

/*AdminDeleteRolePermissionV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteRolePermissionV3NoContent struct {
}

func (o *AdminDeleteRolePermissionV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3NoContent ", 204)
}

func (o *AdminDeleteRolePermissionV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteRolePermissionV3BadRequest creates a AdminDeleteRolePermissionV3BadRequest with default headers values
func NewAdminDeleteRolePermissionV3BadRequest() *AdminDeleteRolePermissionV3BadRequest {
	return &AdminDeleteRolePermissionV3BadRequest{}
}

/*AdminDeleteRolePermissionV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminDeleteRolePermissionV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionV3Unauthorized creates a AdminDeleteRolePermissionV3Unauthorized with default headers values
func NewAdminDeleteRolePermissionV3Unauthorized() *AdminDeleteRolePermissionV3Unauthorized {
	return &AdminDeleteRolePermissionV3Unauthorized{}
}

/*AdminDeleteRolePermissionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteRolePermissionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionV3Forbidden creates a AdminDeleteRolePermissionV3Forbidden with default headers values
func NewAdminDeleteRolePermissionV3Forbidden() *AdminDeleteRolePermissionV3Forbidden {
	return &AdminDeleteRolePermissionV3Forbidden{}
}

/*AdminDeleteRolePermissionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteRolePermissionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionV3NotFound creates a AdminDeleteRolePermissionV3NotFound with default headers values
func NewAdminDeleteRolePermissionV3NotFound() *AdminDeleteRolePermissionV3NotFound {
	return &AdminDeleteRolePermissionV3NotFound{}
}

/*AdminDeleteRolePermissionV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminDeleteRolePermissionV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionV3NotFound) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionV3InternalServerError creates a AdminDeleteRolePermissionV3InternalServerError with default headers values
func NewAdminDeleteRolePermissionV3InternalServerError() *AdminDeleteRolePermissionV3InternalServerError {
	return &AdminDeleteRolePermissionV3InternalServerError{}
}

/*AdminDeleteRolePermissionV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDeleteRolePermissionV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}][%d] adminDeleteRolePermissionV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionV3InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
