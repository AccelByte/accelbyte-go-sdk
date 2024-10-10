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

// PublicEnableBackupCodesV4Reader is a Reader for the PublicEnableBackupCodesV4 structure.
type PublicEnableBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicEnableBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicEnableBackupCodesV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicEnableBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicEnableBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicEnableBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicEnableBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicEnableBackupCodesV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicEnableBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicEnableBackupCodesV4NoContent creates a PublicEnableBackupCodesV4NoContent with default headers values
func NewPublicEnableBackupCodesV4NoContent() *PublicEnableBackupCodesV4NoContent {
	return &PublicEnableBackupCodesV4NoContent{}
}

/*PublicEnableBackupCodesV4NoContent handles this case with default header values.

  Backup codes enabled and codes sent to email
*/
type PublicEnableBackupCodesV4NoContent struct {
}

func (o *PublicEnableBackupCodesV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4NoContent ", 204)
}

func (o *PublicEnableBackupCodesV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicEnableBackupCodesV4BadRequest creates a PublicEnableBackupCodesV4BadRequest with default headers values
func NewPublicEnableBackupCodesV4BadRequest() *PublicEnableBackupCodesV4BadRequest {
	return &PublicEnableBackupCodesV4BadRequest{}
}

/*PublicEnableBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicEnableBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableBackupCodesV4Unauthorized creates a PublicEnableBackupCodesV4Unauthorized with default headers values
func NewPublicEnableBackupCodesV4Unauthorized() *PublicEnableBackupCodesV4Unauthorized {
	return &PublicEnableBackupCodesV4Unauthorized{}
}

/*PublicEnableBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicEnableBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableBackupCodesV4Forbidden creates a PublicEnableBackupCodesV4Forbidden with default headers values
func NewPublicEnableBackupCodesV4Forbidden() *PublicEnableBackupCodesV4Forbidden {
	return &PublicEnableBackupCodesV4Forbidden{}
}

/*PublicEnableBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicEnableBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableBackupCodesV4NotFound creates a PublicEnableBackupCodesV4NotFound with default headers values
func NewPublicEnableBackupCodesV4NotFound() *PublicEnableBackupCodesV4NotFound {
	return &PublicEnableBackupCodesV4NotFound{}
}

/*PublicEnableBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicEnableBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4NotFound) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableBackupCodesV4Conflict creates a PublicEnableBackupCodesV4Conflict with default headers values
func NewPublicEnableBackupCodesV4Conflict() *PublicEnableBackupCodesV4Conflict {
	return &PublicEnableBackupCodesV4Conflict{}
}

/*PublicEnableBackupCodesV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type PublicEnableBackupCodesV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4Conflict) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableBackupCodesV4InternalServerError creates a PublicEnableBackupCodesV4InternalServerError with default headers values
func NewPublicEnableBackupCodesV4InternalServerError() *PublicEnableBackupCodesV4InternalServerError {
	return &PublicEnableBackupCodesV4InternalServerError{}
}

/*PublicEnableBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicEnableBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable][%d] publicEnableBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicEnableBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *PublicEnableBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
