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

// AdminGetMyOwnMFAStatusV4Reader is a Reader for the AdminGetMyOwnMFAStatusV4 structure.
type AdminGetMyOwnMFAStatusV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMyOwnMFAStatusV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMyOwnMFAStatusV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMyOwnMFAStatusV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMyOwnMFAStatusV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetMyOwnMFAStatusV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMyOwnMFAStatusV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/users/me/mfa/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMyOwnMFAStatusV4OK creates a AdminGetMyOwnMFAStatusV4OK with default headers values
func NewAdminGetMyOwnMFAStatusV4OK() *AdminGetMyOwnMFAStatusV4OK {
	return &AdminGetMyOwnMFAStatusV4OK{}
}

/*AdminGetMyOwnMFAStatusV4OK handles this case with default header values.

  MFA status returned
*/
type AdminGetMyOwnMFAStatusV4OK struct {
	Payload *iamclientmodels.ModelUserMFAStatusResponseV4
}

func (o *AdminGetMyOwnMFAStatusV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/status][%d] adminGetMyOwnMfaStatusV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMyOwnMFAStatusV4OK) ToJSONString() string {
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

func (o *AdminGetMyOwnMFAStatusV4OK) GetPayload() *iamclientmodels.ModelUserMFAStatusResponseV4 {
	return o.Payload
}

func (o *AdminGetMyOwnMFAStatusV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyOwnMFAStatusV4Unauthorized creates a AdminGetMyOwnMFAStatusV4Unauthorized with default headers values
func NewAdminGetMyOwnMFAStatusV4Unauthorized() *AdminGetMyOwnMFAStatusV4Unauthorized {
	return &AdminGetMyOwnMFAStatusV4Unauthorized{}
}

/*AdminGetMyOwnMFAStatusV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetMyOwnMFAStatusV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyOwnMFAStatusV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/status][%d] adminGetMyOwnMfaStatusV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMyOwnMFAStatusV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetMyOwnMFAStatusV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyOwnMFAStatusV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyOwnMFAStatusV4Forbidden creates a AdminGetMyOwnMFAStatusV4Forbidden with default headers values
func NewAdminGetMyOwnMFAStatusV4Forbidden() *AdminGetMyOwnMFAStatusV4Forbidden {
	return &AdminGetMyOwnMFAStatusV4Forbidden{}
}

/*AdminGetMyOwnMFAStatusV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminGetMyOwnMFAStatusV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyOwnMFAStatusV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/status][%d] adminGetMyOwnMfaStatusV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMyOwnMFAStatusV4Forbidden) ToJSONString() string {
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

func (o *AdminGetMyOwnMFAStatusV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyOwnMFAStatusV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyOwnMFAStatusV4NotFound creates a AdminGetMyOwnMFAStatusV4NotFound with default headers values
func NewAdminGetMyOwnMFAStatusV4NotFound() *AdminGetMyOwnMFAStatusV4NotFound {
	return &AdminGetMyOwnMFAStatusV4NotFound{}
}

/*AdminGetMyOwnMFAStatusV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetMyOwnMFAStatusV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyOwnMFAStatusV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/status][%d] adminGetMyOwnMfaStatusV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetMyOwnMFAStatusV4NotFound) ToJSONString() string {
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

func (o *AdminGetMyOwnMFAStatusV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyOwnMFAStatusV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyOwnMFAStatusV4InternalServerError creates a AdminGetMyOwnMFAStatusV4InternalServerError with default headers values
func NewAdminGetMyOwnMFAStatusV4InternalServerError() *AdminGetMyOwnMFAStatusV4InternalServerError {
	return &AdminGetMyOwnMFAStatusV4InternalServerError{}
}

/*AdminGetMyOwnMFAStatusV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetMyOwnMFAStatusV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyOwnMFAStatusV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/status][%d] adminGetMyOwnMfaStatusV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMyOwnMFAStatusV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetMyOwnMFAStatusV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyOwnMFAStatusV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
