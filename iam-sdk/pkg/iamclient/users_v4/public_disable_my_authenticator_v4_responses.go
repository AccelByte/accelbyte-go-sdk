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

// PublicDisableMyAuthenticatorV4Reader is a Reader for the PublicDisableMyAuthenticatorV4 structure.
type PublicDisableMyAuthenticatorV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDisableMyAuthenticatorV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDisableMyAuthenticatorV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicDisableMyAuthenticatorV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDisableMyAuthenticatorV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicDisableMyAuthenticatorV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDisableMyAuthenticatorV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDisableMyAuthenticatorV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDisableMyAuthenticatorV4NoContent creates a PublicDisableMyAuthenticatorV4NoContent with default headers values
func NewPublicDisableMyAuthenticatorV4NoContent() *PublicDisableMyAuthenticatorV4NoContent {
	return &PublicDisableMyAuthenticatorV4NoContent{}
}

/*PublicDisableMyAuthenticatorV4NoContent handles this case with default header values.

  Authenticator disabled
*/
type PublicDisableMyAuthenticatorV4NoContent struct {
}

func (o *PublicDisableMyAuthenticatorV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4NoContent ", 204)
}

func (o *PublicDisableMyAuthenticatorV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDisableMyAuthenticatorV4BadRequest creates a PublicDisableMyAuthenticatorV4BadRequest with default headers values
func NewPublicDisableMyAuthenticatorV4BadRequest() *PublicDisableMyAuthenticatorV4BadRequest {
	return &PublicDisableMyAuthenticatorV4BadRequest{}
}

/*PublicDisableMyAuthenticatorV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10228</td><td>invalid mfa token</td></tr></table>
*/
type PublicDisableMyAuthenticatorV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyAuthenticatorV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicDisableMyAuthenticatorV4BadRequest) ToJSONString() string {
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

func (o *PublicDisableMyAuthenticatorV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyAuthenticatorV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyAuthenticatorV4Unauthorized creates a PublicDisableMyAuthenticatorV4Unauthorized with default headers values
func NewPublicDisableMyAuthenticatorV4Unauthorized() *PublicDisableMyAuthenticatorV4Unauthorized {
	return &PublicDisableMyAuthenticatorV4Unauthorized{}
}

/*PublicDisableMyAuthenticatorV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDisableMyAuthenticatorV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyAuthenticatorV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDisableMyAuthenticatorV4Unauthorized) ToJSONString() string {
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

func (o *PublicDisableMyAuthenticatorV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyAuthenticatorV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyAuthenticatorV4Forbidden creates a PublicDisableMyAuthenticatorV4Forbidden with default headers values
func NewPublicDisableMyAuthenticatorV4Forbidden() *PublicDisableMyAuthenticatorV4Forbidden {
	return &PublicDisableMyAuthenticatorV4Forbidden{}
}

/*PublicDisableMyAuthenticatorV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicDisableMyAuthenticatorV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyAuthenticatorV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicDisableMyAuthenticatorV4Forbidden) ToJSONString() string {
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

func (o *PublicDisableMyAuthenticatorV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyAuthenticatorV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyAuthenticatorV4NotFound creates a PublicDisableMyAuthenticatorV4NotFound with default headers values
func NewPublicDisableMyAuthenticatorV4NotFound() *PublicDisableMyAuthenticatorV4NotFound {
	return &PublicDisableMyAuthenticatorV4NotFound{}
}

/*PublicDisableMyAuthenticatorV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicDisableMyAuthenticatorV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyAuthenticatorV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDisableMyAuthenticatorV4NotFound) ToJSONString() string {
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

func (o *PublicDisableMyAuthenticatorV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyAuthenticatorV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDisableMyAuthenticatorV4InternalServerError creates a PublicDisableMyAuthenticatorV4InternalServerError with default headers values
func NewPublicDisableMyAuthenticatorV4InternalServerError() *PublicDisableMyAuthenticatorV4InternalServerError {
	return &PublicDisableMyAuthenticatorV4InternalServerError{}
}

/*PublicDisableMyAuthenticatorV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicDisableMyAuthenticatorV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicDisableMyAuthenticatorV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable][%d] publicDisableMyAuthenticatorV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDisableMyAuthenticatorV4InternalServerError) ToJSONString() string {
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

func (o *PublicDisableMyAuthenticatorV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicDisableMyAuthenticatorV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
