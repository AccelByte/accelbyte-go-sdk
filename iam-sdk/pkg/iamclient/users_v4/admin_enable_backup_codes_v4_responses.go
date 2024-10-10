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

// AdminEnableBackupCodesV4Reader is a Reader for the AdminEnableBackupCodesV4 structure.
type AdminEnableBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEnableBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminEnableBackupCodesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminEnableBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEnableBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEnableBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEnableBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminEnableBackupCodesV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEnableBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/backupCodes/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEnableBackupCodesV4OK creates a AdminEnableBackupCodesV4OK with default headers values
func NewAdminEnableBackupCodesV4OK() *AdminEnableBackupCodesV4OK {
	return &AdminEnableBackupCodesV4OK{}
}

/*AdminEnableBackupCodesV4OK handles this case with default header values.

  Backup codes enabled
*/
type AdminEnableBackupCodesV4OK struct {
}

func (o *AdminEnableBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4OK ", 200)
}

func (o *AdminEnableBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEnableBackupCodesV4BadRequest creates a AdminEnableBackupCodesV4BadRequest with default headers values
func NewAdminEnableBackupCodesV4BadRequest() *AdminEnableBackupCodesV4BadRequest {
	return &AdminEnableBackupCodesV4BadRequest{}
}

/*AdminEnableBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10194</td><td>factor already enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminEnableBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableBackupCodesV4Unauthorized creates a AdminEnableBackupCodesV4Unauthorized with default headers values
func NewAdminEnableBackupCodesV4Unauthorized() *AdminEnableBackupCodesV4Unauthorized {
	return &AdminEnableBackupCodesV4Unauthorized{}
}

/*AdminEnableBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEnableBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableBackupCodesV4Forbidden creates a AdminEnableBackupCodesV4Forbidden with default headers values
func NewAdminEnableBackupCodesV4Forbidden() *AdminEnableBackupCodesV4Forbidden {
	return &AdminEnableBackupCodesV4Forbidden{}
}

/*AdminEnableBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminEnableBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableBackupCodesV4NotFound creates a AdminEnableBackupCodesV4NotFound with default headers values
func NewAdminEnableBackupCodesV4NotFound() *AdminEnableBackupCodesV4NotFound {
	return &AdminEnableBackupCodesV4NotFound{}
}

/*AdminEnableBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminEnableBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4NotFound) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableBackupCodesV4Conflict creates a AdminEnableBackupCodesV4Conflict with default headers values
func NewAdminEnableBackupCodesV4Conflict() *AdminEnableBackupCodesV4Conflict {
	return &AdminEnableBackupCodesV4Conflict{}
}

/*AdminEnableBackupCodesV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type AdminEnableBackupCodesV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4Conflict) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableBackupCodesV4InternalServerError creates a AdminEnableBackupCodesV4InternalServerError with default headers values
func NewAdminEnableBackupCodesV4InternalServerError() *AdminEnableBackupCodesV4InternalServerError {
	return &AdminEnableBackupCodesV4InternalServerError{}
}

/*AdminEnableBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminEnableBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCodes/enable][%d] adminEnableBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminEnableBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *AdminEnableBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
