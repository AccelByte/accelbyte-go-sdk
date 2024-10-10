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

// AdminGetUserMFAStatusV4Reader is a Reader for the AdminGetUserMFAStatusV4 structure.
type AdminGetUserMFAStatusV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserMFAStatusV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserMFAStatusV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserMFAStatusV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserMFAStatusV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserMFAStatusV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserMFAStatusV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserMFAStatusV4OK creates a AdminGetUserMFAStatusV4OK with default headers values
func NewAdminGetUserMFAStatusV4OK() *AdminGetUserMFAStatusV4OK {
	return &AdminGetUserMFAStatusV4OK{}
}

/*AdminGetUserMFAStatusV4OK handles this case with default header values.

  OK
*/
type AdminGetUserMFAStatusV4OK struct {
	Payload *iamclientmodels.ModelUserMFAStatusResponseV4
}

func (o *AdminGetUserMFAStatusV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status][%d] adminGetUserMfaStatusV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserMFAStatusV4OK) ToJSONString() string {
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

func (o *AdminGetUserMFAStatusV4OK) GetPayload() *iamclientmodels.ModelUserMFAStatusResponseV4 {
	return o.Payload
}

func (o *AdminGetUserMFAStatusV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserMFAStatusResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserMFAStatusV4Unauthorized creates a AdminGetUserMFAStatusV4Unauthorized with default headers values
func NewAdminGetUserMFAStatusV4Unauthorized() *AdminGetUserMFAStatusV4Unauthorized {
	return &AdminGetUserMFAStatusV4Unauthorized{}
}

/*AdminGetUserMFAStatusV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserMFAStatusV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMFAStatusV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status][%d] adminGetUserMfaStatusV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserMFAStatusV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserMFAStatusV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMFAStatusV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMFAStatusV4Forbidden creates a AdminGetUserMFAStatusV4Forbidden with default headers values
func NewAdminGetUserMFAStatusV4Forbidden() *AdminGetUserMFAStatusV4Forbidden {
	return &AdminGetUserMFAStatusV4Forbidden{}
}

/*AdminGetUserMFAStatusV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserMFAStatusV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMFAStatusV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status][%d] adminGetUserMfaStatusV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserMFAStatusV4Forbidden) ToJSONString() string {
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

func (o *AdminGetUserMFAStatusV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMFAStatusV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMFAStatusV4NotFound creates a AdminGetUserMFAStatusV4NotFound with default headers values
func NewAdminGetUserMFAStatusV4NotFound() *AdminGetUserMFAStatusV4NotFound {
	return &AdminGetUserMFAStatusV4NotFound{}
}

/*AdminGetUserMFAStatusV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetUserMFAStatusV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMFAStatusV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status][%d] adminGetUserMfaStatusV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserMFAStatusV4NotFound) ToJSONString() string {
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

func (o *AdminGetUserMFAStatusV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMFAStatusV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserMFAStatusV4InternalServerError creates a AdminGetUserMFAStatusV4InternalServerError with default headers values
func NewAdminGetUserMFAStatusV4InternalServerError() *AdminGetUserMFAStatusV4InternalServerError {
	return &AdminGetUserMFAStatusV4InternalServerError{}
}

/*AdminGetUserMFAStatusV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserMFAStatusV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserMFAStatusV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status][%d] adminGetUserMfaStatusV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserMFAStatusV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserMFAStatusV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserMFAStatusV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
