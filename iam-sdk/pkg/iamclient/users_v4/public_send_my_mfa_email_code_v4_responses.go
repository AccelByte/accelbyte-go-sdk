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

// PublicSendMyMFAEmailCodeV4Reader is a Reader for the PublicSendMyMFAEmailCodeV4 structure.
type PublicSendMyMFAEmailCodeV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSendMyMFAEmailCodeV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSendMyMFAEmailCodeV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSendMyMFAEmailCodeV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSendMyMFAEmailCodeV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSendMyMFAEmailCodeV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSendMyMFAEmailCodeV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSendMyMFAEmailCodeV4TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSendMyMFAEmailCodeV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSendMyMFAEmailCodeV4NoContent creates a PublicSendMyMFAEmailCodeV4NoContent with default headers values
func NewPublicSendMyMFAEmailCodeV4NoContent() *PublicSendMyMFAEmailCodeV4NoContent {
	return &PublicSendMyMFAEmailCodeV4NoContent{}
}

/*PublicSendMyMFAEmailCodeV4NoContent handles this case with default header values.

  code sent
*/
type PublicSendMyMFAEmailCodeV4NoContent struct {
}

func (o *PublicSendMyMFAEmailCodeV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4NoContent ", 204)
}

func (o *PublicSendMyMFAEmailCodeV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSendMyMFAEmailCodeV4BadRequest creates a PublicSendMyMFAEmailCodeV4BadRequest with default headers values
func NewPublicSendMyMFAEmailCodeV4BadRequest() *PublicSendMyMFAEmailCodeV4BadRequest {
	return &PublicSendMyMFAEmailCodeV4BadRequest{}
}

/*PublicSendMyMFAEmailCodeV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4BadRequest) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSendMyMFAEmailCodeV4Unauthorized creates a PublicSendMyMFAEmailCodeV4Unauthorized with default headers values
func NewPublicSendMyMFAEmailCodeV4Unauthorized() *PublicSendMyMFAEmailCodeV4Unauthorized {
	return &PublicSendMyMFAEmailCodeV4Unauthorized{}
}

/*PublicSendMyMFAEmailCodeV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4Unauthorized) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSendMyMFAEmailCodeV4Forbidden creates a PublicSendMyMFAEmailCodeV4Forbidden with default headers values
func NewPublicSendMyMFAEmailCodeV4Forbidden() *PublicSendMyMFAEmailCodeV4Forbidden {
	return &PublicSendMyMFAEmailCodeV4Forbidden{}
}

/*PublicSendMyMFAEmailCodeV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4Forbidden) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSendMyMFAEmailCodeV4NotFound creates a PublicSendMyMFAEmailCodeV4NotFound with default headers values
func NewPublicSendMyMFAEmailCodeV4NotFound() *PublicSendMyMFAEmailCodeV4NotFound {
	return &PublicSendMyMFAEmailCodeV4NotFound{}
}

/*PublicSendMyMFAEmailCodeV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4NotFound) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSendMyMFAEmailCodeV4TooManyRequests creates a PublicSendMyMFAEmailCodeV4TooManyRequests with default headers values
func NewPublicSendMyMFAEmailCodeV4TooManyRequests() *PublicSendMyMFAEmailCodeV4TooManyRequests {
	return &PublicSendMyMFAEmailCodeV4TooManyRequests{}
}

/*PublicSendMyMFAEmailCodeV4TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4TooManyRequests) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSendMyMFAEmailCodeV4InternalServerError creates a PublicSendMyMFAEmailCodeV4InternalServerError with default headers values
func NewPublicSendMyMFAEmailCodeV4InternalServerError() *PublicSendMyMFAEmailCodeV4InternalServerError {
	return &PublicSendMyMFAEmailCodeV4InternalServerError{}
}

/*PublicSendMyMFAEmailCodeV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicSendMyMFAEmailCodeV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendMyMFAEmailCodeV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code][%d] publicSendMyMfaEmailCodeV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSendMyMFAEmailCodeV4InternalServerError) ToJSONString() string {
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

func (o *PublicSendMyMFAEmailCodeV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendMyMFAEmailCodeV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
