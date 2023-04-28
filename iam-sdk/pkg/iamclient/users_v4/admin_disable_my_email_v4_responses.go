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

// AdminDisableMyEmailV4Reader is a Reader for the AdminDisableMyEmailV4 structure.
type AdminDisableMyEmailV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDisableMyEmailV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDisableMyEmailV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDisableMyEmailV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDisableMyEmailV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDisableMyEmailV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDisableMyEmailV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDisableMyEmailV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/email/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDisableMyEmailV4NoContent creates a AdminDisableMyEmailV4NoContent with default headers values
func NewAdminDisableMyEmailV4NoContent() *AdminDisableMyEmailV4NoContent {
	return &AdminDisableMyEmailV4NoContent{}
}

/*AdminDisableMyEmailV4NoContent handles this case with default header values.

  email disabled
*/
type AdminDisableMyEmailV4NoContent struct {
}

func (o *AdminDisableMyEmailV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4NoContent ", 204)
}

func (o *AdminDisableMyEmailV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableMyEmailV4BadRequest creates a AdminDisableMyEmailV4BadRequest with default headers values
func NewAdminDisableMyEmailV4BadRequest() *AdminDisableMyEmailV4BadRequest {
	return &AdminDisableMyEmailV4BadRequest{}
}

/*AdminDisableMyEmailV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminDisableMyEmailV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyEmailV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDisableMyEmailV4BadRequest) ToJSONString() string {
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

func (o *AdminDisableMyEmailV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyEmailV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyEmailV4Unauthorized creates a AdminDisableMyEmailV4Unauthorized with default headers values
func NewAdminDisableMyEmailV4Unauthorized() *AdminDisableMyEmailV4Unauthorized {
	return &AdminDisableMyEmailV4Unauthorized{}
}

/*AdminDisableMyEmailV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDisableMyEmailV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyEmailV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDisableMyEmailV4Unauthorized) ToJSONString() string {
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

func (o *AdminDisableMyEmailV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyEmailV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyEmailV4Forbidden creates a AdminDisableMyEmailV4Forbidden with default headers values
func NewAdminDisableMyEmailV4Forbidden() *AdminDisableMyEmailV4Forbidden {
	return &AdminDisableMyEmailV4Forbidden{}
}

/*AdminDisableMyEmailV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminDisableMyEmailV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyEmailV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDisableMyEmailV4Forbidden) ToJSONString() string {
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

func (o *AdminDisableMyEmailV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyEmailV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyEmailV4NotFound creates a AdminDisableMyEmailV4NotFound with default headers values
func NewAdminDisableMyEmailV4NotFound() *AdminDisableMyEmailV4NotFound {
	return &AdminDisableMyEmailV4NotFound{}
}

/*AdminDisableMyEmailV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDisableMyEmailV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyEmailV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDisableMyEmailV4NotFound) ToJSONString() string {
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

func (o *AdminDisableMyEmailV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyEmailV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDisableMyEmailV4InternalServerError creates a AdminDisableMyEmailV4InternalServerError with default headers values
func NewAdminDisableMyEmailV4InternalServerError() *AdminDisableMyEmailV4InternalServerError {
	return &AdminDisableMyEmailV4InternalServerError{}
}

/*AdminDisableMyEmailV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDisableMyEmailV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableMyEmailV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/email/disable][%d] adminDisableMyEmailV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDisableMyEmailV4InternalServerError) ToJSONString() string {
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

func (o *AdminDisableMyEmailV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableMyEmailV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
