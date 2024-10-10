// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// AdminSaveUserRoleV3Reader is a Reader for the AdminSaveUserRoleV3 structure.
type AdminSaveUserRoleV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSaveUserRoleV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSaveUserRoleV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSaveUserRoleV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSaveUserRoleV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSaveUserRoleV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSaveUserRoleV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminSaveUserRoleV3UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSaveUserRoleV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSaveUserRoleV3NoContent creates a AdminSaveUserRoleV3NoContent with default headers values
func NewAdminSaveUserRoleV3NoContent() *AdminSaveUserRoleV3NoContent {
	return &AdminSaveUserRoleV3NoContent{}
}

/*AdminSaveUserRoleV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminSaveUserRoleV3NoContent struct {
}

func (o *AdminSaveUserRoleV3NoContent) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3NoContent ", 204)
}

func (o *AdminSaveUserRoleV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSaveUserRoleV3BadRequest creates a AdminSaveUserRoleV3BadRequest with default headers values
func NewAdminSaveUserRoleV3BadRequest() *AdminSaveUserRoleV3BadRequest {
	return &AdminSaveUserRoleV3BadRequest{}
}

/*AdminSaveUserRoleV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminSaveUserRoleV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3BadRequest) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveUserRoleV3Unauthorized creates a AdminSaveUserRoleV3Unauthorized with default headers values
func NewAdminSaveUserRoleV3Unauthorized() *AdminSaveUserRoleV3Unauthorized {
	return &AdminSaveUserRoleV3Unauthorized{}
}

/*AdminSaveUserRoleV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminSaveUserRoleV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3Unauthorized) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveUserRoleV3Forbidden creates a AdminSaveUserRoleV3Forbidden with default headers values
func NewAdminSaveUserRoleV3Forbidden() *AdminSaveUserRoleV3Forbidden {
	return &AdminSaveUserRoleV3Forbidden{}
}

/*AdminSaveUserRoleV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminSaveUserRoleV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3Forbidden) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveUserRoleV3NotFound creates a AdminSaveUserRoleV3NotFound with default headers values
func NewAdminSaveUserRoleV3NotFound() *AdminSaveUserRoleV3NotFound {
	return &AdminSaveUserRoleV3NotFound{}
}

/*AdminSaveUserRoleV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10156</td><td>role not found</td></tr></table>
*/
type AdminSaveUserRoleV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3NotFound) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveUserRoleV3UnprocessableEntity creates a AdminSaveUserRoleV3UnprocessableEntity with default headers values
func NewAdminSaveUserRoleV3UnprocessableEntity() *AdminSaveUserRoleV3UnprocessableEntity {
	return &AdminSaveUserRoleV3UnprocessableEntity{}
}

/*AdminSaveUserRoleV3UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>422</td><td>request is unprocessable</td></tr></table>
*/
type AdminSaveUserRoleV3UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3UnprocessableEntity) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSaveUserRoleV3InternalServerError creates a AdminSaveUserRoleV3InternalServerError with default headers values
func NewAdminSaveUserRoleV3InternalServerError() *AdminSaveUserRoleV3InternalServerError {
	return &AdminSaveUserRoleV3InternalServerError{}
}

/*AdminSaveUserRoleV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminSaveUserRoleV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSaveUserRoleV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminSaveUserRoleV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSaveUserRoleV3InternalServerError) ToJSONString() string {
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

func (o *AdminSaveUserRoleV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSaveUserRoleV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
