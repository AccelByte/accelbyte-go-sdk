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

// PublicForgotPasswordV3Reader is a Reader for the PublicForgotPasswordV3 structure.
type PublicForgotPasswordV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicForgotPasswordV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicForgotPasswordV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicForgotPasswordV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicForgotPasswordV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicForgotPasswordV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/forgot returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicForgotPasswordV3NoContent creates a PublicForgotPasswordV3NoContent with default headers values
func NewPublicForgotPasswordV3NoContent() *PublicForgotPasswordV3NoContent {
	return &PublicForgotPasswordV3NoContent{}
}

/*PublicForgotPasswordV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicForgotPasswordV3NoContent struct {
}

func (o *PublicForgotPasswordV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/forgot][%d] publicForgotPasswordV3NoContent ", 204)
}

func (o *PublicForgotPasswordV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForgotPasswordV3BadRequest creates a PublicForgotPasswordV3BadRequest with default headers values
func NewPublicForgotPasswordV3BadRequest() *PublicForgotPasswordV3BadRequest {
	return &PublicForgotPasswordV3BadRequest{}
}

/*PublicForgotPasswordV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicForgotPasswordV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForgotPasswordV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/forgot][%d] publicForgotPasswordV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicForgotPasswordV3BadRequest) ToJSONString() string {
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

func (o *PublicForgotPasswordV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForgotPasswordV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForgotPasswordV3NotFound creates a PublicForgotPasswordV3NotFound with default headers values
func NewPublicForgotPasswordV3NotFound() *PublicForgotPasswordV3NotFound {
	return &PublicForgotPasswordV3NotFound{}
}

/*PublicForgotPasswordV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicForgotPasswordV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForgotPasswordV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/forgot][%d] publicForgotPasswordV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicForgotPasswordV3NotFound) ToJSONString() string {
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

func (o *PublicForgotPasswordV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForgotPasswordV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForgotPasswordV3TooManyRequests creates a PublicForgotPasswordV3TooManyRequests with default headers values
func NewPublicForgotPasswordV3TooManyRequests() *PublicForgotPasswordV3TooManyRequests {
	return &PublicForgotPasswordV3TooManyRequests{}
}

/*PublicForgotPasswordV3TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicForgotPasswordV3TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForgotPasswordV3TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/forgot][%d] publicForgotPasswordV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicForgotPasswordV3TooManyRequests) ToJSONString() string {
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

func (o *PublicForgotPasswordV3TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForgotPasswordV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
