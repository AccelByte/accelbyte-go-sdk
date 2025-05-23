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

// AdminAddRolePermissionsV3Reader is a Reader for the AdminAddRolePermissionsV3 structure.
type AdminAddRolePermissionsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddRolePermissionsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddRolePermissionsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddRolePermissionsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddRolePermissionsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddRolePermissionsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddRolePermissionsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddRolePermissionsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddRolePermissionsV3NoContent creates a AdminAddRolePermissionsV3NoContent with default headers values
func NewAdminAddRolePermissionsV3NoContent() *AdminAddRolePermissionsV3NoContent {
	return &AdminAddRolePermissionsV3NoContent{}
}

/*AdminAddRolePermissionsV3NoContent handles this case with default header values.

  No Content
*/
type AdminAddRolePermissionsV3NoContent struct {
}

func (o *AdminAddRolePermissionsV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3NoContent ", 204)
}

func (o *AdminAddRolePermissionsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddRolePermissionsV3BadRequest creates a AdminAddRolePermissionsV3BadRequest with default headers values
func NewAdminAddRolePermissionsV3BadRequest() *AdminAddRolePermissionsV3BadRequest {
	return &AdminAddRolePermissionsV3BadRequest{}
}

/*AdminAddRolePermissionsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminAddRolePermissionsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV3BadRequest) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV3Unauthorized creates a AdminAddRolePermissionsV3Unauthorized with default headers values
func NewAdminAddRolePermissionsV3Unauthorized() *AdminAddRolePermissionsV3Unauthorized {
	return &AdminAddRolePermissionsV3Unauthorized{}
}

/*AdminAddRolePermissionsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddRolePermissionsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV3Forbidden creates a AdminAddRolePermissionsV3Forbidden with default headers values
func NewAdminAddRolePermissionsV3Forbidden() *AdminAddRolePermissionsV3Forbidden {
	return &AdminAddRolePermissionsV3Forbidden{}
}

/*AdminAddRolePermissionsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAddRolePermissionsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV3Forbidden) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV3NotFound creates a AdminAddRolePermissionsV3NotFound with default headers values
func NewAdminAddRolePermissionsV3NotFound() *AdminAddRolePermissionsV3NotFound {
	return &AdminAddRolePermissionsV3NotFound{}
}

/*AdminAddRolePermissionsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminAddRolePermissionsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV3NotFound) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV3InternalServerError creates a AdminAddRolePermissionsV3InternalServerError with default headers values
func NewAdminAddRolePermissionsV3InternalServerError() *AdminAddRolePermissionsV3InternalServerError {
	return &AdminAddRolePermissionsV3InternalServerError{}
}

/*AdminAddRolePermissionsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminAddRolePermissionsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV3InternalServerError) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
