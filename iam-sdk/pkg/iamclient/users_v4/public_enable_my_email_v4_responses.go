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

// PublicEnableMyEmailV4Reader is a Reader for the PublicEnableMyEmailV4 structure.
type PublicEnableMyEmailV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicEnableMyEmailV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicEnableMyEmailV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicEnableMyEmailV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicEnableMyEmailV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicEnableMyEmailV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicEnableMyEmailV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicEnableMyEmailV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicEnableMyEmailV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicEnableMyEmailV4NoContent creates a PublicEnableMyEmailV4NoContent with default headers values
func NewPublicEnableMyEmailV4NoContent() *PublicEnableMyEmailV4NoContent {
	return &PublicEnableMyEmailV4NoContent{}
}

/*PublicEnableMyEmailV4NoContent handles this case with default header values.

  email enabled
*/
type PublicEnableMyEmailV4NoContent struct {
}

func (o *PublicEnableMyEmailV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4NoContent ", 204)
}

func (o *PublicEnableMyEmailV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicEnableMyEmailV4BadRequest creates a PublicEnableMyEmailV4BadRequest with default headers values
func NewPublicEnableMyEmailV4BadRequest() *PublicEnableMyEmailV4BadRequest {
	return &PublicEnableMyEmailV4BadRequest{}
}

/*PublicEnableMyEmailV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicEnableMyEmailV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4BadRequest) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyEmailV4Unauthorized creates a PublicEnableMyEmailV4Unauthorized with default headers values
func NewPublicEnableMyEmailV4Unauthorized() *PublicEnableMyEmailV4Unauthorized {
	return &PublicEnableMyEmailV4Unauthorized{}
}

/*PublicEnableMyEmailV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicEnableMyEmailV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4Unauthorized) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyEmailV4Forbidden creates a PublicEnableMyEmailV4Forbidden with default headers values
func NewPublicEnableMyEmailV4Forbidden() *PublicEnableMyEmailV4Forbidden {
	return &PublicEnableMyEmailV4Forbidden{}
}

/*PublicEnableMyEmailV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type PublicEnableMyEmailV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4Forbidden) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyEmailV4NotFound creates a PublicEnableMyEmailV4NotFound with default headers values
func NewPublicEnableMyEmailV4NotFound() *PublicEnableMyEmailV4NotFound {
	return &PublicEnableMyEmailV4NotFound{}
}

/*PublicEnableMyEmailV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicEnableMyEmailV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4NotFound) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyEmailV4Conflict creates a PublicEnableMyEmailV4Conflict with default headers values
func NewPublicEnableMyEmailV4Conflict() *PublicEnableMyEmailV4Conflict {
	return &PublicEnableMyEmailV4Conflict{}
}

/*PublicEnableMyEmailV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type PublicEnableMyEmailV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4Conflict) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyEmailV4InternalServerError creates a PublicEnableMyEmailV4InternalServerError with default headers values
func NewPublicEnableMyEmailV4InternalServerError() *PublicEnableMyEmailV4InternalServerError {
	return &PublicEnableMyEmailV4InternalServerError{}
}

/*PublicEnableMyEmailV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicEnableMyEmailV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyEmailV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable][%d] publicEnableMyEmailV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicEnableMyEmailV4InternalServerError) ToJSONString() string {
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

func (o *PublicEnableMyEmailV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyEmailV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
