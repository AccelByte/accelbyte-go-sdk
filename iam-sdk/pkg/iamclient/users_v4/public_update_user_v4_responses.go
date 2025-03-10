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

// PublicUpdateUserV4Reader is a Reader for the PublicUpdateUserV4 structure.
type PublicUpdateUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateUserV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateUserV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpdateUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v4/public/namespaces/{namespace}/users/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserV4OK creates a PublicUpdateUserV4OK with default headers values
func NewPublicUpdateUserV4OK() *PublicUpdateUserV4OK {
	return &PublicUpdateUserV4OK{}
}

/*PublicUpdateUserV4OK handles this case with default header values.

  OK
*/
type PublicUpdateUserV4OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicUpdateUserV4OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateUserV4OK) ToJSONString() string {
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

func (o *PublicUpdateUserV4OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicUpdateUserV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserV4BadRequest creates a PublicUpdateUserV4BadRequest with default headers values
func NewPublicUpdateUserV4BadRequest() *PublicUpdateUserV4BadRequest {
	return &PublicUpdateUserV4BadRequest{}
}

/*PublicUpdateUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10154</td><td>country not found</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type PublicUpdateUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserV4BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateUserV4BadRequest) ToJSONString() string {
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

func (o *PublicUpdateUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserV4Unauthorized creates a PublicUpdateUserV4Unauthorized with default headers values
func NewPublicUpdateUserV4Unauthorized() *PublicUpdateUserV4Unauthorized {
	return &PublicUpdateUserV4Unauthorized{}
}

/*PublicUpdateUserV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpdateUserV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserV4Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateUserV4Unauthorized) ToJSONString() string {
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

func (o *PublicUpdateUserV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserV4Forbidden creates a PublicUpdateUserV4Forbidden with default headers values
func NewPublicUpdateUserV4Forbidden() *PublicUpdateUserV4Forbidden {
	return &PublicUpdateUserV4Forbidden{}
}

/*PublicUpdateUserV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr><tr><td>10235</td><td>date of birth not allowed to update</td></tr><tr><td>10236</td><td>username not allowed to update</td></tr><tr><td>10237</td><td>display name not allowed to update</td></tr><tr><td>10238</td><td>country not allowed to update</td></tr></table>
*/
type PublicUpdateUserV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserV4Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateUserV4Forbidden) ToJSONString() string {
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

func (o *PublicUpdateUserV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserV4Conflict creates a PublicUpdateUserV4Conflict with default headers values
func NewPublicUpdateUserV4Conflict() *PublicUpdateUserV4Conflict {
	return &PublicUpdateUserV4Conflict{}
}

/*PublicUpdateUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type PublicUpdateUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserV4Conflict) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpdateUserV4Conflict) ToJSONString() string {
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

func (o *PublicUpdateUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserV4InternalServerError creates a PublicUpdateUserV4InternalServerError with default headers values
func NewPublicUpdateUserV4InternalServerError() *PublicUpdateUserV4InternalServerError {
	return &PublicUpdateUserV4InternalServerError{}
}

/*PublicUpdateUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpdateUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdateUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v4/public/namespaces/{namespace}/users/me][%d] publicUpdateUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateUserV4InternalServerError) ToJSONString() string {
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

func (o *PublicUpdateUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdateUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
