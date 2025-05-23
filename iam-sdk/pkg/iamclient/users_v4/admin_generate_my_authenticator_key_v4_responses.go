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

// AdminGenerateMyAuthenticatorKeyV4Reader is a Reader for the AdminGenerateMyAuthenticatorKeyV4 structure.
type AdminGenerateMyAuthenticatorKeyV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGenerateMyAuthenticatorKeyV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGenerateMyAuthenticatorKeyV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGenerateMyAuthenticatorKeyV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGenerateMyAuthenticatorKeyV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGenerateMyAuthenticatorKeyV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGenerateMyAuthenticatorKeyV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGenerateMyAuthenticatorKeyV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/authenticator/key returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGenerateMyAuthenticatorKeyV4OK creates a AdminGenerateMyAuthenticatorKeyV4OK with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4OK() *AdminGenerateMyAuthenticatorKeyV4OK {
	return &AdminGenerateMyAuthenticatorKeyV4OK{}
}

/*AdminGenerateMyAuthenticatorKeyV4OK handles this case with default header values.

  Key generated
*/
type AdminGenerateMyAuthenticatorKeyV4OK struct {
	Payload *iamclientmodels.ModelAuthenticatorKeyResponseV4
}

func (o *AdminGenerateMyAuthenticatorKeyV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4OK) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4OK) GetPayload() *iamclientmodels.ModelAuthenticatorKeyResponseV4 {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelAuthenticatorKeyResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGenerateMyAuthenticatorKeyV4BadRequest creates a AdminGenerateMyAuthenticatorKeyV4BadRequest with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4BadRequest() *AdminGenerateMyAuthenticatorKeyV4BadRequest {
	return &AdminGenerateMyAuthenticatorKeyV4BadRequest{}
}

/*AdminGenerateMyAuthenticatorKeyV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminGenerateMyAuthenticatorKeyV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateMyAuthenticatorKeyV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4BadRequest) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateMyAuthenticatorKeyV4Unauthorized creates a AdminGenerateMyAuthenticatorKeyV4Unauthorized with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4Unauthorized() *AdminGenerateMyAuthenticatorKeyV4Unauthorized {
	return &AdminGenerateMyAuthenticatorKeyV4Unauthorized{}
}

/*AdminGenerateMyAuthenticatorKeyV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGenerateMyAuthenticatorKeyV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateMyAuthenticatorKeyV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4Unauthorized) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateMyAuthenticatorKeyV4Forbidden creates a AdminGenerateMyAuthenticatorKeyV4Forbidden with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4Forbidden() *AdminGenerateMyAuthenticatorKeyV4Forbidden {
	return &AdminGenerateMyAuthenticatorKeyV4Forbidden{}
}

/*AdminGenerateMyAuthenticatorKeyV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGenerateMyAuthenticatorKeyV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateMyAuthenticatorKeyV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4Forbidden) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateMyAuthenticatorKeyV4NotFound creates a AdminGenerateMyAuthenticatorKeyV4NotFound with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4NotFound() *AdminGenerateMyAuthenticatorKeyV4NotFound {
	return &AdminGenerateMyAuthenticatorKeyV4NotFound{}
}

/*AdminGenerateMyAuthenticatorKeyV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGenerateMyAuthenticatorKeyV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateMyAuthenticatorKeyV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4NotFound) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateMyAuthenticatorKeyV4InternalServerError creates a AdminGenerateMyAuthenticatorKeyV4InternalServerError with default headers values
func NewAdminGenerateMyAuthenticatorKeyV4InternalServerError() *AdminGenerateMyAuthenticatorKeyV4InternalServerError {
	return &AdminGenerateMyAuthenticatorKeyV4InternalServerError{}
}

/*AdminGenerateMyAuthenticatorKeyV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGenerateMyAuthenticatorKeyV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateMyAuthenticatorKeyV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/authenticator/key][%d] adminGenerateMyAuthenticatorKeyV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGenerateMyAuthenticatorKeyV4InternalServerError) ToJSONString() string {
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

func (o *AdminGenerateMyAuthenticatorKeyV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateMyAuthenticatorKeyV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
