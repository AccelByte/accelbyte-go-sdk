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

// AdminEnableMyAuthenticatorV4Reader is a Reader for the AdminEnableMyAuthenticatorV4 structure.
type AdminEnableMyAuthenticatorV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEnableMyAuthenticatorV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminEnableMyAuthenticatorV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminEnableMyAuthenticatorV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEnableMyAuthenticatorV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEnableMyAuthenticatorV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEnableMyAuthenticatorV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminEnableMyAuthenticatorV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEnableMyAuthenticatorV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/authenticator/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEnableMyAuthenticatorV4NoContent creates a AdminEnableMyAuthenticatorV4NoContent with default headers values
func NewAdminEnableMyAuthenticatorV4NoContent() *AdminEnableMyAuthenticatorV4NoContent {
	return &AdminEnableMyAuthenticatorV4NoContent{}
}

/*AdminEnableMyAuthenticatorV4NoContent handles this case with default header values.

  Authenticator enabled
*/
type AdminEnableMyAuthenticatorV4NoContent struct {
}

func (o *AdminEnableMyAuthenticatorV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4NoContent ", 204)
}

func (o *AdminEnableMyAuthenticatorV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEnableMyAuthenticatorV4BadRequest creates a AdminEnableMyAuthenticatorV4BadRequest with default headers values
func NewAdminEnableMyAuthenticatorV4BadRequest() *AdminEnableMyAuthenticatorV4BadRequest {
	return &AdminEnableMyAuthenticatorV4BadRequest{}
}

/*AdminEnableMyAuthenticatorV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10190</td><td>auth secret key expired</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4BadRequest) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyAuthenticatorV4Unauthorized creates a AdminEnableMyAuthenticatorV4Unauthorized with default headers values
func NewAdminEnableMyAuthenticatorV4Unauthorized() *AdminEnableMyAuthenticatorV4Unauthorized {
	return &AdminEnableMyAuthenticatorV4Unauthorized{}
}

/*AdminEnableMyAuthenticatorV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4Unauthorized) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyAuthenticatorV4Forbidden creates a AdminEnableMyAuthenticatorV4Forbidden with default headers values
func NewAdminEnableMyAuthenticatorV4Forbidden() *AdminEnableMyAuthenticatorV4Forbidden {
	return &AdminEnableMyAuthenticatorV4Forbidden{}
}

/*AdminEnableMyAuthenticatorV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4Forbidden) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyAuthenticatorV4NotFound creates a AdminEnableMyAuthenticatorV4NotFound with default headers values
func NewAdminEnableMyAuthenticatorV4NotFound() *AdminEnableMyAuthenticatorV4NotFound {
	return &AdminEnableMyAuthenticatorV4NotFound{}
}

/*AdminEnableMyAuthenticatorV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4NotFound) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyAuthenticatorV4Conflict creates a AdminEnableMyAuthenticatorV4Conflict with default headers values
func NewAdminEnableMyAuthenticatorV4Conflict() *AdminEnableMyAuthenticatorV4Conflict {
	return &AdminEnableMyAuthenticatorV4Conflict{}
}

/*AdminEnableMyAuthenticatorV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4Conflict) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyAuthenticatorV4InternalServerError creates a AdminEnableMyAuthenticatorV4InternalServerError with default headers values
func NewAdminEnableMyAuthenticatorV4InternalServerError() *AdminEnableMyAuthenticatorV4InternalServerError {
	return &AdminEnableMyAuthenticatorV4InternalServerError{}
}

/*AdminEnableMyAuthenticatorV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminEnableMyAuthenticatorV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyAuthenticatorV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/enable][%d] adminEnableMyAuthenticatorV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminEnableMyAuthenticatorV4InternalServerError) ToJSONString() string {
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

func (o *AdminEnableMyAuthenticatorV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyAuthenticatorV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
