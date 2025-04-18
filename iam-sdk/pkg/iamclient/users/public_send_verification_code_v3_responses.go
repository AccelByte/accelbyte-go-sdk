// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicSendVerificationCodeV3Reader is a Reader for the PublicSendVerificationCodeV3 structure.
type PublicSendVerificationCodeV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSendVerificationCodeV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSendVerificationCodeV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSendVerificationCodeV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSendVerificationCodeV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSendVerificationCodeV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSendVerificationCodeV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSendVerificationCodeV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSendVerificationCodeV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/code/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSendVerificationCodeV3NoContent creates a PublicSendVerificationCodeV3NoContent with default headers values
func NewPublicSendVerificationCodeV3NoContent() *PublicSendVerificationCodeV3NoContent {
	return &PublicSendVerificationCodeV3NoContent{}
}

/*PublicSendVerificationCodeV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicSendVerificationCodeV3NoContent struct {
}

func (o *PublicSendVerificationCodeV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3NoContent ", 204)
}

func (o *PublicSendVerificationCodeV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSendVerificationCodeV3BadRequest creates a PublicSendVerificationCodeV3BadRequest with default headers values
func NewPublicSendVerificationCodeV3BadRequest() *PublicSendVerificationCodeV3BadRequest {
	return &PublicSendVerificationCodeV3BadRequest{}
}

/*PublicSendVerificationCodeV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicSendVerificationCodeV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3BadRequest) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationCodeV3Unauthorized creates a PublicSendVerificationCodeV3Unauthorized with default headers values
func NewPublicSendVerificationCodeV3Unauthorized() *PublicSendVerificationCodeV3Unauthorized {
	return &PublicSendVerificationCodeV3Unauthorized{}
}

/*PublicSendVerificationCodeV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicSendVerificationCodeV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3Unauthorized) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationCodeV3Forbidden creates a PublicSendVerificationCodeV3Forbidden with default headers values
func NewPublicSendVerificationCodeV3Forbidden() *PublicSendVerificationCodeV3Forbidden {
	return &PublicSendVerificationCodeV3Forbidden{}
}

/*PublicSendVerificationCodeV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10146</td><td>userID not match</td></tr></table>
*/
type PublicSendVerificationCodeV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3Forbidden) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationCodeV3NotFound creates a PublicSendVerificationCodeV3NotFound with default headers values
func NewPublicSendVerificationCodeV3NotFound() *PublicSendVerificationCodeV3NotFound {
	return &PublicSendVerificationCodeV3NotFound{}
}

/*PublicSendVerificationCodeV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicSendVerificationCodeV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3NotFound) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationCodeV3Conflict creates a PublicSendVerificationCodeV3Conflict with default headers values
func NewPublicSendVerificationCodeV3Conflict() *PublicSendVerificationCodeV3Conflict {
	return &PublicSendVerificationCodeV3Conflict{}
}

/*PublicSendVerificationCodeV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10140</td><td>user verified</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type PublicSendVerificationCodeV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3Conflict) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationCodeV3TooManyRequests creates a PublicSendVerificationCodeV3TooManyRequests with default headers values
func NewPublicSendVerificationCodeV3TooManyRequests() *PublicSendVerificationCodeV3TooManyRequests {
	return &PublicSendVerificationCodeV3TooManyRequests{}
}

/*PublicSendVerificationCodeV3TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicSendVerificationCodeV3TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationCodeV3TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/code/request][%d] publicSendVerificationCodeV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSendVerificationCodeV3TooManyRequests) ToJSONString() string {
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

func (o *PublicSendVerificationCodeV3TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationCodeV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
