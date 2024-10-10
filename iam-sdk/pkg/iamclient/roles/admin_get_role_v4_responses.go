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

// AdminGetRoleV4Reader is a Reader for the AdminGetRoleV4 structure.
type AdminGetRoleV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRoleV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleV4OK creates a AdminGetRoleV4OK with default headers values
func NewAdminGetRoleV4OK() *AdminGetRoleV4OK {
	return &AdminGetRoleV4OK{}
}

/*AdminGetRoleV4OK handles this case with default header values.

  OK
*/
type AdminGetRoleV4OK struct {
	Payload *iamclientmodels.ModelRoleV4Response
}

func (o *AdminGetRoleV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleV4OK) ToJSONString() string {
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

func (o *AdminGetRoleV4OK) GetPayload() *iamclientmodels.ModelRoleV4Response {
	return o.Payload
}

func (o *AdminGetRoleV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV4BadRequest creates a AdminGetRoleV4BadRequest with default headers values
func NewAdminGetRoleV4BadRequest() *AdminGetRoleV4BadRequest {
	return &AdminGetRoleV4BadRequest{}
}

/*AdminGetRoleV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetRoleV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRoleV4BadRequest) ToJSONString() string {
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

func (o *AdminGetRoleV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV4Unauthorized creates a AdminGetRoleV4Unauthorized with default headers values
func NewAdminGetRoleV4Unauthorized() *AdminGetRoleV4Unauthorized {
	return &AdminGetRoleV4Unauthorized{}
}

/*AdminGetRoleV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV4Forbidden creates a AdminGetRoleV4Forbidden with default headers values
func NewAdminGetRoleV4Forbidden() *AdminGetRoleV4Forbidden {
	return &AdminGetRoleV4Forbidden{}
}

/*AdminGetRoleV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleV4Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV4NotFound creates a AdminGetRoleV4NotFound with default headers values
func NewAdminGetRoleV4NotFound() *AdminGetRoleV4NotFound {
	return &AdminGetRoleV4NotFound{}
}

/*AdminGetRoleV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleV4NotFound) ToJSONString() string {
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

func (o *AdminGetRoleV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleV4InternalServerError creates a AdminGetRoleV4InternalServerError with default headers values
func NewAdminGetRoleV4InternalServerError() *AdminGetRoleV4InternalServerError {
	return &AdminGetRoleV4InternalServerError{}
}

/*AdminGetRoleV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}][%d] adminGetRoleV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
