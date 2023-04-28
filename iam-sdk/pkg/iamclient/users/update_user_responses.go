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

// UpdateUserReader is a Reader for the UpdateUser structure.
type UpdateUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateUserConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserOK creates a UpdateUserOK with default headers values
func NewUpdateUserOK() *UpdateUserOK {
	return &UpdateUserOK{}
}

/*UpdateUserOK handles this case with default header values.

  OK
*/
type UpdateUserOK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *UpdateUserOK) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserOK) ToJSONString() string {
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

func (o *UpdateUserOK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *UpdateUserOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserBadRequest creates a UpdateUserBadRequest with default headers values
func NewUpdateUserBadRequest() *UpdateUserBadRequest {
	return &UpdateUserBadRequest{}
}

/*UpdateUserBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10131</td><td>invalid date of birth</td></tr><tr><td>10155</td><td>country is not defined</td></tr><tr><td>10154</td><td>country not found</td></tr><tr><td>10130</td><td>user under age</td></tr><tr><td>10132</td><td>invalid email address</td></tr></table>
*/
type UpdateUserBadRequest struct {
}

func (o *UpdateUserBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserBadRequest ", 400)
}

func (o *UpdateUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateUserUnauthorized creates a UpdateUserUnauthorized with default headers values
func NewUpdateUserUnauthorized() *UpdateUserUnauthorized {
	return &UpdateUserUnauthorized{}
}

/*UpdateUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateUserUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateUserUnauthorized) ToJSONString() string {
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

func (o *UpdateUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserNotFound creates a UpdateUserNotFound with default headers values
func NewUpdateUserNotFound() *UpdateUserNotFound {
	return &UpdateUserNotFound{}
}

/*UpdateUserNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type UpdateUserNotFound struct {
}

func (o *UpdateUserNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserNotFound ", 404)
}

func (o *UpdateUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateUserConflict creates a UpdateUserConflict with default headers values
func NewUpdateUserConflict() *UpdateUserConflict {
	return &UpdateUserConflict{}
}

/*UpdateUserConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type UpdateUserConflict struct {
}

func (o *UpdateUserConflict) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserConflict ", 409)
}

func (o *UpdateUserConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateUserInternalServerError creates a UpdateUserInternalServerError with default headers values
func NewUpdateUserInternalServerError() *UpdateUserInternalServerError {
	return &UpdateUserInternalServerError{}
}

/*UpdateUserInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateUserInternalServerError struct {
}

func (o *UpdateUserInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}][%d] updateUserInternalServerError ", 500)
}

func (o *UpdateUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
