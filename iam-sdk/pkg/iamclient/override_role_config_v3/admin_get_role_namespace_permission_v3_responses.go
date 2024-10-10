// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package override_role_config_v3

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

// AdminGetRoleNamespacePermissionV3Reader is a Reader for the AdminGetRoleNamespacePermissionV3 structure.
type AdminGetRoleNamespacePermissionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleNamespacePermissionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleNamespacePermissionV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleNamespacePermissionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleNamespacePermissionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleNamespacePermissionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleNamespacePermissionV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleNamespacePermissionV3OK creates a AdminGetRoleNamespacePermissionV3OK with default headers values
func NewAdminGetRoleNamespacePermissionV3OK() *AdminGetRoleNamespacePermissionV3OK {
	return &AdminGetRoleNamespacePermissionV3OK{}
}

/*AdminGetRoleNamespacePermissionV3OK handles this case with default header values.

  OK
*/
type AdminGetRoleNamespacePermissionV3OK struct {
	Payload *iamclientmodels.ModelRolePermissionResponseV3
}

func (o *AdminGetRoleNamespacePermissionV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions][%d] adminGetRoleNamespacePermissionV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleNamespacePermissionV3OK) ToJSONString() string {
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

func (o *AdminGetRoleNamespacePermissionV3OK) GetPayload() *iamclientmodels.ModelRolePermissionResponseV3 {
	return o.Payload
}

func (o *AdminGetRoleNamespacePermissionV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRolePermissionResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRoleNamespacePermissionV3Unauthorized creates a AdminGetRoleNamespacePermissionV3Unauthorized with default headers values
func NewAdminGetRoleNamespacePermissionV3Unauthorized() *AdminGetRoleNamespacePermissionV3Unauthorized {
	return &AdminGetRoleNamespacePermissionV3Unauthorized{}
}

/*AdminGetRoleNamespacePermissionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleNamespacePermissionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleNamespacePermissionV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions][%d] adminGetRoleNamespacePermissionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleNamespacePermissionV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleNamespacePermissionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleNamespacePermissionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleNamespacePermissionV3Forbidden creates a AdminGetRoleNamespacePermissionV3Forbidden with default headers values
func NewAdminGetRoleNamespacePermissionV3Forbidden() *AdminGetRoleNamespacePermissionV3Forbidden {
	return &AdminGetRoleNamespacePermissionV3Forbidden{}
}

/*AdminGetRoleNamespacePermissionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleNamespacePermissionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleNamespacePermissionV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions][%d] adminGetRoleNamespacePermissionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleNamespacePermissionV3Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleNamespacePermissionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleNamespacePermissionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleNamespacePermissionV3NotFound creates a AdminGetRoleNamespacePermissionV3NotFound with default headers values
func NewAdminGetRoleNamespacePermissionV3NotFound() *AdminGetRoleNamespacePermissionV3NotFound {
	return &AdminGetRoleNamespacePermissionV3NotFound{}
}

/*AdminGetRoleNamespacePermissionV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleNamespacePermissionV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleNamespacePermissionV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions][%d] adminGetRoleNamespacePermissionV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleNamespacePermissionV3NotFound) ToJSONString() string {
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

func (o *AdminGetRoleNamespacePermissionV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleNamespacePermissionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleNamespacePermissionV3InternalServerError creates a AdminGetRoleNamespacePermissionV3InternalServerError with default headers values
func NewAdminGetRoleNamespacePermissionV3InternalServerError() *AdminGetRoleNamespacePermissionV3InternalServerError {
	return &AdminGetRoleNamespacePermissionV3InternalServerError{}
}

/*AdminGetRoleNamespacePermissionV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleNamespacePermissionV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleNamespacePermissionV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions][%d] adminGetRoleNamespacePermissionV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleNamespacePermissionV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleNamespacePermissionV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleNamespacePermissionV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
