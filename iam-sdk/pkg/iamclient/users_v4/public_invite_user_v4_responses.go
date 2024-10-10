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

// PublicInviteUserV4Reader is a Reader for the PublicInviteUserV4 structure.
type PublicInviteUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicInviteUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicInviteUserV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicInviteUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicInviteUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicInviteUserV4UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicInviteUserV4TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicInviteUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/users/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicInviteUserV4Created creates a PublicInviteUserV4Created with default headers values
func NewPublicInviteUserV4Created() *PublicInviteUserV4Created {
	return &PublicInviteUserV4Created{}
}

/*PublicInviteUserV4Created handles this case with default header values.

  Created
*/
type PublicInviteUserV4Created struct {
	Payload *iamclientmodels.ModelInviteUserResponseV3
}

func (o *PublicInviteUserV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4Created  %+v", 201, o.ToJSONString())
}

func (o *PublicInviteUserV4Created) ToJSONString() string {
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

func (o *PublicInviteUserV4Created) GetPayload() *iamclientmodels.ModelInviteUserResponseV3 {
	return o.Payload
}

func (o *PublicInviteUserV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelInviteUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicInviteUserV4BadRequest creates a PublicInviteUserV4BadRequest with default headers values
func NewPublicInviteUserV4BadRequest() *PublicInviteUserV4BadRequest {
	return &PublicInviteUserV4BadRequest{}
}

/*PublicInviteUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicInviteUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicInviteUserV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicInviteUserV4BadRequest) ToJSONString() string {
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

func (o *PublicInviteUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicInviteUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicInviteUserV4Conflict creates a PublicInviteUserV4Conflict with default headers values
func NewPublicInviteUserV4Conflict() *PublicInviteUserV4Conflict {
	return &PublicInviteUserV4Conflict{}
}

/*PublicInviteUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10207</td><td>user namespace is not available</td></tr></table>
*/
type PublicInviteUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicInviteUserV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicInviteUserV4Conflict) ToJSONString() string {
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

func (o *PublicInviteUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicInviteUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicInviteUserV4UnprocessableEntity creates a PublicInviteUserV4UnprocessableEntity with default headers values
func NewPublicInviteUserV4UnprocessableEntity() *PublicInviteUserV4UnprocessableEntity {
	return &PublicInviteUserV4UnprocessableEntity{}
}

/*PublicInviteUserV4UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10183</td><td>unprocessable entity</td></tr></table>
*/
type PublicInviteUserV4UnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicInviteUserV4UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicInviteUserV4UnprocessableEntity) ToJSONString() string {
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

func (o *PublicInviteUserV4UnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicInviteUserV4UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicInviteUserV4TooManyRequests creates a PublicInviteUserV4TooManyRequests with default headers values
func NewPublicInviteUserV4TooManyRequests() *PublicInviteUserV4TooManyRequests {
	return &PublicInviteUserV4TooManyRequests{}
}

/*PublicInviteUserV4TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicInviteUserV4TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicInviteUserV4TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicInviteUserV4TooManyRequests) ToJSONString() string {
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

func (o *PublicInviteUserV4TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicInviteUserV4TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicInviteUserV4InternalServerError creates a PublicInviteUserV4InternalServerError with default headers values
func NewPublicInviteUserV4InternalServerError() *PublicInviteUserV4InternalServerError {
	return &PublicInviteUserV4InternalServerError{}
}

/*PublicInviteUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicInviteUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicInviteUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/users/invite][%d] publicInviteUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicInviteUserV4InternalServerError) ToJSONString() string {
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

func (o *PublicInviteUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicInviteUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
