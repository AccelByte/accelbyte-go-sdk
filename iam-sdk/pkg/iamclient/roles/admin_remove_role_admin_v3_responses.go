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

// AdminRemoveRoleAdminV3Reader is a Reader for the AdminRemoveRoleAdminV3 structure.
type AdminRemoveRoleAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRemoveRoleAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminRemoveRoleAdminV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRemoveRoleAdminV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRemoveRoleAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRemoveRoleAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRemoveRoleAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRemoveRoleAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRemoveRoleAdminV3NoContent creates a AdminRemoveRoleAdminV3NoContent with default headers values
func NewAdminRemoveRoleAdminV3NoContent() *AdminRemoveRoleAdminV3NoContent {
	return &AdminRemoveRoleAdminV3NoContent{}
}

/*AdminRemoveRoleAdminV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminRemoveRoleAdminV3NoContent struct {
}

func (o *AdminRemoveRoleAdminV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3NoContent ", 204)
}

func (o *AdminRemoveRoleAdminV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRemoveRoleAdminV3BadRequest creates a AdminRemoveRoleAdminV3BadRequest with default headers values
func NewAdminRemoveRoleAdminV3BadRequest() *AdminRemoveRoleAdminV3BadRequest {
	return &AdminRemoveRoleAdminV3BadRequest{}
}

/*AdminRemoveRoleAdminV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminRemoveRoleAdminV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleAdminV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRemoveRoleAdminV3BadRequest) ToJSONString() string {
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

func (o *AdminRemoveRoleAdminV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleAdminV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleAdminV3Unauthorized creates a AdminRemoveRoleAdminV3Unauthorized with default headers values
func NewAdminRemoveRoleAdminV3Unauthorized() *AdminRemoveRoleAdminV3Unauthorized {
	return &AdminRemoveRoleAdminV3Unauthorized{}
}

/*AdminRemoveRoleAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRemoveRoleAdminV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRemoveRoleAdminV3Unauthorized) ToJSONString() string {
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

func (o *AdminRemoveRoleAdminV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleAdminV3Forbidden creates a AdminRemoveRoleAdminV3Forbidden with default headers values
func NewAdminRemoveRoleAdminV3Forbidden() *AdminRemoveRoleAdminV3Forbidden {
	return &AdminRemoveRoleAdminV3Forbidden{}
}

/*AdminRemoveRoleAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminRemoveRoleAdminV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRemoveRoleAdminV3Forbidden) ToJSONString() string {
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

func (o *AdminRemoveRoleAdminV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleAdminV3NotFound creates a AdminRemoveRoleAdminV3NotFound with default headers values
func NewAdminRemoveRoleAdminV3NotFound() *AdminRemoveRoleAdminV3NotFound {
	return &AdminRemoveRoleAdminV3NotFound{}
}

/*AdminRemoveRoleAdminV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminRemoveRoleAdminV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleAdminV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRemoveRoleAdminV3NotFound) ToJSONString() string {
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

func (o *AdminRemoveRoleAdminV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRemoveRoleAdminV3InternalServerError creates a AdminRemoveRoleAdminV3InternalServerError with default headers values
func NewAdminRemoveRoleAdminV3InternalServerError() *AdminRemoveRoleAdminV3InternalServerError {
	return &AdminRemoveRoleAdminV3InternalServerError{}
}

/*AdminRemoveRoleAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminRemoveRoleAdminV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveRoleAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/roles/{roleId}/admin][%d] adminRemoveRoleAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRemoveRoleAdminV3InternalServerError) ToJSONString() string {
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

func (o *AdminRemoveRoleAdminV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveRoleAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
