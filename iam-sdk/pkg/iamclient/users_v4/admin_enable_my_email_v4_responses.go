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

// AdminEnableMyEmailV4Reader is a Reader for the AdminEnableMyEmailV4 structure.
type AdminEnableMyEmailV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEnableMyEmailV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminEnableMyEmailV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminEnableMyEmailV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEnableMyEmailV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEnableMyEmailV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEnableMyEmailV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminEnableMyEmailV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEnableMyEmailV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/email/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEnableMyEmailV4NoContent creates a AdminEnableMyEmailV4NoContent with default headers values
func NewAdminEnableMyEmailV4NoContent() *AdminEnableMyEmailV4NoContent {
	return &AdminEnableMyEmailV4NoContent{}
}

/*AdminEnableMyEmailV4NoContent handles this case with default header values.

  email enabled
*/
type AdminEnableMyEmailV4NoContent struct {
}

func (o *AdminEnableMyEmailV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4NoContent ", 204)
}

func (o *AdminEnableMyEmailV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEnableMyEmailV4BadRequest creates a AdminEnableMyEmailV4BadRequest with default headers values
func NewAdminEnableMyEmailV4BadRequest() *AdminEnableMyEmailV4BadRequest {
	return &AdminEnableMyEmailV4BadRequest{}
}

/*AdminEnableMyEmailV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminEnableMyEmailV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4BadRequest) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyEmailV4Unauthorized creates a AdminEnableMyEmailV4Unauthorized with default headers values
func NewAdminEnableMyEmailV4Unauthorized() *AdminEnableMyEmailV4Unauthorized {
	return &AdminEnableMyEmailV4Unauthorized{}
}

/*AdminEnableMyEmailV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEnableMyEmailV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4Unauthorized) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyEmailV4Forbidden creates a AdminEnableMyEmailV4Forbidden with default headers values
func NewAdminEnableMyEmailV4Forbidden() *AdminEnableMyEmailV4Forbidden {
	return &AdminEnableMyEmailV4Forbidden{}
}

/*AdminEnableMyEmailV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminEnableMyEmailV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4Forbidden) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyEmailV4NotFound creates a AdminEnableMyEmailV4NotFound with default headers values
func NewAdminEnableMyEmailV4NotFound() *AdminEnableMyEmailV4NotFound {
	return &AdminEnableMyEmailV4NotFound{}
}

/*AdminEnableMyEmailV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminEnableMyEmailV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4NotFound) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyEmailV4Conflict creates a AdminEnableMyEmailV4Conflict with default headers values
func NewAdminEnableMyEmailV4Conflict() *AdminEnableMyEmailV4Conflict {
	return &AdminEnableMyEmailV4Conflict{}
}

/*AdminEnableMyEmailV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type AdminEnableMyEmailV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4Conflict) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyEmailV4InternalServerError creates a AdminEnableMyEmailV4InternalServerError with default headers values
func NewAdminEnableMyEmailV4InternalServerError() *AdminEnableMyEmailV4InternalServerError {
	return &AdminEnableMyEmailV4InternalServerError{}
}

/*AdminEnableMyEmailV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminEnableMyEmailV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyEmailV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/enable][%d] adminEnableMyEmailV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminEnableMyEmailV4InternalServerError) ToJSONString() string {
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

func (o *AdminEnableMyEmailV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyEmailV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
