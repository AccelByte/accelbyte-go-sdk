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

// PublicChallengeMyMFAV4Reader is a Reader for the PublicChallengeMyMFAV4 structure.
type PublicChallengeMyMFAV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicChallengeMyMFAV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicChallengeMyMFAV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewPublicChallengeMyMFAV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicChallengeMyMFAV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicChallengeMyMFAV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicChallengeMyMFAV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicChallengeMyMFAV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicChallengeMyMFAV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicChallengeMyMFAV4OK creates a PublicChallengeMyMFAV4OK with default headers values
func NewPublicChallengeMyMFAV4OK() *PublicChallengeMyMFAV4OK {
	return &PublicChallengeMyMFAV4OK{}
}

/*PublicChallengeMyMFAV4OK handles this case with default header values.

  MFA token generated
*/
type PublicChallengeMyMFAV4OK struct {
	Payload *iamclientmodels.ModelUserMFATokenResponseV4
}

func (o *PublicChallengeMyMFAV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4OK) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4OK) GetPayload() *iamclientmodels.ModelUserMFATokenResponseV4 {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChallengeMyMFAV4NoContent creates a PublicChallengeMyMFAV4NoContent with default headers values
func NewPublicChallengeMyMFAV4NoContent() *PublicChallengeMyMFAV4NoContent {
	return &PublicChallengeMyMFAV4NoContent{}
}

/*PublicChallengeMyMFAV4NoContent handles this case with default header values.

  No MFA token generated
*/
type PublicChallengeMyMFAV4NoContent struct {
}

func (o *PublicChallengeMyMFAV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4NoContent ", 204)
}

func (o *PublicChallengeMyMFAV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicChallengeMyMFAV4BadRequest creates a PublicChallengeMyMFAV4BadRequest with default headers values
func NewPublicChallengeMyMFAV4BadRequest() *PublicChallengeMyMFAV4BadRequest {
	return &PublicChallengeMyMFAV4BadRequest{}
}

/*PublicChallengeMyMFAV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10137</td><td>code is expired</td></tr></table>
*/
type PublicChallengeMyMFAV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicChallengeMyMFAV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4BadRequest) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChallengeMyMFAV4Unauthorized creates a PublicChallengeMyMFAV4Unauthorized with default headers values
func NewPublicChallengeMyMFAV4Unauthorized() *PublicChallengeMyMFAV4Unauthorized {
	return &PublicChallengeMyMFAV4Unauthorized{}
}

/*PublicChallengeMyMFAV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicChallengeMyMFAV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicChallengeMyMFAV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4Unauthorized) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChallengeMyMFAV4Forbidden creates a PublicChallengeMyMFAV4Forbidden with default headers values
func NewPublicChallengeMyMFAV4Forbidden() *PublicChallengeMyMFAV4Forbidden {
	return &PublicChallengeMyMFAV4Forbidden{}
}

/*PublicChallengeMyMFAV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicChallengeMyMFAV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicChallengeMyMFAV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4Forbidden) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChallengeMyMFAV4NotFound creates a PublicChallengeMyMFAV4NotFound with default headers values
func NewPublicChallengeMyMFAV4NotFound() *PublicChallengeMyMFAV4NotFound {
	return &PublicChallengeMyMFAV4NotFound{}
}

/*PublicChallengeMyMFAV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicChallengeMyMFAV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicChallengeMyMFAV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4NotFound) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChallengeMyMFAV4InternalServerError creates a PublicChallengeMyMFAV4InternalServerError with default headers values
func NewPublicChallengeMyMFAV4InternalServerError() *PublicChallengeMyMFAV4InternalServerError {
	return &PublicChallengeMyMFAV4InternalServerError{}
}

/*PublicChallengeMyMFAV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicChallengeMyMFAV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicChallengeMyMFAV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify][%d] publicChallengeMyMfaV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicChallengeMyMFAV4InternalServerError) ToJSONString() string {
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

func (o *PublicChallengeMyMFAV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicChallengeMyMFAV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
