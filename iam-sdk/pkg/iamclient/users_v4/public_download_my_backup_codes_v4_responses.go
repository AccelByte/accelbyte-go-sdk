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

// PublicDownloadMyBackupCodesV4Reader is a Reader for the PublicDownloadMyBackupCodesV4 structure.
type PublicDownloadMyBackupCodesV4Reader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *PublicDownloadMyBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicDownloadMyBackupCodesV4OK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDownloadMyBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDownloadMyBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDownloadMyBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDownloadMyBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDownloadMyBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDownloadMyBackupCodesV4OK creates a PublicDownloadMyBackupCodesV4OK with default headers values
func NewPublicDownloadMyBackupCodesV4OK(writer io.Writer) *PublicDownloadMyBackupCodesV4OK {
	return &PublicDownloadMyBackupCodesV4OK{
		Payload: writer,
	}
}

/*PublicDownloadMyBackupCodesV4OK handles this case with default header values.

  Backup codes downloaded
*/
type PublicDownloadMyBackupCodesV4OK struct {
	Payload io.Writer
}

func (o *PublicDownloadMyBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4OK) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4OK) GetPayload() io.Writer {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicDownloadMyBackupCodesV4BadRequest creates a PublicDownloadMyBackupCodesV4BadRequest with default headers values
func NewPublicDownloadMyBackupCodesV4BadRequest() *PublicDownloadMyBackupCodesV4BadRequest {
	return &PublicDownloadMyBackupCodesV4BadRequest{}
}

/*PublicDownloadMyBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10192</td><td>factor not enabled</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10195</td><td>no valid backup code found</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicDownloadMyBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDownloadMyBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadMyBackupCodesV4Unauthorized creates a PublicDownloadMyBackupCodesV4Unauthorized with default headers values
func NewPublicDownloadMyBackupCodesV4Unauthorized() *PublicDownloadMyBackupCodesV4Unauthorized {
	return &PublicDownloadMyBackupCodesV4Unauthorized{}
}

/*PublicDownloadMyBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDownloadMyBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDownloadMyBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadMyBackupCodesV4Forbidden creates a PublicDownloadMyBackupCodesV4Forbidden with default headers values
func NewPublicDownloadMyBackupCodesV4Forbidden() *PublicDownloadMyBackupCodesV4Forbidden {
	return &PublicDownloadMyBackupCodesV4Forbidden{}
}

/*PublicDownloadMyBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicDownloadMyBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDownloadMyBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadMyBackupCodesV4NotFound creates a PublicDownloadMyBackupCodesV4NotFound with default headers values
func NewPublicDownloadMyBackupCodesV4NotFound() *PublicDownloadMyBackupCodesV4NotFound {
	return &PublicDownloadMyBackupCodesV4NotFound{}
}

/*PublicDownloadMyBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicDownloadMyBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDownloadMyBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4NotFound) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicDownloadMyBackupCodesV4InternalServerError creates a PublicDownloadMyBackupCodesV4InternalServerError with default headers values
func NewPublicDownloadMyBackupCodesV4InternalServerError() *PublicDownloadMyBackupCodesV4InternalServerError {
	return &PublicDownloadMyBackupCodesV4InternalServerError{}
}

/*PublicDownloadMyBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicDownloadMyBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDownloadMyBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download][%d] publicDownloadMyBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDownloadMyBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *PublicDownloadMyBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDownloadMyBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
