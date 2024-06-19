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

// AdminGetMyMFAStatusV4Reader is a Reader for the AdminGetMyMFAStatusV4 structure.
type AdminGetMyMFAStatusV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMyMFAStatusV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMyMFAStatusV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMyMFAStatusV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMyMFAStatusV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetMyMFAStatusV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMyMFAStatusV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMyMFAStatusV4OK creates a AdminGetMyMFAStatusV4OK with default headers values
func NewAdminGetMyMFAStatusV4OK() *AdminGetMyMFAStatusV4OK {
	return &AdminGetMyMFAStatusV4OK{}
}

/*AdminGetMyMFAStatusV4OK handles this case with default header values.

  MFA status returned
*/
type AdminGetMyMFAStatusV4OK struct {
	Payload *iamclientmodels.ModelUserMFAStatusResponseV4
}

func (o *AdminGetMyMFAStatusV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/status][%d] adminGetMyMfaStatusV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMyMFAStatusV4OK) ToJSONString() string {
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

func (o *AdminGetMyMFAStatusV4OK) GetPayload() *iamclientmodels.ModelUserMFAStatusResponseV4 {
	return o.Payload
}

func (o *AdminGetMyMFAStatusV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetMyMFAStatusV4Unauthorized creates a AdminGetMyMFAStatusV4Unauthorized with default headers values
func NewAdminGetMyMFAStatusV4Unauthorized() *AdminGetMyMFAStatusV4Unauthorized {
	return &AdminGetMyMFAStatusV4Unauthorized{}
}

/*AdminGetMyMFAStatusV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetMyMFAStatusV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyMFAStatusV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/status][%d] adminGetMyMfaStatusV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMyMFAStatusV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetMyMFAStatusV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyMFAStatusV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetMyMFAStatusV4Forbidden creates a AdminGetMyMFAStatusV4Forbidden with default headers values
func NewAdminGetMyMFAStatusV4Forbidden() *AdminGetMyMFAStatusV4Forbidden {
	return &AdminGetMyMFAStatusV4Forbidden{}
}

/*AdminGetMyMFAStatusV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminGetMyMFAStatusV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyMFAStatusV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/status][%d] adminGetMyMfaStatusV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMyMFAStatusV4Forbidden) ToJSONString() string {
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

func (o *AdminGetMyMFAStatusV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyMFAStatusV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetMyMFAStatusV4NotFound creates a AdminGetMyMFAStatusV4NotFound with default headers values
func NewAdminGetMyMFAStatusV4NotFound() *AdminGetMyMFAStatusV4NotFound {
	return &AdminGetMyMFAStatusV4NotFound{}
}

/*AdminGetMyMFAStatusV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetMyMFAStatusV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyMFAStatusV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/status][%d] adminGetMyMfaStatusV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetMyMFAStatusV4NotFound) ToJSONString() string {
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

func (o *AdminGetMyMFAStatusV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyMFAStatusV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetMyMFAStatusV4InternalServerError creates a AdminGetMyMFAStatusV4InternalServerError with default headers values
func NewAdminGetMyMFAStatusV4InternalServerError() *AdminGetMyMFAStatusV4InternalServerError {
	return &AdminGetMyMFAStatusV4InternalServerError{}
}

/*AdminGetMyMFAStatusV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetMyMFAStatusV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyMFAStatusV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/status][%d] adminGetMyMfaStatusV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMyMFAStatusV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetMyMFAStatusV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyMFAStatusV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
