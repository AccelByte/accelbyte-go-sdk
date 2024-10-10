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

// AdminInviteUserNewV4Reader is a Reader for the AdminInviteUserNewV4 structure.
type AdminInviteUserNewV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminInviteUserNewV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminInviteUserNewV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminInviteUserNewV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminInviteUserNewV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminInviteUserNewV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminInviteUserNewV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminInviteUserNewV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminInviteUserNewV4UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminInviteUserNewV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminInviteUserNewV4Created creates a AdminInviteUserNewV4Created with default headers values
func NewAdminInviteUserNewV4Created() *AdminInviteUserNewV4Created {
	return &AdminInviteUserNewV4Created{}
}

/*AdminInviteUserNewV4Created handles this case with default header values.

  Created
*/
type AdminInviteUserNewV4Created struct {
	Payload *iamclientmodels.ModelInviteUserResponseV3
}

func (o *AdminInviteUserNewV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminInviteUserNewV4Created) ToJSONString() string {
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

func (o *AdminInviteUserNewV4Created) GetPayload() *iamclientmodels.ModelInviteUserResponseV3 {
	return o.Payload
}

func (o *AdminInviteUserNewV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4BadRequest creates a AdminInviteUserNewV4BadRequest with default headers values
func NewAdminInviteUserNewV4BadRequest() *AdminInviteUserNewV4BadRequest {
	return &AdminInviteUserNewV4BadRequest{}
}

/*AdminInviteUserNewV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminInviteUserNewV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminInviteUserNewV4BadRequest) ToJSONString() string {
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

func (o *AdminInviteUserNewV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4Unauthorized creates a AdminInviteUserNewV4Unauthorized with default headers values
func NewAdminInviteUserNewV4Unauthorized() *AdminInviteUserNewV4Unauthorized {
	return &AdminInviteUserNewV4Unauthorized{}
}

/*AdminInviteUserNewV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminInviteUserNewV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminInviteUserNewV4Unauthorized) ToJSONString() string {
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

func (o *AdminInviteUserNewV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4Forbidden creates a AdminInviteUserNewV4Forbidden with default headers values
func NewAdminInviteUserNewV4Forbidden() *AdminInviteUserNewV4Forbidden {
	return &AdminInviteUserNewV4Forbidden{}
}

/*AdminInviteUserNewV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminInviteUserNewV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminInviteUserNewV4Forbidden) ToJSONString() string {
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

func (o *AdminInviteUserNewV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4NotFound creates a AdminInviteUserNewV4NotFound with default headers values
func NewAdminInviteUserNewV4NotFound() *AdminInviteUserNewV4NotFound {
	return &AdminInviteUserNewV4NotFound{}
}

/*AdminInviteUserNewV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type AdminInviteUserNewV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminInviteUserNewV4NotFound) ToJSONString() string {
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

func (o *AdminInviteUserNewV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4Conflict creates a AdminInviteUserNewV4Conflict with default headers values
func NewAdminInviteUserNewV4Conflict() *AdminInviteUserNewV4Conflict {
	return &AdminInviteUserNewV4Conflict{}
}

/*AdminInviteUserNewV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type AdminInviteUserNewV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminInviteUserNewV4Conflict) ToJSONString() string {
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

func (o *AdminInviteUserNewV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4UnprocessableEntity creates a AdminInviteUserNewV4UnprocessableEntity with default headers values
func NewAdminInviteUserNewV4UnprocessableEntity() *AdminInviteUserNewV4UnprocessableEntity {
	return &AdminInviteUserNewV4UnprocessableEntity{}
}

/*AdminInviteUserNewV4UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminInviteUserNewV4UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminInviteUserNewV4UnprocessableEntity) ToJSONString() string {
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

func (o *AdminInviteUserNewV4UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminInviteUserNewV4InternalServerError creates a AdminInviteUserNewV4InternalServerError with default headers values
func NewAdminInviteUserNewV4InternalServerError() *AdminInviteUserNewV4InternalServerError {
	return &AdminInviteUserNewV4InternalServerError{}
}

/*AdminInviteUserNewV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminInviteUserNewV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminInviteUserNewV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/invite][%d] adminInviteUserNewV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminInviteUserNewV4InternalServerError) ToJSONString() string {
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

func (o *AdminInviteUserNewV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminInviteUserNewV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
