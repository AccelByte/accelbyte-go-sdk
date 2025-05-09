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

// PublicGenerateMyAuthenticatorKeyV4Reader is a Reader for the PublicGenerateMyAuthenticatorKeyV4 structure.
type PublicGenerateMyAuthenticatorKeyV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGenerateMyAuthenticatorKeyV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGenerateMyAuthenticatorKeyV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGenerateMyAuthenticatorKeyV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGenerateMyAuthenticatorKeyV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGenerateMyAuthenticatorKeyV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGenerateMyAuthenticatorKeyV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGenerateMyAuthenticatorKeyV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4OK creates a PublicGenerateMyAuthenticatorKeyV4OK with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4OK() *PublicGenerateMyAuthenticatorKeyV4OK {
	return &PublicGenerateMyAuthenticatorKeyV4OK{}
}

/*PublicGenerateMyAuthenticatorKeyV4OK handles this case with default header values.

  Key generated
*/
type PublicGenerateMyAuthenticatorKeyV4OK struct {
	Payload *iamclientmodels.ModelAuthenticatorKeyResponseV4
}

func (o *PublicGenerateMyAuthenticatorKeyV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4OK) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4OK) GetPayload() *iamclientmodels.ModelAuthenticatorKeyResponseV4 {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyAuthenticatorKeyV4BadRequest creates a PublicGenerateMyAuthenticatorKeyV4BadRequest with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4BadRequest() *PublicGenerateMyAuthenticatorKeyV4BadRequest {
	return &PublicGenerateMyAuthenticatorKeyV4BadRequest{}
}

/*PublicGenerateMyAuthenticatorKeyV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicGenerateMyAuthenticatorKeyV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyAuthenticatorKeyV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4BadRequest) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyAuthenticatorKeyV4Unauthorized creates a PublicGenerateMyAuthenticatorKeyV4Unauthorized with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4Unauthorized() *PublicGenerateMyAuthenticatorKeyV4Unauthorized {
	return &PublicGenerateMyAuthenticatorKeyV4Unauthorized{}
}

/*PublicGenerateMyAuthenticatorKeyV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGenerateMyAuthenticatorKeyV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyAuthenticatorKeyV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4Unauthorized) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyAuthenticatorKeyV4Forbidden creates a PublicGenerateMyAuthenticatorKeyV4Forbidden with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4Forbidden() *PublicGenerateMyAuthenticatorKeyV4Forbidden {
	return &PublicGenerateMyAuthenticatorKeyV4Forbidden{}
}

/*PublicGenerateMyAuthenticatorKeyV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGenerateMyAuthenticatorKeyV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyAuthenticatorKeyV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4Forbidden) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyAuthenticatorKeyV4NotFound creates a PublicGenerateMyAuthenticatorKeyV4NotFound with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4NotFound() *PublicGenerateMyAuthenticatorKeyV4NotFound {
	return &PublicGenerateMyAuthenticatorKeyV4NotFound{}
}

/*PublicGenerateMyAuthenticatorKeyV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGenerateMyAuthenticatorKeyV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyAuthenticatorKeyV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4NotFound) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyAuthenticatorKeyV4InternalServerError creates a PublicGenerateMyAuthenticatorKeyV4InternalServerError with default headers values
func NewPublicGenerateMyAuthenticatorKeyV4InternalServerError() *PublicGenerateMyAuthenticatorKeyV4InternalServerError {
	return &PublicGenerateMyAuthenticatorKeyV4InternalServerError{}
}

/*PublicGenerateMyAuthenticatorKeyV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGenerateMyAuthenticatorKeyV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyAuthenticatorKeyV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key][%d] publicGenerateMyAuthenticatorKeyV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGenerateMyAuthenticatorKeyV4InternalServerError) ToJSONString() string {
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

func (o *PublicGenerateMyAuthenticatorKeyV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyAuthenticatorKeyV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
