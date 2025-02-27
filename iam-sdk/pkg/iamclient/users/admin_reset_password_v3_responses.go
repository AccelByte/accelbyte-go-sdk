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

// AdminResetPasswordV3Reader is a Reader for the AdminResetPasswordV3 structure.
type AdminResetPasswordV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetPasswordV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetPasswordV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminResetPasswordV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetPasswordV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminResetPasswordV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminResetPasswordV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminResetPasswordV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetPasswordV3NoContent creates a AdminResetPasswordV3NoContent with default headers values
func NewAdminResetPasswordV3NoContent() *AdminResetPasswordV3NoContent {
	return &AdminResetPasswordV3NoContent{}
}

/*AdminResetPasswordV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminResetPasswordV3NoContent struct {
}

func (o *AdminResetPasswordV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3NoContent ", 204)
}

func (o *AdminResetPasswordV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetPasswordV3BadRequest creates a AdminResetPasswordV3BadRequest with default headers values
func NewAdminResetPasswordV3BadRequest() *AdminResetPasswordV3BadRequest {
	return &AdminResetPasswordV3BadRequest{}
}

/*AdminResetPasswordV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10142</td><td>new password cannot be same with original</td></tr><tr><td>10143</td><td>password not match</td></tr></table>
*/
type AdminResetPasswordV3BadRequest struct {
}

func (o *AdminResetPasswordV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3BadRequest ", 400)
}

func (o *AdminResetPasswordV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetPasswordV3Unauthorized creates a AdminResetPasswordV3Unauthorized with default headers values
func NewAdminResetPasswordV3Unauthorized() *AdminResetPasswordV3Unauthorized {
	return &AdminResetPasswordV3Unauthorized{}
}

/*AdminResetPasswordV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminResetPasswordV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetPasswordV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetPasswordV3Unauthorized) ToJSONString() string {
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

func (o *AdminResetPasswordV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetPasswordV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetPasswordV3Forbidden creates a AdminResetPasswordV3Forbidden with default headers values
func NewAdminResetPasswordV3Forbidden() *AdminResetPasswordV3Forbidden {
	return &AdminResetPasswordV3Forbidden{}
}

/*AdminResetPasswordV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminResetPasswordV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetPasswordV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminResetPasswordV3Forbidden) ToJSONString() string {
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

func (o *AdminResetPasswordV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetPasswordV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetPasswordV3NotFound creates a AdminResetPasswordV3NotFound with default headers values
func NewAdminResetPasswordV3NotFound() *AdminResetPasswordV3NotFound {
	return &AdminResetPasswordV3NotFound{}
}

/*AdminResetPasswordV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminResetPasswordV3NotFound struct {
}

func (o *AdminResetPasswordV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3NotFound ", 404)
}

func (o *AdminResetPasswordV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetPasswordV3InternalServerError creates a AdminResetPasswordV3InternalServerError with default headers values
func NewAdminResetPasswordV3InternalServerError() *AdminResetPasswordV3InternalServerError {
	return &AdminResetPasswordV3InternalServerError{}
}

/*AdminResetPasswordV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminResetPasswordV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetPasswordV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/password][%d] adminResetPasswordV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminResetPasswordV3InternalServerError) ToJSONString() string {
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

func (o *AdminResetPasswordV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetPasswordV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
