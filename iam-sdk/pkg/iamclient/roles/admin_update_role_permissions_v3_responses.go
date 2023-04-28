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

// AdminUpdateRolePermissionsV3Reader is a Reader for the AdminUpdateRolePermissionsV3 structure.
type AdminUpdateRolePermissionsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateRolePermissionsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateRolePermissionsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateRolePermissionsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateRolePermissionsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateRolePermissionsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateRolePermissionsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateRolePermissionsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateRolePermissionsV3NoContent creates a AdminUpdateRolePermissionsV3NoContent with default headers values
func NewAdminUpdateRolePermissionsV3NoContent() *AdminUpdateRolePermissionsV3NoContent {
	return &AdminUpdateRolePermissionsV3NoContent{}
}

/*AdminUpdateRolePermissionsV3NoContent handles this case with default header values.

  No Content
*/
type AdminUpdateRolePermissionsV3NoContent struct {
}

func (o *AdminUpdateRolePermissionsV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3NoContent ", 204)
}

func (o *AdminUpdateRolePermissionsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateRolePermissionsV3BadRequest creates a AdminUpdateRolePermissionsV3BadRequest with default headers values
func NewAdminUpdateRolePermissionsV3BadRequest() *AdminUpdateRolePermissionsV3BadRequest {
	return &AdminUpdateRolePermissionsV3BadRequest{}
}

/*AdminUpdateRolePermissionsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminUpdateRolePermissionsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV3Unauthorized creates a AdminUpdateRolePermissionsV3Unauthorized with default headers values
func NewAdminUpdateRolePermissionsV3Unauthorized() *AdminUpdateRolePermissionsV3Unauthorized {
	return &AdminUpdateRolePermissionsV3Unauthorized{}
}

/*AdminUpdateRolePermissionsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateRolePermissionsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV3Forbidden creates a AdminUpdateRolePermissionsV3Forbidden with default headers values
func NewAdminUpdateRolePermissionsV3Forbidden() *AdminUpdateRolePermissionsV3Forbidden {
	return &AdminUpdateRolePermissionsV3Forbidden{}
}

/*AdminUpdateRolePermissionsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateRolePermissionsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV3NotFound creates a AdminUpdateRolePermissionsV3NotFound with default headers values
func NewAdminUpdateRolePermissionsV3NotFound() *AdminUpdateRolePermissionsV3NotFound {
	return &AdminUpdateRolePermissionsV3NotFound{}
}

/*AdminUpdateRolePermissionsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminUpdateRolePermissionsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV3NotFound) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV3InternalServerError creates a AdminUpdateRolePermissionsV3InternalServerError with default headers values
func NewAdminUpdateRolePermissionsV3InternalServerError() *AdminUpdateRolePermissionsV3InternalServerError {
	return &AdminUpdateRolePermissionsV3InternalServerError{}
}

/*AdminUpdateRolePermissionsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateRolePermissionsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
