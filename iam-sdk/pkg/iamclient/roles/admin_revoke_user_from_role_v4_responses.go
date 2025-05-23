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

// AdminRevokeUserFromRoleV4Reader is a Reader for the AdminRevokeUserFromRoleV4 structure.
type AdminRevokeUserFromRoleV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRevokeUserFromRoleV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminRevokeUserFromRoleV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRevokeUserFromRoleV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRevokeUserFromRoleV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRevokeUserFromRoleV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRevokeUserFromRoleV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/admin/roles/{roleId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRevokeUserFromRoleV4NoContent creates a AdminRevokeUserFromRoleV4NoContent with default headers values
func NewAdminRevokeUserFromRoleV4NoContent() *AdminRevokeUserFromRoleV4NoContent {
	return &AdminRevokeUserFromRoleV4NoContent{}
}

/*AdminRevokeUserFromRoleV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminRevokeUserFromRoleV4NoContent struct {
}

func (o *AdminRevokeUserFromRoleV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/users][%d] adminRevokeUserFromRoleV4NoContent ", 204)
}

func (o *AdminRevokeUserFromRoleV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRevokeUserFromRoleV4BadRequest creates a AdminRevokeUserFromRoleV4BadRequest with default headers values
func NewAdminRevokeUserFromRoleV4BadRequest() *AdminRevokeUserFromRoleV4BadRequest {
	return &AdminRevokeUserFromRoleV4BadRequest{}
}

/*AdminRevokeUserFromRoleV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10457</td><td>specified role is not admin role</td></tr></table>
*/
type AdminRevokeUserFromRoleV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRevokeUserFromRoleV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/users][%d] adminRevokeUserFromRoleV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRevokeUserFromRoleV4BadRequest) ToJSONString() string {
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

func (o *AdminRevokeUserFromRoleV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRevokeUserFromRoleV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRevokeUserFromRoleV4Unauthorized creates a AdminRevokeUserFromRoleV4Unauthorized with default headers values
func NewAdminRevokeUserFromRoleV4Unauthorized() *AdminRevokeUserFromRoleV4Unauthorized {
	return &AdminRevokeUserFromRoleV4Unauthorized{}
}

/*AdminRevokeUserFromRoleV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRevokeUserFromRoleV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRevokeUserFromRoleV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/users][%d] adminRevokeUserFromRoleV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRevokeUserFromRoleV4Unauthorized) ToJSONString() string {
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

func (o *AdminRevokeUserFromRoleV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRevokeUserFromRoleV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRevokeUserFromRoleV4Forbidden creates a AdminRevokeUserFromRoleV4Forbidden with default headers values
func NewAdminRevokeUserFromRoleV4Forbidden() *AdminRevokeUserFromRoleV4Forbidden {
	return &AdminRevokeUserFromRoleV4Forbidden{}
}

/*AdminRevokeUserFromRoleV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10459</td><td>operator is not a role manager</td></tr></table>
*/
type AdminRevokeUserFromRoleV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRevokeUserFromRoleV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/users][%d] adminRevokeUserFromRoleV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRevokeUserFromRoleV4Forbidden) ToJSONString() string {
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

func (o *AdminRevokeUserFromRoleV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRevokeUserFromRoleV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRevokeUserFromRoleV4NotFound creates a AdminRevokeUserFromRoleV4NotFound with default headers values
func NewAdminRevokeUserFromRoleV4NotFound() *AdminRevokeUserFromRoleV4NotFound {
	return &AdminRevokeUserFromRoleV4NotFound{}
}

/*AdminRevokeUserFromRoleV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminRevokeUserFromRoleV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRevokeUserFromRoleV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/users][%d] adminRevokeUserFromRoleV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRevokeUserFromRoleV4NotFound) ToJSONString() string {
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

func (o *AdminRevokeUserFromRoleV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRevokeUserFromRoleV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
