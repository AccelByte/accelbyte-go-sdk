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

// PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader is a Reader for the PublicUpgradeHeadlessAccountWithVerificationCodeV4 structure.
type PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4OK creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4OK with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4OK() *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4OK{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4OK handles this case with default header values.

  OK
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4OK struct {
	Payload *iamclientmodels.AccountUserResponseV4
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK) GetPayload() *iamclientmodels.AccountUserResponseV4 {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountUserResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest() *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10155</td><td>country is not defined</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized() *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden() *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10152</td><td>verification code not found</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10136</td><td>code is either been used or not valid anymore</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10149</td><td>verification contact type doesn't match</td></tr><tr><td>10148</td><td>verification code context doesn't match the required context</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound() *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict() *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10153</td><td>user exist</td></tr><tr><td>10170</td><td>account is already a full account</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError creates a PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError with default headers values
func NewPublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError() *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError {
	return &PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError{}
}

/*PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
