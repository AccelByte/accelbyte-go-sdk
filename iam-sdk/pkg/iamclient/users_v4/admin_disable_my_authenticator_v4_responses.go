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

// AdminDisableMyAuthenticatorV4Reader is a Reader for the AdminDisableMyAuthenticatorV4 structure.
type AdminDisableMyAuthenticatorV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDisableMyAuthenticatorV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDisableMyAuthenticatorV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDisableMyAuthenticatorV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDisableMyAuthenticatorV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDisableMyAuthenticatorV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDisableMyAuthenticatorV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDisableMyAuthenticatorV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/admin/users/me/mfa/authenticator/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDisableMyAuthenticatorV4NoContent creates a AdminDisableMyAuthenticatorV4NoContent with default headers values
func NewAdminDisableMyAuthenticatorV4NoContent() *AdminDisableMyAuthenticatorV4NoContent {
	return &AdminDisableMyAuthenticatorV4NoContent{}
}

/*AdminDisableMyAuthenticatorV4NoContent handles this case with default header values.

  Authenticator disabled
*/
type AdminDisableMyAuthenticatorV4NoContent struct {
}

func (o *AdminDisableMyAuthenticatorV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4NoContent ", 204)
}

func (o *AdminDisableMyAuthenticatorV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableMyAuthenticatorV4BadRequest creates a AdminDisableMyAuthenticatorV4BadRequest with default headers values
func NewAdminDisableMyAuthenticatorV4BadRequest() *AdminDisableMyAuthenticatorV4BadRequest {
	return &AdminDisableMyAuthenticatorV4BadRequest{}
}

/*AdminDisableMyAuthenticatorV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10228</td><td>invalid mfa token</td></tr></table>
*/
type AdminDisableMyAuthenticatorV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyAuthenticatorV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDisableMyAuthenticatorV4BadRequest) ToJSONString() string {
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

func (o *AdminDisableMyAuthenticatorV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyAuthenticatorV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyAuthenticatorV4Unauthorized creates a AdminDisableMyAuthenticatorV4Unauthorized with default headers values
func NewAdminDisableMyAuthenticatorV4Unauthorized() *AdminDisableMyAuthenticatorV4Unauthorized {
	return &AdminDisableMyAuthenticatorV4Unauthorized{}
}

/*AdminDisableMyAuthenticatorV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDisableMyAuthenticatorV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyAuthenticatorV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDisableMyAuthenticatorV4Unauthorized) ToJSONString() string {
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

func (o *AdminDisableMyAuthenticatorV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyAuthenticatorV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyAuthenticatorV4Forbidden creates a AdminDisableMyAuthenticatorV4Forbidden with default headers values
func NewAdminDisableMyAuthenticatorV4Forbidden() *AdminDisableMyAuthenticatorV4Forbidden {
	return &AdminDisableMyAuthenticatorV4Forbidden{}
}

/*AdminDisableMyAuthenticatorV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDisableMyAuthenticatorV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyAuthenticatorV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDisableMyAuthenticatorV4Forbidden) ToJSONString() string {
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

func (o *AdminDisableMyAuthenticatorV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyAuthenticatorV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyAuthenticatorV4NotFound creates a AdminDisableMyAuthenticatorV4NotFound with default headers values
func NewAdminDisableMyAuthenticatorV4NotFound() *AdminDisableMyAuthenticatorV4NotFound {
	return &AdminDisableMyAuthenticatorV4NotFound{}
}

/*AdminDisableMyAuthenticatorV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDisableMyAuthenticatorV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyAuthenticatorV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDisableMyAuthenticatorV4NotFound) ToJSONString() string {
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

func (o *AdminDisableMyAuthenticatorV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyAuthenticatorV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyAuthenticatorV4InternalServerError creates a AdminDisableMyAuthenticatorV4InternalServerError with default headers values
func NewAdminDisableMyAuthenticatorV4InternalServerError() *AdminDisableMyAuthenticatorV4InternalServerError {
	return &AdminDisableMyAuthenticatorV4InternalServerError{}
}

/*AdminDisableMyAuthenticatorV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDisableMyAuthenticatorV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyAuthenticatorV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/users/me/mfa/authenticator/disable][%d] adminDisableMyAuthenticatorV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDisableMyAuthenticatorV4InternalServerError) ToJSONString() string {
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

func (o *AdminDisableMyAuthenticatorV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyAuthenticatorV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
