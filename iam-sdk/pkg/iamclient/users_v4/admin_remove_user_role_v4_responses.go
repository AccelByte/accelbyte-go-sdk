// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// AdminRemoveUserRoleV4Reader is a Reader for the AdminRemoveUserRoleV4 structure.
type AdminRemoveUserRoleV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRemoveUserRoleV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminRemoveUserRoleV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRemoveUserRoleV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRemoveUserRoleV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRemoveUserRoleV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRemoveUserRoleV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminRemoveUserRoleV4UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRemoveUserRoleV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRemoveUserRoleV4NoContent creates a AdminRemoveUserRoleV4NoContent with default headers values
func NewAdminRemoveUserRoleV4NoContent() *AdminRemoveUserRoleV4NoContent {
	return &AdminRemoveUserRoleV4NoContent{}
}

/*AdminRemoveUserRoleV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminRemoveUserRoleV4NoContent struct {
}

func (o *AdminRemoveUserRoleV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4NoContent ", 204)
}

func (o *AdminRemoveUserRoleV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRemoveUserRoleV4BadRequest creates a AdminRemoveUserRoleV4BadRequest with default headers values
func NewAdminRemoveUserRoleV4BadRequest() *AdminRemoveUserRoleV4BadRequest {
	return &AdminRemoveUserRoleV4BadRequest{}
}

/*AdminRemoveUserRoleV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminRemoveUserRoleV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4BadRequest) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveUserRoleV4Unauthorized creates a AdminRemoveUserRoleV4Unauthorized with default headers values
func NewAdminRemoveUserRoleV4Unauthorized() *AdminRemoveUserRoleV4Unauthorized {
	return &AdminRemoveUserRoleV4Unauthorized{}
}

/*AdminRemoveUserRoleV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRemoveUserRoleV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4Unauthorized) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveUserRoleV4Forbidden creates a AdminRemoveUserRoleV4Forbidden with default headers values
func NewAdminRemoveUserRoleV4Forbidden() *AdminRemoveUserRoleV4Forbidden {
	return &AdminRemoveUserRoleV4Forbidden{}
}

/*AdminRemoveUserRoleV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminRemoveUserRoleV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4Forbidden) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveUserRoleV4NotFound creates a AdminRemoveUserRoleV4NotFound with default headers values
func NewAdminRemoveUserRoleV4NotFound() *AdminRemoveUserRoleV4NotFound {
	return &AdminRemoveUserRoleV4NotFound{}
}

/*AdminRemoveUserRoleV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminRemoveUserRoleV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4NotFound) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveUserRoleV4UnprocessableEntity creates a AdminRemoveUserRoleV4UnprocessableEntity with default headers values
func NewAdminRemoveUserRoleV4UnprocessableEntity() *AdminRemoveUserRoleV4UnprocessableEntity {
	return &AdminRemoveUserRoleV4UnprocessableEntity{}
}

/*AdminRemoveUserRoleV4UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10183</td><td>unprocessable entity</td></tr></table>
*/
type AdminRemoveUserRoleV4UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4UnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4UnprocessableEntity) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRemoveUserRoleV4InternalServerError creates a AdminRemoveUserRoleV4InternalServerError with default headers values
func NewAdminRemoveUserRoleV4InternalServerError() *AdminRemoveUserRoleV4InternalServerError {
	return &AdminRemoveUserRoleV4InternalServerError{}
}

/*AdminRemoveUserRoleV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminRemoveUserRoleV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminRemoveUserRoleV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminRemoveUserRoleV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRemoveUserRoleV4InternalServerError) ToJSONString() string {
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

func (o *AdminRemoveUserRoleV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminRemoveUserRoleV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
