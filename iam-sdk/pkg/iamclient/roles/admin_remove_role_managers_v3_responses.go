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

// AdminRemoveRoleManagersV3Reader is a Reader for the AdminRemoveRoleManagersV3 structure.
type AdminRemoveRoleManagersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRemoveRoleManagersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminRemoveRoleManagersV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRemoveRoleManagersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRemoveRoleManagersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRemoveRoleManagersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRemoveRoleManagersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRemoveRoleManagersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRemoveRoleManagersV3NoContent creates a AdminRemoveRoleManagersV3NoContent with default headers values
func NewAdminRemoveRoleManagersV3NoContent() *AdminRemoveRoleManagersV3NoContent {
	return &AdminRemoveRoleManagersV3NoContent{}
}

/*AdminRemoveRoleManagersV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminRemoveRoleManagersV3NoContent struct {
}

func (o *AdminRemoveRoleManagersV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3NoContent ", 204)
}

func (o *AdminRemoveRoleManagersV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRemoveRoleManagersV3BadRequest creates a AdminRemoveRoleManagersV3BadRequest with default headers values
func NewAdminRemoveRoleManagersV3BadRequest() *AdminRemoveRoleManagersV3BadRequest {
	return &AdminRemoveRoleManagersV3BadRequest{}
}

/*AdminRemoveRoleManagersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminRemoveRoleManagersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleManagersV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRemoveRoleManagersV3BadRequest) ToJSONString() string {
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

func (o *AdminRemoveRoleManagersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleManagersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleManagersV3Unauthorized creates a AdminRemoveRoleManagersV3Unauthorized with default headers values
func NewAdminRemoveRoleManagersV3Unauthorized() *AdminRemoveRoleManagersV3Unauthorized {
	return &AdminRemoveRoleManagersV3Unauthorized{}
}

/*AdminRemoveRoleManagersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRemoveRoleManagersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleManagersV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRemoveRoleManagersV3Unauthorized) ToJSONString() string {
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

func (o *AdminRemoveRoleManagersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleManagersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleManagersV3Forbidden creates a AdminRemoveRoleManagersV3Forbidden with default headers values
func NewAdminRemoveRoleManagersV3Forbidden() *AdminRemoveRoleManagersV3Forbidden {
	return &AdminRemoveRoleManagersV3Forbidden{}
}

/*AdminRemoveRoleManagersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminRemoveRoleManagersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleManagersV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRemoveRoleManagersV3Forbidden) ToJSONString() string {
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

func (o *AdminRemoveRoleManagersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleManagersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleManagersV3NotFound creates a AdminRemoveRoleManagersV3NotFound with default headers values
func NewAdminRemoveRoleManagersV3NotFound() *AdminRemoveRoleManagersV3NotFound {
	return &AdminRemoveRoleManagersV3NotFound{}
}

/*AdminRemoveRoleManagersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminRemoveRoleManagersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleManagersV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRemoveRoleManagersV3NotFound) ToJSONString() string {
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

func (o *AdminRemoveRoleManagersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleManagersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleManagersV3InternalServerError creates a AdminRemoveRoleManagersV3InternalServerError with default headers values
func NewAdminRemoveRoleManagersV3InternalServerError() *AdminRemoveRoleManagersV3InternalServerError {
	return &AdminRemoveRoleManagersV3InternalServerError{}
}

/*AdminRemoveRoleManagersV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminRemoveRoleManagersV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleManagersV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/managers][%d] adminRemoveRoleManagersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRemoveRoleManagersV3InternalServerError) ToJSONString() string {
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

func (o *AdminRemoveRoleManagersV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleManagersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
