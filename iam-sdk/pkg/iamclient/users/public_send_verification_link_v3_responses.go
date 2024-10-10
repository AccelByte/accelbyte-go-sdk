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

// PublicSendVerificationLinkV3Reader is a Reader for the PublicSendVerificationLinkV3 structure.
type PublicSendVerificationLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSendVerificationLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSendVerificationLinkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSendVerificationLinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSendVerificationLinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSendVerificationLinkV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicSendVerificationLinkV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/users/me/verify_link/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSendVerificationLinkV3NoContent creates a PublicSendVerificationLinkV3NoContent with default headers values
func NewPublicSendVerificationLinkV3NoContent() *PublicSendVerificationLinkV3NoContent {
	return &PublicSendVerificationLinkV3NoContent{}
}

/*PublicSendVerificationLinkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicSendVerificationLinkV3NoContent struct {
}

func (o *PublicSendVerificationLinkV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/verify_link/request][%d] publicSendVerificationLinkV3NoContent ", 204)
}

func (o *PublicSendVerificationLinkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSendVerificationLinkV3BadRequest creates a PublicSendVerificationLinkV3BadRequest with default headers values
func NewPublicSendVerificationLinkV3BadRequest() *PublicSendVerificationLinkV3BadRequest {
	return &PublicSendVerificationLinkV3BadRequest{}
}

/*PublicSendVerificationLinkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicSendVerificationLinkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationLinkV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/verify_link/request][%d] publicSendVerificationLinkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSendVerificationLinkV3BadRequest) ToJSONString() string {
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

func (o *PublicSendVerificationLinkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationLinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationLinkV3Unauthorized creates a PublicSendVerificationLinkV3Unauthorized with default headers values
func NewPublicSendVerificationLinkV3Unauthorized() *PublicSendVerificationLinkV3Unauthorized {
	return &PublicSendVerificationLinkV3Unauthorized{}
}

/*PublicSendVerificationLinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicSendVerificationLinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationLinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/verify_link/request][%d] publicSendVerificationLinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSendVerificationLinkV3Unauthorized) ToJSONString() string {
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

func (o *PublicSendVerificationLinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationLinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationLinkV3Conflict creates a PublicSendVerificationLinkV3Conflict with default headers values
func NewPublicSendVerificationLinkV3Conflict() *PublicSendVerificationLinkV3Conflict {
	return &PublicSendVerificationLinkV3Conflict{}
}

/*PublicSendVerificationLinkV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10140</td><td>user verified</td></tr></table>
*/
type PublicSendVerificationLinkV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationLinkV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/verify_link/request][%d] publicSendVerificationLinkV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSendVerificationLinkV3Conflict) ToJSONString() string {
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

func (o *PublicSendVerificationLinkV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationLinkV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSendVerificationLinkV3TooManyRequests creates a PublicSendVerificationLinkV3TooManyRequests with default headers values
func NewPublicSendVerificationLinkV3TooManyRequests() *PublicSendVerificationLinkV3TooManyRequests {
	return &PublicSendVerificationLinkV3TooManyRequests{}
}

/*PublicSendVerificationLinkV3TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicSendVerificationLinkV3TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicSendVerificationLinkV3TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/verify_link/request][%d] publicSendVerificationLinkV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicSendVerificationLinkV3TooManyRequests) ToJSONString() string {
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

func (o *PublicSendVerificationLinkV3TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicSendVerificationLinkV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
