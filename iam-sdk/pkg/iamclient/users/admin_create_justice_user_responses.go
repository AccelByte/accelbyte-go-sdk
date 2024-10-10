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

// AdminCreateJusticeUserReader is a Reader for the AdminCreateJusticeUser structure.
type AdminCreateJusticeUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateJusticeUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateJusticeUserCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateJusticeUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateJusticeUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateJusticeUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateJusticeUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateJusticeUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateJusticeUserCreated creates a AdminCreateJusticeUserCreated with default headers values
func NewAdminCreateJusticeUserCreated() *AdminCreateJusticeUserCreated {
	return &AdminCreateJusticeUserCreated{}
}

/*AdminCreateJusticeUserCreated handles this case with default header values.

  Created
*/
type AdminCreateJusticeUserCreated struct {
	Payload *iamclientmodels.ModelCreateJusticeUserResponse
}

func (o *AdminCreateJusticeUserCreated) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateJusticeUserCreated) ToJSONString() string {
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

func (o *AdminCreateJusticeUserCreated) GetPayload() *iamclientmodels.ModelCreateJusticeUserResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCreateJusticeUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateJusticeUserBadRequest creates a AdminCreateJusticeUserBadRequest with default headers values
func NewAdminCreateJusticeUserBadRequest() *AdminCreateJusticeUserBadRequest {
	return &AdminCreateJusticeUserBadRequest{}
}

/*AdminCreateJusticeUserBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminCreateJusticeUserBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateJusticeUserBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateJusticeUserBadRequest) ToJSONString() string {
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

func (o *AdminCreateJusticeUserBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateJusticeUserUnauthorized creates a AdminCreateJusticeUserUnauthorized with default headers values
func NewAdminCreateJusticeUserUnauthorized() *AdminCreateJusticeUserUnauthorized {
	return &AdminCreateJusticeUserUnauthorized{}
}

/*AdminCreateJusticeUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AdminCreateJusticeUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateJusticeUserUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateJusticeUserUnauthorized) ToJSONString() string {
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

func (o *AdminCreateJusticeUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateJusticeUserForbidden creates a AdminCreateJusticeUserForbidden with default headers values
func NewAdminCreateJusticeUserForbidden() *AdminCreateJusticeUserForbidden {
	return &AdminCreateJusticeUserForbidden{}
}

/*AdminCreateJusticeUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminCreateJusticeUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateJusticeUserForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateJusticeUserForbidden) ToJSONString() string {
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

func (o *AdminCreateJusticeUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateJusticeUserNotFound creates a AdminCreateJusticeUserNotFound with default headers values
func NewAdminCreateJusticeUserNotFound() *AdminCreateJusticeUserNotFound {
	return &AdminCreateJusticeUserNotFound{}
}

/*AdminCreateJusticeUserNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminCreateJusticeUserNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateJusticeUserNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCreateJusticeUserNotFound) ToJSONString() string {
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

func (o *AdminCreateJusticeUserNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateJusticeUserInternalServerError creates a AdminCreateJusticeUserInternalServerError with default headers values
func NewAdminCreateJusticeUserInternalServerError() *AdminCreateJusticeUserInternalServerError {
	return &AdminCreateJusticeUserInternalServerError{}
}

/*AdminCreateJusticeUserInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminCreateJusticeUserInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateJusticeUserInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}][%d] adminCreateJusticeUserInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateJusticeUserInternalServerError) ToJSONString() string {
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

func (o *AdminCreateJusticeUserInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateJusticeUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
