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

// AdminDeleteRolePermissionsV3Reader is a Reader for the AdminDeleteRolePermissionsV3 structure.
type AdminDeleteRolePermissionsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteRolePermissionsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteRolePermissionsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteRolePermissionsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteRolePermissionsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteRolePermissionsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteRolePermissionsV3NoContent creates a AdminDeleteRolePermissionsV3NoContent with default headers values
func NewAdminDeleteRolePermissionsV3NoContent() *AdminDeleteRolePermissionsV3NoContent {
	return &AdminDeleteRolePermissionsV3NoContent{}
}

/*AdminDeleteRolePermissionsV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteRolePermissionsV3NoContent struct {
}

func (o *AdminDeleteRolePermissionsV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV3NoContent ", 204)
}

func (o *AdminDeleteRolePermissionsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteRolePermissionsV3Unauthorized creates a AdminDeleteRolePermissionsV3Unauthorized with default headers values
func NewAdminDeleteRolePermissionsV3Unauthorized() *AdminDeleteRolePermissionsV3Unauthorized {
	return &AdminDeleteRolePermissionsV3Unauthorized{}
}

/*AdminDeleteRolePermissionsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteRolePermissionsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionsV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionsV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionsV3Forbidden creates a AdminDeleteRolePermissionsV3Forbidden with default headers values
func NewAdminDeleteRolePermissionsV3Forbidden() *AdminDeleteRolePermissionsV3Forbidden {
	return &AdminDeleteRolePermissionsV3Forbidden{}
}

/*AdminDeleteRolePermissionsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteRolePermissionsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionsV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionsV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionsV3NotFound creates a AdminDeleteRolePermissionsV3NotFound with default headers values
func NewAdminDeleteRolePermissionsV3NotFound() *AdminDeleteRolePermissionsV3NotFound {
	return &AdminDeleteRolePermissionsV3NotFound{}
}

/*AdminDeleteRolePermissionsV3NotFound handles this case with default header values.

  Data not found
*/
type AdminDeleteRolePermissionsV3NotFound struct {
}

func (o *AdminDeleteRolePermissionsV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV3NotFound ", 404)
}

func (o *AdminDeleteRolePermissionsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
