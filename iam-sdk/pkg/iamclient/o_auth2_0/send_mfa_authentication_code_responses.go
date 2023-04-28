// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// SendMFAAuthenticationCodeReader is a Reader for the SendMFAAuthenticationCode structure.
type SendMFAAuthenticationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendMFAAuthenticationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendMFAAuthenticationCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendMFAAuthenticationCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendMFAAuthenticationCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendMFAAuthenticationCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewSendMFAAuthenticationCodeTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSendMFAAuthenticationCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/mfa/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendMFAAuthenticationCodeNoContent creates a SendMFAAuthenticationCodeNoContent with default headers values
func NewSendMFAAuthenticationCodeNoContent() *SendMFAAuthenticationCodeNoContent {
	return &SendMFAAuthenticationCodeNoContent{}
}

/*SendMFAAuthenticationCodeNoContent handles this case with default header values.

  Code sent
*/
type SendMFAAuthenticationCodeNoContent struct {
}

func (o *SendMFAAuthenticationCodeNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeNoContent ", 204)
}

func (o *SendMFAAuthenticationCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendMFAAuthenticationCodeBadRequest creates a SendMFAAuthenticationCodeBadRequest with default headers values
func NewSendMFAAuthenticationCodeBadRequest() *SendMFAAuthenticationCodeBadRequest {
	return &SendMFAAuthenticationCodeBadRequest{}
}

/*SendMFAAuthenticationCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10189</td><td>invalid factor</td></tr></table>
*/
type SendMFAAuthenticationCodeBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendMFAAuthenticationCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendMFAAuthenticationCodeBadRequest) ToJSONString() string {
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

func (o *SendMFAAuthenticationCodeBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendMFAAuthenticationCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendMFAAuthenticationCodeForbidden creates a SendMFAAuthenticationCodeForbidden with default headers values
func NewSendMFAAuthenticationCodeForbidden() *SendMFAAuthenticationCodeForbidden {
	return &SendMFAAuthenticationCodeForbidden{}
}

/*SendMFAAuthenticationCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type SendMFAAuthenticationCodeForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendMFAAuthenticationCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendMFAAuthenticationCodeForbidden) ToJSONString() string {
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

func (o *SendMFAAuthenticationCodeForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendMFAAuthenticationCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendMFAAuthenticationCodeNotFound creates a SendMFAAuthenticationCodeNotFound with default headers values
func NewSendMFAAuthenticationCodeNotFound() *SendMFAAuthenticationCodeNotFound {
	return &SendMFAAuthenticationCodeNotFound{}
}

/*SendMFAAuthenticationCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type SendMFAAuthenticationCodeNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendMFAAuthenticationCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendMFAAuthenticationCodeNotFound) ToJSONString() string {
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

func (o *SendMFAAuthenticationCodeNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendMFAAuthenticationCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendMFAAuthenticationCodeTooManyRequests creates a SendMFAAuthenticationCodeTooManyRequests with default headers values
func NewSendMFAAuthenticationCodeTooManyRequests() *SendMFAAuthenticationCodeTooManyRequests {
	return &SendMFAAuthenticationCodeTooManyRequests{}
}

/*SendMFAAuthenticationCodeTooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type SendMFAAuthenticationCodeTooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendMFAAuthenticationCodeTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *SendMFAAuthenticationCodeTooManyRequests) ToJSONString() string {
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

func (o *SendMFAAuthenticationCodeTooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendMFAAuthenticationCodeTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSendMFAAuthenticationCodeInternalServerError creates a SendMFAAuthenticationCodeInternalServerError with default headers values
func NewSendMFAAuthenticationCodeInternalServerError() *SendMFAAuthenticationCodeInternalServerError {
	return &SendMFAAuthenticationCodeInternalServerError{}
}

/*SendMFAAuthenticationCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SendMFAAuthenticationCodeInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendMFAAuthenticationCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/code][%d] sendMfaAuthenticationCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SendMFAAuthenticationCodeInternalServerError) ToJSONString() string {
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

func (o *SendMFAAuthenticationCodeInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendMFAAuthenticationCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
