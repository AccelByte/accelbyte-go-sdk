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

// AdminRemoveRoleMembersV3Reader is a Reader for the AdminRemoveRoleMembersV3 structure.
type AdminRemoveRoleMembersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRemoveRoleMembersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminRemoveRoleMembersV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRemoveRoleMembersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRemoveRoleMembersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRemoveRoleMembersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRemoveRoleMembersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRemoveRoleMembersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRemoveRoleMembersV3NoContent creates a AdminRemoveRoleMembersV3NoContent with default headers values
func NewAdminRemoveRoleMembersV3NoContent() *AdminRemoveRoleMembersV3NoContent {
	return &AdminRemoveRoleMembersV3NoContent{}
}

/*AdminRemoveRoleMembersV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminRemoveRoleMembersV3NoContent struct {
}

func (o *AdminRemoveRoleMembersV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3NoContent ", 204)
}

func (o *AdminRemoveRoleMembersV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRemoveRoleMembersV3BadRequest creates a AdminRemoveRoleMembersV3BadRequest with default headers values
func NewAdminRemoveRoleMembersV3BadRequest() *AdminRemoveRoleMembersV3BadRequest {
	return &AdminRemoveRoleMembersV3BadRequest{}
}

/*AdminRemoveRoleMembersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10457</td><td>specified role is not admin role</td></tr></table>
*/
type AdminRemoveRoleMembersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleMembersV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRemoveRoleMembersV3BadRequest) ToJSONString() string {
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

func (o *AdminRemoveRoleMembersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleMembersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveRoleMembersV3Unauthorized creates a AdminRemoveRoleMembersV3Unauthorized with default headers values
func NewAdminRemoveRoleMembersV3Unauthorized() *AdminRemoveRoleMembersV3Unauthorized {
	return &AdminRemoveRoleMembersV3Unauthorized{}
}

/*AdminRemoveRoleMembersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRemoveRoleMembersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleMembersV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRemoveRoleMembersV3Unauthorized) ToJSONString() string {
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

func (o *AdminRemoveRoleMembersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleMembersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveRoleMembersV3Forbidden creates a AdminRemoveRoleMembersV3Forbidden with default headers values
func NewAdminRemoveRoleMembersV3Forbidden() *AdminRemoveRoleMembersV3Forbidden {
	return &AdminRemoveRoleMembersV3Forbidden{}
}

/*AdminRemoveRoleMembersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10459</td><td>operator is not a role manager</td></tr></table>
*/
type AdminRemoveRoleMembersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleMembersV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRemoveRoleMembersV3Forbidden) ToJSONString() string {
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

func (o *AdminRemoveRoleMembersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleMembersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveRoleMembersV3NotFound creates a AdminRemoveRoleMembersV3NotFound with default headers values
func NewAdminRemoveRoleMembersV3NotFound() *AdminRemoveRoleMembersV3NotFound {
	return &AdminRemoveRoleMembersV3NotFound{}
}

/*AdminRemoveRoleMembersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminRemoveRoleMembersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleMembersV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRemoveRoleMembersV3NotFound) ToJSONString() string {
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

func (o *AdminRemoveRoleMembersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleMembersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveRoleMembersV3InternalServerError creates a AdminRemoveRoleMembersV3InternalServerError with default headers values
func NewAdminRemoveRoleMembersV3InternalServerError() *AdminRemoveRoleMembersV3InternalServerError {
	return &AdminRemoveRoleMembersV3InternalServerError{}
}

/*AdminRemoveRoleMembersV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminRemoveRoleMembersV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleMembersV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/members][%d] adminRemoveRoleMembersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRemoveRoleMembersV3InternalServerError) ToJSONString() string {
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

func (o *AdminRemoveRoleMembersV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleMembersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
