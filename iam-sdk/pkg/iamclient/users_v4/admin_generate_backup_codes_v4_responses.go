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

// AdminGenerateBackupCodesV4Reader is a Reader for the AdminGenerateBackupCodesV4 structure.
type AdminGenerateBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGenerateBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGenerateBackupCodesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGenerateBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGenerateBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGenerateBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGenerateBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGenerateBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/backupCodes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGenerateBackupCodesV4OK creates a AdminGenerateBackupCodesV4OK with default headers values
func NewAdminGenerateBackupCodesV4OK() *AdminGenerateBackupCodesV4OK {
	return &AdminGenerateBackupCodesV4OK{}
}

/*AdminGenerateBackupCodesV4OK handles this case with default header values.

  Backup codes generated
*/
type AdminGenerateBackupCodesV4OK struct {
}

func (o *AdminGenerateBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4OK ", 200)
}

func (o *AdminGenerateBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminGenerateBackupCodesV4BadRequest creates a AdminGenerateBackupCodesV4BadRequest with default headers values
func NewAdminGenerateBackupCodesV4BadRequest() *AdminGenerateBackupCodesV4BadRequest {
	return &AdminGenerateBackupCodesV4BadRequest{}
}

/*AdminGenerateBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10192</td><td>factor not enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminGenerateBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGenerateBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *AdminGenerateBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateBackupCodesV4Unauthorized creates a AdminGenerateBackupCodesV4Unauthorized with default headers values
func NewAdminGenerateBackupCodesV4Unauthorized() *AdminGenerateBackupCodesV4Unauthorized {
	return &AdminGenerateBackupCodesV4Unauthorized{}
}

/*AdminGenerateBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGenerateBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGenerateBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *AdminGenerateBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateBackupCodesV4Forbidden creates a AdminGenerateBackupCodesV4Forbidden with default headers values
func NewAdminGenerateBackupCodesV4Forbidden() *AdminGenerateBackupCodesV4Forbidden {
	return &AdminGenerateBackupCodesV4Forbidden{}
}

/*AdminGenerateBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGenerateBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGenerateBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *AdminGenerateBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateBackupCodesV4NotFound creates a AdminGenerateBackupCodesV4NotFound with default headers values
func NewAdminGenerateBackupCodesV4NotFound() *AdminGenerateBackupCodesV4NotFound {
	return &AdminGenerateBackupCodesV4NotFound{}
}

/*AdminGenerateBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGenerateBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGenerateBackupCodesV4NotFound) ToJSONString() string {
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

func (o *AdminGenerateBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGenerateBackupCodesV4InternalServerError creates a AdminGenerateBackupCodesV4InternalServerError with default headers values
func NewAdminGenerateBackupCodesV4InternalServerError() *AdminGenerateBackupCodesV4InternalServerError {
	return &AdminGenerateBackupCodesV4InternalServerError{}
}

/*AdminGenerateBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGenerateBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes][%d] adminGenerateBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGenerateBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *AdminGenerateBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
