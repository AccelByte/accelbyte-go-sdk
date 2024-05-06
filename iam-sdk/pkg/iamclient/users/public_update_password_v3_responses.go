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

// PublicUpdatePasswordV3Reader is a Reader for the PublicUpdatePasswordV3 structure.
type PublicUpdatePasswordV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdatePasswordV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUpdatePasswordV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdatePasswordV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdatePasswordV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewPublicUpdatePasswordV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdatePasswordV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/public/namespaces/{namespace}/users/me/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdatePasswordV3NoContent creates a PublicUpdatePasswordV3NoContent with default headers values
func NewPublicUpdatePasswordV3NoContent() *PublicUpdatePasswordV3NoContent {
	return &PublicUpdatePasswordV3NoContent{}
}

/*PublicUpdatePasswordV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicUpdatePasswordV3NoContent struct {
}

func (o *PublicUpdatePasswordV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/public/namespaces/{namespace}/users/me/password][%d] publicUpdatePasswordV3NoContent ", 204)
}

func (o *PublicUpdatePasswordV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdatePasswordV3BadRequest creates a PublicUpdatePasswordV3BadRequest with default headers values
func NewPublicUpdatePasswordV3BadRequest() *PublicUpdatePasswordV3BadRequest {
	return &PublicUpdatePasswordV3BadRequest{}
}

/*PublicUpdatePasswordV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10142</td><td>new password cannot be same with original</td></tr><tr><td>10143</td><td>password not match</td></tr></table>
*/
type PublicUpdatePasswordV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/public/namespaces/{namespace}/users/me/password][%d] publicUpdatePasswordV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdatePasswordV3BadRequest) ToJSONString() string {
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

func (o *PublicUpdatePasswordV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdatePasswordV3Unauthorized creates a PublicUpdatePasswordV3Unauthorized with default headers values
func NewPublicUpdatePasswordV3Unauthorized() *PublicUpdatePasswordV3Unauthorized {
	return &PublicUpdatePasswordV3Unauthorized{}
}

/*PublicUpdatePasswordV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpdatePasswordV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/public/namespaces/{namespace}/users/me/password][%d] publicUpdatePasswordV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdatePasswordV3Unauthorized) ToJSONString() string {
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

func (o *PublicUpdatePasswordV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdatePasswordV3TooManyRequests creates a PublicUpdatePasswordV3TooManyRequests with default headers values
func NewPublicUpdatePasswordV3TooManyRequests() *PublicUpdatePasswordV3TooManyRequests {
	return &PublicUpdatePasswordV3TooManyRequests{}
}

/*PublicUpdatePasswordV3TooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type PublicUpdatePasswordV3TooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV3TooManyRequests) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/public/namespaces/{namespace}/users/me/password][%d] publicUpdatePasswordV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *PublicUpdatePasswordV3TooManyRequests) ToJSONString() string {
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

func (o *PublicUpdatePasswordV3TooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdatePasswordV3InternalServerError creates a PublicUpdatePasswordV3InternalServerError with default headers values
func NewPublicUpdatePasswordV3InternalServerError() *PublicUpdatePasswordV3InternalServerError {
	return &PublicUpdatePasswordV3InternalServerError{}
}

/*PublicUpdatePasswordV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpdatePasswordV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/public/namespaces/{namespace}/users/me/password][%d] publicUpdatePasswordV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdatePasswordV3InternalServerError) ToJSONString() string {
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

func (o *PublicUpdatePasswordV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
