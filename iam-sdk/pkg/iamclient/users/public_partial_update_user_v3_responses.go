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

// PublicPartialUpdateUserV3Reader is a Reader for the PublicPartialUpdateUserV3 structure.
type PublicPartialUpdateUserV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartialUpdateUserV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPartialUpdateUserV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartialUpdateUserV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartialUpdateUserV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPartialUpdateUserV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicPartialUpdateUserV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartialUpdateUserV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/public/namespaces/{namespace}/users/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartialUpdateUserV3OK creates a PublicPartialUpdateUserV3OK with default headers values
func NewPublicPartialUpdateUserV3OK() *PublicPartialUpdateUserV3OK {
	return &PublicPartialUpdateUserV3OK{}
}

/*PublicPartialUpdateUserV3OK handles this case with default header values.

  OK
*/
type PublicPartialUpdateUserV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicPartialUpdateUserV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3OK) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartialUpdateUserV3BadRequest creates a PublicPartialUpdateUserV3BadRequest with default headers values
func NewPublicPartialUpdateUserV3BadRequest() *PublicPartialUpdateUserV3BadRequest {
	return &PublicPartialUpdateUserV3BadRequest{}
}

/*PublicPartialUpdateUserV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10154</td><td>country not found</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type PublicPartialUpdateUserV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPartialUpdateUserV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3BadRequest) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartialUpdateUserV3Unauthorized creates a PublicPartialUpdateUserV3Unauthorized with default headers values
func NewPublicPartialUpdateUserV3Unauthorized() *PublicPartialUpdateUserV3Unauthorized {
	return &PublicPartialUpdateUserV3Unauthorized{}
}

/*PublicPartialUpdateUserV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicPartialUpdateUserV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPartialUpdateUserV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3Unauthorized) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartialUpdateUserV3Forbidden creates a PublicPartialUpdateUserV3Forbidden with default headers values
func NewPublicPartialUpdateUserV3Forbidden() *PublicPartialUpdateUserV3Forbidden {
	return &PublicPartialUpdateUserV3Forbidden{}
}

/*PublicPartialUpdateUserV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr><tr><td>10235</td><td>date of birth not allowed to update</td></tr><tr><td>10236</td><td>username not allowed to update</td></tr><tr><td>10237</td><td>display name not allowed to update</td></tr><tr><td>10238</td><td>country not allowed to update</td></tr></table>
*/
type PublicPartialUpdateUserV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPartialUpdateUserV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3Forbidden) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartialUpdateUserV3Conflict creates a PublicPartialUpdateUserV3Conflict with default headers values
func NewPublicPartialUpdateUserV3Conflict() *PublicPartialUpdateUserV3Conflict {
	return &PublicPartialUpdateUserV3Conflict{}
}

/*PublicPartialUpdateUserV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type PublicPartialUpdateUserV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPartialUpdateUserV3Conflict) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3Conflict) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPartialUpdateUserV3InternalServerError creates a PublicPartialUpdateUserV3InternalServerError with default headers values
func NewPublicPartialUpdateUserV3InternalServerError() *PublicPartialUpdateUserV3InternalServerError {
	return &PublicPartialUpdateUserV3InternalServerError{}
}

/*PublicPartialUpdateUserV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicPartialUpdateUserV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPartialUpdateUserV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/public/namespaces/{namespace}/users/me][%d] publicPartialUpdateUserV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartialUpdateUserV3InternalServerError) ToJSONString() string {
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

func (o *PublicPartialUpdateUserV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPartialUpdateUserV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
