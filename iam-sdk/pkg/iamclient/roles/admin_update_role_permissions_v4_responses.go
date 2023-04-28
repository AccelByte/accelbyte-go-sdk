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

// AdminUpdateRolePermissionsV4Reader is a Reader for the AdminUpdateRolePermissionsV4 structure.
type AdminUpdateRolePermissionsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateRolePermissionsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateRolePermissionsV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateRolePermissionsV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateRolePermissionsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateRolePermissionsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateRolePermissionsV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateRolePermissionsV4OK creates a AdminUpdateRolePermissionsV4OK with default headers values
func NewAdminUpdateRolePermissionsV4OK() *AdminUpdateRolePermissionsV4OK {
	return &AdminUpdateRolePermissionsV4OK{}
}

/*AdminUpdateRolePermissionsV4OK handles this case with default header values.

  OK
*/
type AdminUpdateRolePermissionsV4OK struct {
	Payload *iamclientmodels.ModelRoleV4Response
}

func (o *AdminUpdateRolePermissionsV4OK) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV4OK) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV4OK) GetPayload() *iamclientmodels.ModelRoleV4Response {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV4BadRequest creates a AdminUpdateRolePermissionsV4BadRequest with default headers values
func NewAdminUpdateRolePermissionsV4BadRequest() *AdminUpdateRolePermissionsV4BadRequest {
	return &AdminUpdateRolePermissionsV4BadRequest{}
}

/*AdminUpdateRolePermissionsV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminUpdateRolePermissionsV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV4BadRequest) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV4Unauthorized creates a AdminUpdateRolePermissionsV4Unauthorized with default headers values
func NewAdminUpdateRolePermissionsV4Unauthorized() *AdminUpdateRolePermissionsV4Unauthorized {
	return &AdminUpdateRolePermissionsV4Unauthorized{}
}

/*AdminUpdateRolePermissionsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateRolePermissionsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV4Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV4Forbidden creates a AdminUpdateRolePermissionsV4Forbidden with default headers values
func NewAdminUpdateRolePermissionsV4Forbidden() *AdminUpdateRolePermissionsV4Forbidden {
	return &AdminUpdateRolePermissionsV4Forbidden{}
}

/*AdminUpdateRolePermissionsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateRolePermissionsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV4Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV4Forbidden) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRolePermissionsV4NotFound creates a AdminUpdateRolePermissionsV4NotFound with default headers values
func NewAdminUpdateRolePermissionsV4NotFound() *AdminUpdateRolePermissionsV4NotFound {
	return &AdminUpdateRolePermissionsV4NotFound{}
}

/*AdminUpdateRolePermissionsV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminUpdateRolePermissionsV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRolePermissionsV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/roles/{roleId}/permissions][%d] adminUpdateRolePermissionsV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateRolePermissionsV4NotFound) ToJSONString() string {
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

func (o *AdminUpdateRolePermissionsV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRolePermissionsV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
