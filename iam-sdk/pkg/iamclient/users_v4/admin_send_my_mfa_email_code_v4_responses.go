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

// AdminSendMyMFAEmailCodeV4Reader is a Reader for the AdminSendMyMFAEmailCodeV4 structure.
type AdminSendMyMFAEmailCodeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSendMyMFAEmailCodeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSendMyMFAEmailCodeV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSendMyMFAEmailCodeV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSendMyMFAEmailCodeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSendMyMFAEmailCodeV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSendMyMFAEmailCodeV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewAdminSendMyMFAEmailCodeV4TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSendMyMFAEmailCodeV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/email/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSendMyMFAEmailCodeV4NoContent creates a AdminSendMyMFAEmailCodeV4NoContent with default headers values
func NewAdminSendMyMFAEmailCodeV4NoContent() *AdminSendMyMFAEmailCodeV4NoContent {
	return &AdminSendMyMFAEmailCodeV4NoContent{}
}

/*AdminSendMyMFAEmailCodeV4NoContent handles this case with default header values.

  code sent
*/
type AdminSendMyMFAEmailCodeV4NoContent struct {
}

func (o *AdminSendMyMFAEmailCodeV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4NoContent ", 204)
}

func (o *AdminSendMyMFAEmailCodeV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSendMyMFAEmailCodeV4BadRequest creates a AdminSendMyMFAEmailCodeV4BadRequest with default headers values
func NewAdminSendMyMFAEmailCodeV4BadRequest() *AdminSendMyMFAEmailCodeV4BadRequest {
	return &AdminSendMyMFAEmailCodeV4BadRequest{}
}

/*AdminSendMyMFAEmailCodeV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4BadRequest) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendMyMFAEmailCodeV4Unauthorized creates a AdminSendMyMFAEmailCodeV4Unauthorized with default headers values
func NewAdminSendMyMFAEmailCodeV4Unauthorized() *AdminSendMyMFAEmailCodeV4Unauthorized {
	return &AdminSendMyMFAEmailCodeV4Unauthorized{}
}

/*AdminSendMyMFAEmailCodeV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4Unauthorized) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendMyMFAEmailCodeV4Forbidden creates a AdminSendMyMFAEmailCodeV4Forbidden with default headers values
func NewAdminSendMyMFAEmailCodeV4Forbidden() *AdminSendMyMFAEmailCodeV4Forbidden {
	return &AdminSendMyMFAEmailCodeV4Forbidden{}
}

/*AdminSendMyMFAEmailCodeV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4Forbidden) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendMyMFAEmailCodeV4NotFound creates a AdminSendMyMFAEmailCodeV4NotFound with default headers values
func NewAdminSendMyMFAEmailCodeV4NotFound() *AdminSendMyMFAEmailCodeV4NotFound {
	return &AdminSendMyMFAEmailCodeV4NotFound{}
}

/*AdminSendMyMFAEmailCodeV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4NotFound) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendMyMFAEmailCodeV4TooManyRequests creates a AdminSendMyMFAEmailCodeV4TooManyRequests with default headers values
func NewAdminSendMyMFAEmailCodeV4TooManyRequests() *AdminSendMyMFAEmailCodeV4TooManyRequests {
	return &AdminSendMyMFAEmailCodeV4TooManyRequests{}
}

/*AdminSendMyMFAEmailCodeV4TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4TooManyRequests) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendMyMFAEmailCodeV4InternalServerError creates a AdminSendMyMFAEmailCodeV4InternalServerError with default headers values
func NewAdminSendMyMFAEmailCodeV4InternalServerError() *AdminSendMyMFAEmailCodeV4InternalServerError {
	return &AdminSendMyMFAEmailCodeV4InternalServerError{}
}

/*AdminSendMyMFAEmailCodeV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminSendMyMFAEmailCodeV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminSendMyMFAEmailCodeV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/code][%d] adminSendMyMfaEmailCodeV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSendMyMFAEmailCodeV4InternalServerError) ToJSONString() string {
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

func (o *AdminSendMyMFAEmailCodeV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminSendMyMFAEmailCodeV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
