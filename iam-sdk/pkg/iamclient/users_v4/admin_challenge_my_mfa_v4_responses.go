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

// AdminChallengeMyMFAV4Reader is a Reader for the AdminChallengeMyMFAV4 structure.
type AdminChallengeMyMFAV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChallengeMyMFAV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChallengeMyMFAV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewAdminChallengeMyMFAV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminChallengeMyMFAV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChallengeMyMFAV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChallengeMyMFAV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminChallengeMyMFAV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChallengeMyMFAV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/challenge/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChallengeMyMFAV4OK creates a AdminChallengeMyMFAV4OK with default headers values
func NewAdminChallengeMyMFAV4OK() *AdminChallengeMyMFAV4OK {
	return &AdminChallengeMyMFAV4OK{}
}

/*AdminChallengeMyMFAV4OK handles this case with default header values.

  MFA token generated
*/
type AdminChallengeMyMFAV4OK struct {
	Payload *iamclientmodels.ModelUserMFATokenResponseV4
}

func (o *AdminChallengeMyMFAV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4OK) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4OK) GetPayload() *iamclientmodels.ModelUserMFATokenResponseV4 {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserMFATokenResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminChallengeMyMFAV4NoContent creates a AdminChallengeMyMFAV4NoContent with default headers values
func NewAdminChallengeMyMFAV4NoContent() *AdminChallengeMyMFAV4NoContent {
	return &AdminChallengeMyMFAV4NoContent{}
}

/*AdminChallengeMyMFAV4NoContent handles this case with default header values.

  No MFA token generated
*/
type AdminChallengeMyMFAV4NoContent struct {
}

func (o *AdminChallengeMyMFAV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4NoContent ", 204)
}

func (o *AdminChallengeMyMFAV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminChallengeMyMFAV4BadRequest creates a AdminChallengeMyMFAV4BadRequest with default headers values
func NewAdminChallengeMyMFAV4BadRequest() *AdminChallengeMyMFAV4BadRequest {
	return &AdminChallengeMyMFAV4BadRequest{}
}

/*AdminChallengeMyMFAV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10137</td><td>code is expired</td></tr></table>
*/
type AdminChallengeMyMFAV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChallengeMyMFAV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4BadRequest) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChallengeMyMFAV4Unauthorized creates a AdminChallengeMyMFAV4Unauthorized with default headers values
func NewAdminChallengeMyMFAV4Unauthorized() *AdminChallengeMyMFAV4Unauthorized {
	return &AdminChallengeMyMFAV4Unauthorized{}
}

/*AdminChallengeMyMFAV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminChallengeMyMFAV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChallengeMyMFAV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4Unauthorized) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChallengeMyMFAV4Forbidden creates a AdminChallengeMyMFAV4Forbidden with default headers values
func NewAdminChallengeMyMFAV4Forbidden() *AdminChallengeMyMFAV4Forbidden {
	return &AdminChallengeMyMFAV4Forbidden{}
}

/*AdminChallengeMyMFAV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminChallengeMyMFAV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChallengeMyMFAV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4Forbidden) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChallengeMyMFAV4NotFound creates a AdminChallengeMyMFAV4NotFound with default headers values
func NewAdminChallengeMyMFAV4NotFound() *AdminChallengeMyMFAV4NotFound {
	return &AdminChallengeMyMFAV4NotFound{}
}

/*AdminChallengeMyMFAV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminChallengeMyMFAV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChallengeMyMFAV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4NotFound) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminChallengeMyMFAV4InternalServerError creates a AdminChallengeMyMFAV4InternalServerError with default headers values
func NewAdminChallengeMyMFAV4InternalServerError() *AdminChallengeMyMFAV4InternalServerError {
	return &AdminChallengeMyMFAV4InternalServerError{}
}

/*AdminChallengeMyMFAV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminChallengeMyMFAV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChallengeMyMFAV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/challenge/verify][%d] adminChallengeMyMfaV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChallengeMyMFAV4InternalServerError) ToJSONString() string {
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

func (o *AdminChallengeMyMFAV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChallengeMyMFAV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
