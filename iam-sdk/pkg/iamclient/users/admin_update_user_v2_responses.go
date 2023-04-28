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

// AdminUpdateUserV2Reader is a Reader for the AdminUpdateUserV2 structure.
type AdminUpdateUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateUserV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateUserV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserV2OK creates a AdminUpdateUserV2OK with default headers values
func NewAdminUpdateUserV2OK() *AdminUpdateUserV2OK {
	return &AdminUpdateUserV2OK{}
}

/*AdminUpdateUserV2OK handles this case with default header values.

  OK
*/
type AdminUpdateUserV2OK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *AdminUpdateUserV2OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateUserV2OK) ToJSONString() string {
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

func (o *AdminUpdateUserV2OK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *AdminUpdateUserV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateUserV2BadRequest creates a AdminUpdateUserV2BadRequest with default headers values
func NewAdminUpdateUserV2BadRequest() *AdminUpdateUserV2BadRequest {
	return &AdminUpdateUserV2BadRequest{}
}

/*AdminUpdateUserV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10131</td><td>invalid date of birth</td></tr><tr><td>10155</td><td>country is not defined</td></tr><tr><td>10154</td><td>country not found</td></tr><tr><td>10130</td><td>user under age</td></tr><tr><td>10132</td><td>invalid email address</td></tr></table>
*/
type AdminUpdateUserV2BadRequest struct {
}

func (o *AdminUpdateUserV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2BadRequest ", 400)
}

func (o *AdminUpdateUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateUserV2Unauthorized creates a AdminUpdateUserV2Unauthorized with default headers values
func NewAdminUpdateUserV2Unauthorized() *AdminUpdateUserV2Unauthorized {
	return &AdminUpdateUserV2Unauthorized{}
}

/*AdminUpdateUserV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateUserV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV2NotFound creates a AdminUpdateUserV2NotFound with default headers values
func NewAdminUpdateUserV2NotFound() *AdminUpdateUserV2NotFound {
	return &AdminUpdateUserV2NotFound{}
}

/*AdminUpdateUserV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminUpdateUserV2NotFound struct {
}

func (o *AdminUpdateUserV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2NotFound ", 404)
}

func (o *AdminUpdateUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateUserV2Conflict creates a AdminUpdateUserV2Conflict with default headers values
func NewAdminUpdateUserV2Conflict() *AdminUpdateUserV2Conflict {
	return &AdminUpdateUserV2Conflict{}
}

/*AdminUpdateUserV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type AdminUpdateUserV2Conflict struct {
}

func (o *AdminUpdateUserV2Conflict) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2Conflict ", 409)
}

func (o *AdminUpdateUserV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateUserV2InternalServerError creates a AdminUpdateUserV2InternalServerError with default headers values
func NewAdminUpdateUserV2InternalServerError() *AdminUpdateUserV2InternalServerError {
	return &AdminUpdateUserV2InternalServerError{}
}

/*AdminUpdateUserV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateUserV2InternalServerError struct {
}

func (o *AdminUpdateUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV2InternalServerError ", 500)
}

func (o *AdminUpdateUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
