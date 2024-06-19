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

// PublicDisableMyBackupCodesV4Reader is a Reader for the PublicDisableMyBackupCodesV4 structure.
type PublicDisableMyBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDisableMyBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDisableMyBackupCodesV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDisableMyBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDisableMyBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDisableMyBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDisableMyBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDisableMyBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDisableMyBackupCodesV4NoContent creates a PublicDisableMyBackupCodesV4NoContent with default headers values
func NewPublicDisableMyBackupCodesV4NoContent() *PublicDisableMyBackupCodesV4NoContent {
	return &PublicDisableMyBackupCodesV4NoContent{}
}

/*PublicDisableMyBackupCodesV4NoContent handles this case with default header values.

  Backup codes disabled
*/
type PublicDisableMyBackupCodesV4NoContent struct {
}

func (o *PublicDisableMyBackupCodesV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4NoContent ", 204)
}

func (o *PublicDisableMyBackupCodesV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDisableMyBackupCodesV4BadRequest creates a PublicDisableMyBackupCodesV4BadRequest with default headers values
func NewPublicDisableMyBackupCodesV4BadRequest() *PublicDisableMyBackupCodesV4BadRequest {
	return &PublicDisableMyBackupCodesV4BadRequest{}
}

/*PublicDisableMyBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10228</td><td>invalid mfa token</td></tr></table>
*/
type PublicDisableMyBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDisableMyBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *PublicDisableMyBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyBackupCodesV4Unauthorized creates a PublicDisableMyBackupCodesV4Unauthorized with default headers values
func NewPublicDisableMyBackupCodesV4Unauthorized() *PublicDisableMyBackupCodesV4Unauthorized {
	return &PublicDisableMyBackupCodesV4Unauthorized{}
}

/*PublicDisableMyBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDisableMyBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDisableMyBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *PublicDisableMyBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyBackupCodesV4Forbidden creates a PublicDisableMyBackupCodesV4Forbidden with default headers values
func NewPublicDisableMyBackupCodesV4Forbidden() *PublicDisableMyBackupCodesV4Forbidden {
	return &PublicDisableMyBackupCodesV4Forbidden{}
}

/*PublicDisableMyBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicDisableMyBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDisableMyBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *PublicDisableMyBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyBackupCodesV4NotFound creates a PublicDisableMyBackupCodesV4NotFound with default headers values
func NewPublicDisableMyBackupCodesV4NotFound() *PublicDisableMyBackupCodesV4NotFound {
	return &PublicDisableMyBackupCodesV4NotFound{}
}

/*PublicDisableMyBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicDisableMyBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDisableMyBackupCodesV4NotFound) ToJSONString() string {
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

func (o *PublicDisableMyBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyBackupCodesV4InternalServerError creates a PublicDisableMyBackupCodesV4InternalServerError with default headers values
func NewPublicDisableMyBackupCodesV4InternalServerError() *PublicDisableMyBackupCodesV4InternalServerError {
	return &PublicDisableMyBackupCodesV4InternalServerError{}
}

/*PublicDisableMyBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicDisableMyBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable][%d] publicDisableMyBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDisableMyBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *PublicDisableMyBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
