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

// AdminGetRoleV3Reader is a Reader for the AdminGetRoleV3 structure.
type AdminGetRoleV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRoleV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleV3OK creates a AdminGetRoleV3OK with default headers values
func NewAdminGetRoleV3OK() *AdminGetRoleV3OK {
	return &AdminGetRoleV3OK{}
}

/*AdminGetRoleV3OK handles this case with default header values.

  OK
*/
type AdminGetRoleV3OK struct {
	Payload *iamclientmodels.ModelRoleResponseV3
}

func (o *AdminGetRoleV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleV3OK) ToJSONString() string {
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

func (o *AdminGetRoleV3OK) GetPayload() *iamclientmodels.ModelRoleResponseV3 {
	return o.Payload
}

func (o *AdminGetRoleV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRoleV3BadRequest creates a AdminGetRoleV3BadRequest with default headers values
func NewAdminGetRoleV3BadRequest() *AdminGetRoleV3BadRequest {
	return &AdminGetRoleV3BadRequest{}
}

/*AdminGetRoleV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetRoleV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRoleV3BadRequest) ToJSONString() string {
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

func (o *AdminGetRoleV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV3Unauthorized creates a AdminGetRoleV3Unauthorized with default headers values
func NewAdminGetRoleV3Unauthorized() *AdminGetRoleV3Unauthorized {
	return &AdminGetRoleV3Unauthorized{}
}

/*AdminGetRoleV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV3Forbidden creates a AdminGetRoleV3Forbidden with default headers values
func NewAdminGetRoleV3Forbidden() *AdminGetRoleV3Forbidden {
	return &AdminGetRoleV3Forbidden{}
}

/*AdminGetRoleV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleV3Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV3NotFound creates a AdminGetRoleV3NotFound with default headers values
func NewAdminGetRoleV3NotFound() *AdminGetRoleV3NotFound {
	return &AdminGetRoleV3NotFound{}
}

/*AdminGetRoleV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleV3NotFound) ToJSONString() string {
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

func (o *AdminGetRoleV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV3InternalServerError creates a AdminGetRoleV3InternalServerError with default headers values
func NewAdminGetRoleV3InternalServerError() *AdminGetRoleV3InternalServerError {
	return &AdminGetRoleV3InternalServerError{}
}

/*AdminGetRoleV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}][%d] adminGetRoleV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
