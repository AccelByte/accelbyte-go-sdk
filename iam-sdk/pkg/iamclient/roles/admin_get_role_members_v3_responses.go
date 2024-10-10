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

// AdminGetRoleMembersV3Reader is a Reader for the AdminGetRoleMembersV3 structure.
type AdminGetRoleMembersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleMembersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleMembersV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRoleMembersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleMembersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleMembersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleMembersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleMembersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleMembersV3OK creates a AdminGetRoleMembersV3OK with default headers values
func NewAdminGetRoleMembersV3OK() *AdminGetRoleMembersV3OK {
	return &AdminGetRoleMembersV3OK{}
}

/*AdminGetRoleMembersV3OK handles this case with default header values.

  OK
*/
type AdminGetRoleMembersV3OK struct {
	Payload *iamclientmodels.ModelRoleMembersResponseV3
}

func (o *AdminGetRoleMembersV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3OK) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3OK) GetPayload() *iamclientmodels.ModelRoleMembersResponseV3 {
	return o.Payload
}

func (o *AdminGetRoleMembersV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleMembersResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRoleMembersV3BadRequest creates a AdminGetRoleMembersV3BadRequest with default headers values
func NewAdminGetRoleMembersV3BadRequest() *AdminGetRoleMembersV3BadRequest {
	return &AdminGetRoleMembersV3BadRequest{}
}

/*AdminGetRoleMembersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetRoleMembersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleMembersV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3BadRequest) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleMembersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleMembersV3Unauthorized creates a AdminGetRoleMembersV3Unauthorized with default headers values
func NewAdminGetRoleMembersV3Unauthorized() *AdminGetRoleMembersV3Unauthorized {
	return &AdminGetRoleMembersV3Unauthorized{}
}

/*AdminGetRoleMembersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleMembersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleMembersV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleMembersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleMembersV3Forbidden creates a AdminGetRoleMembersV3Forbidden with default headers values
func NewAdminGetRoleMembersV3Forbidden() *AdminGetRoleMembersV3Forbidden {
	return &AdminGetRoleMembersV3Forbidden{}
}

/*AdminGetRoleMembersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleMembersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleMembersV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleMembersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleMembersV3NotFound creates a AdminGetRoleMembersV3NotFound with default headers values
func NewAdminGetRoleMembersV3NotFound() *AdminGetRoleMembersV3NotFound {
	return &AdminGetRoleMembersV3NotFound{}
}

/*AdminGetRoleMembersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleMembersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleMembersV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3NotFound) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleMembersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleMembersV3InternalServerError creates a AdminGetRoleMembersV3InternalServerError with default headers values
func NewAdminGetRoleMembersV3InternalServerError() *AdminGetRoleMembersV3InternalServerError {
	return &AdminGetRoleMembersV3InternalServerError{}
}

/*AdminGetRoleMembersV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleMembersV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleMembersV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/members][%d] adminGetRoleMembersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleMembersV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleMembersV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleMembersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
