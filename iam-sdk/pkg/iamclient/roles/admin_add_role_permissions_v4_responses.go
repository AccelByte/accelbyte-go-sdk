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

// AdminAddRolePermissionsV4Reader is a Reader for the AdminAddRolePermissionsV4 structure.
type AdminAddRolePermissionsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddRolePermissionsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminAddRolePermissionsV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddRolePermissionsV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddRolePermissionsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddRolePermissionsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddRolePermissionsV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddRolePermissionsV4OK creates a AdminAddRolePermissionsV4OK with default headers values
func NewAdminAddRolePermissionsV4OK() *AdminAddRolePermissionsV4OK {
	return &AdminAddRolePermissionsV4OK{}
}

/*AdminAddRolePermissionsV4OK handles this case with default header values.

  OK
*/
type AdminAddRolePermissionsV4OK struct {
	Payload *iamclientmodels.ModelRoleV4Response
}

func (o *AdminAddRolePermissionsV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV4OK) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV4OK) GetPayload() *iamclientmodels.ModelRoleV4Response {
	return o.Payload
}

func (o *AdminAddRolePermissionsV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAddRolePermissionsV4BadRequest creates a AdminAddRolePermissionsV4BadRequest with default headers values
func NewAdminAddRolePermissionsV4BadRequest() *AdminAddRolePermissionsV4BadRequest {
	return &AdminAddRolePermissionsV4BadRequest{}
}

/*AdminAddRolePermissionsV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminAddRolePermissionsV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV4BadRequest) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV4Unauthorized creates a AdminAddRolePermissionsV4Unauthorized with default headers values
func NewAdminAddRolePermissionsV4Unauthorized() *AdminAddRolePermissionsV4Unauthorized {
	return &AdminAddRolePermissionsV4Unauthorized{}
}

/*AdminAddRolePermissionsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddRolePermissionsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV4Unauthorized) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV4Forbidden creates a AdminAddRolePermissionsV4Forbidden with default headers values
func NewAdminAddRolePermissionsV4Forbidden() *AdminAddRolePermissionsV4Forbidden {
	return &AdminAddRolePermissionsV4Forbidden{}
}

/*AdminAddRolePermissionsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAddRolePermissionsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV4Forbidden) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRolePermissionsV4NotFound creates a AdminAddRolePermissionsV4NotFound with default headers values
func NewAdminAddRolePermissionsV4NotFound() *AdminAddRolePermissionsV4NotFound {
	return &AdminAddRolePermissionsV4NotFound{}
}

/*AdminAddRolePermissionsV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminAddRolePermissionsV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRolePermissionsV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles/{roleId}/permissions][%d] adminAddRolePermissionsV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddRolePermissionsV4NotFound) ToJSONString() string {
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

func (o *AdminAddRolePermissionsV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRolePermissionsV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
