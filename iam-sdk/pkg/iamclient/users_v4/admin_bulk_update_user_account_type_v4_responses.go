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

// AdminBulkUpdateUserAccountTypeV4Reader is a Reader for the AdminBulkUpdateUserAccountTypeV4 structure.
type AdminBulkUpdateUserAccountTypeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUpdateUserAccountTypeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBulkUpdateUserAccountTypeV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUpdateUserAccountTypeV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkUpdateUserAccountTypeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkUpdateUserAccountTypeV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkUpdateUserAccountTypeV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkUpdateUserAccountTypeV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUpdateUserAccountTypeV4NoContent creates a AdminBulkUpdateUserAccountTypeV4NoContent with default headers values
func NewAdminBulkUpdateUserAccountTypeV4NoContent() *AdminBulkUpdateUserAccountTypeV4NoContent {
	return &AdminBulkUpdateUserAccountTypeV4NoContent{}
}

/*AdminBulkUpdateUserAccountTypeV4NoContent handles this case with default header values.

  Account type updated to test
*/
type AdminBulkUpdateUserAccountTypeV4NoContent struct {
}

func (o *AdminBulkUpdateUserAccountTypeV4NoContent) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4NoContent ", 204)
}

func (o *AdminBulkUpdateUserAccountTypeV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBulkUpdateUserAccountTypeV4BadRequest creates a AdminBulkUpdateUserAccountTypeV4BadRequest with default headers values
func NewAdminBulkUpdateUserAccountTypeV4BadRequest() *AdminBulkUpdateUserAccountTypeV4BadRequest {
	return &AdminBulkUpdateUserAccountTypeV4BadRequest{}
}

/*AdminBulkUpdateUserAccountTypeV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminBulkUpdateUserAccountTypeV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUserAccountTypeV4BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUpdateUserAccountTypeV4BadRequest) ToJSONString() string {
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

func (o *AdminBulkUpdateUserAccountTypeV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUserAccountTypeV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateUserAccountTypeV4Unauthorized creates a AdminBulkUpdateUserAccountTypeV4Unauthorized with default headers values
func NewAdminBulkUpdateUserAccountTypeV4Unauthorized() *AdminBulkUpdateUserAccountTypeV4Unauthorized {
	return &AdminBulkUpdateUserAccountTypeV4Unauthorized{}
}

/*AdminBulkUpdateUserAccountTypeV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkUpdateUserAccountTypeV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUserAccountTypeV4Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkUpdateUserAccountTypeV4Unauthorized) ToJSONString() string {
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

func (o *AdminBulkUpdateUserAccountTypeV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUserAccountTypeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateUserAccountTypeV4Forbidden creates a AdminBulkUpdateUserAccountTypeV4Forbidden with default headers values
func NewAdminBulkUpdateUserAccountTypeV4Forbidden() *AdminBulkUpdateUserAccountTypeV4Forbidden {
	return &AdminBulkUpdateUserAccountTypeV4Forbidden{}
}

/*AdminBulkUpdateUserAccountTypeV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBulkUpdateUserAccountTypeV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUserAccountTypeV4Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkUpdateUserAccountTypeV4Forbidden) ToJSONString() string {
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

func (o *AdminBulkUpdateUserAccountTypeV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUserAccountTypeV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateUserAccountTypeV4NotFound creates a AdminBulkUpdateUserAccountTypeV4NotFound with default headers values
func NewAdminBulkUpdateUserAccountTypeV4NotFound() *AdminBulkUpdateUserAccountTypeV4NotFound {
	return &AdminBulkUpdateUserAccountTypeV4NotFound{}
}

/*AdminBulkUpdateUserAccountTypeV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminBulkUpdateUserAccountTypeV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUserAccountTypeV4NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkUpdateUserAccountTypeV4NotFound) ToJSONString() string {
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

func (o *AdminBulkUpdateUserAccountTypeV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUserAccountTypeV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateUserAccountTypeV4InternalServerError creates a AdminBulkUpdateUserAccountTypeV4InternalServerError with default headers values
func NewAdminBulkUpdateUserAccountTypeV4InternalServerError() *AdminBulkUpdateUserAccountTypeV4InternalServerError {
	return &AdminBulkUpdateUserAccountTypeV4InternalServerError{}
}

/*AdminBulkUpdateUserAccountTypeV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBulkUpdateUserAccountTypeV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUserAccountTypeV4InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/admin/namespaces/{namespace}/users/bulk/accountType][%d] adminBulkUpdateUserAccountTypeV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkUpdateUserAccountTypeV4InternalServerError) ToJSONString() string {
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

func (o *AdminBulkUpdateUserAccountTypeV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUserAccountTypeV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
