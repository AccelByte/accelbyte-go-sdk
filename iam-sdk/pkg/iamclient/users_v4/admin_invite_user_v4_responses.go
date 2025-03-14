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

// AdminInviteUserV4Reader is a Reader for the AdminInviteUserV4 structure.
type AdminInviteUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminInviteUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminInviteUserV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminInviteUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminInviteUserV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminInviteUserV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminInviteUserV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminInviteUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminInviteUserV4UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminInviteUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/users/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminInviteUserV4Created creates a AdminInviteUserV4Created with default headers values
func NewAdminInviteUserV4Created() *AdminInviteUserV4Created {
	return &AdminInviteUserV4Created{}
}

/*AdminInviteUserV4Created handles this case with default header values.

  Created
*/
type AdminInviteUserV4Created struct {
	Payload *iamclientmodels.ModelInviteUserResponseV3
}

func (o *AdminInviteUserV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminInviteUserV4Created) ToJSONString() string {
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

func (o *AdminInviteUserV4Created) GetPayload() *iamclientmodels.ModelInviteUserResponseV3 {
	return o.Payload
}

func (o *AdminInviteUserV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInviteUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminInviteUserV4BadRequest creates a AdminInviteUserV4BadRequest with default headers values
func NewAdminInviteUserV4BadRequest() *AdminInviteUserV4BadRequest {
	return &AdminInviteUserV4BadRequest{}
}

/*AdminInviteUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminInviteUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminInviteUserV4BadRequest) ToJSONString() string {
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

func (o *AdminInviteUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4Unauthorized creates a AdminInviteUserV4Unauthorized with default headers values
func NewAdminInviteUserV4Unauthorized() *AdminInviteUserV4Unauthorized {
	return &AdminInviteUserV4Unauthorized{}
}

/*AdminInviteUserV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminInviteUserV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminInviteUserV4Unauthorized) ToJSONString() string {
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

func (o *AdminInviteUserV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4Forbidden creates a AdminInviteUserV4Forbidden with default headers values
func NewAdminInviteUserV4Forbidden() *AdminInviteUserV4Forbidden {
	return &AdminInviteUserV4Forbidden{}
}

/*AdminInviteUserV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminInviteUserV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminInviteUserV4Forbidden) ToJSONString() string {
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

func (o *AdminInviteUserV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4NotFound creates a AdminInviteUserV4NotFound with default headers values
func NewAdminInviteUserV4NotFound() *AdminInviteUserV4NotFound {
	return &AdminInviteUserV4NotFound{}
}

/*AdminInviteUserV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type AdminInviteUserV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminInviteUserV4NotFound) ToJSONString() string {
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

func (o *AdminInviteUserV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4Conflict creates a AdminInviteUserV4Conflict with default headers values
func NewAdminInviteUserV4Conflict() *AdminInviteUserV4Conflict {
	return &AdminInviteUserV4Conflict{}
}

/*AdminInviteUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type AdminInviteUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminInviteUserV4Conflict) ToJSONString() string {
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

func (o *AdminInviteUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4UnprocessableEntity creates a AdminInviteUserV4UnprocessableEntity with default headers values
func NewAdminInviteUserV4UnprocessableEntity() *AdminInviteUserV4UnprocessableEntity {
	return &AdminInviteUserV4UnprocessableEntity{}
}

/*AdminInviteUserV4UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminInviteUserV4UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminInviteUserV4UnprocessableEntity) ToJSONString() string {
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

func (o *AdminInviteUserV4UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserV4InternalServerError creates a AdminInviteUserV4InternalServerError with default headers values
func NewAdminInviteUserV4InternalServerError() *AdminInviteUserV4InternalServerError {
	return &AdminInviteUserV4InternalServerError{}
}

/*AdminInviteUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminInviteUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/users/invite][%d] adminInviteUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminInviteUserV4InternalServerError) ToJSONString() string {
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

func (o *AdminInviteUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
