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

// AdminVerifyUserWithoutVerificationCodeV3Reader is a Reader for the AdminVerifyUserWithoutVerificationCodeV3 structure.
type AdminVerifyUserWithoutVerificationCodeV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminVerifyUserWithoutVerificationCodeV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminVerifyUserWithoutVerificationCodeV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminVerifyUserWithoutVerificationCodeV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminVerifyUserWithoutVerificationCodeV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminVerifyUserWithoutVerificationCodeV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminVerifyUserWithoutVerificationCodeV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminVerifyUserWithoutVerificationCodeV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminVerifyUserWithoutVerificationCodeV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminVerifyUserWithoutVerificationCodeV3NoContent creates a AdminVerifyUserWithoutVerificationCodeV3NoContent with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3NoContent() *AdminVerifyUserWithoutVerificationCodeV3NoContent {
	return &AdminVerifyUserWithoutVerificationCodeV3NoContent{}
}

/*AdminVerifyUserWithoutVerificationCodeV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminVerifyUserWithoutVerificationCodeV3NoContent struct {
}

func (o *AdminVerifyUserWithoutVerificationCodeV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3NoContent ", 204)
}

func (o *AdminVerifyUserWithoutVerificationCodeV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminVerifyUserWithoutVerificationCodeV3BadRequest creates a AdminVerifyUserWithoutVerificationCodeV3BadRequest with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3BadRequest() *AdminVerifyUserWithoutVerificationCodeV3BadRequest {
	return &AdminVerifyUserWithoutVerificationCodeV3BadRequest{}
}

/*AdminVerifyUserWithoutVerificationCodeV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3BadRequest) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyUserWithoutVerificationCodeV3Unauthorized creates a AdminVerifyUserWithoutVerificationCodeV3Unauthorized with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3Unauthorized() *AdminVerifyUserWithoutVerificationCodeV3Unauthorized {
	return &AdminVerifyUserWithoutVerificationCodeV3Unauthorized{}
}

/*AdminVerifyUserWithoutVerificationCodeV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Unauthorized) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyUserWithoutVerificationCodeV3Forbidden creates a AdminVerifyUserWithoutVerificationCodeV3Forbidden with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3Forbidden() *AdminVerifyUserWithoutVerificationCodeV3Forbidden {
	return &AdminVerifyUserWithoutVerificationCodeV3Forbidden{}
}

/*AdminVerifyUserWithoutVerificationCodeV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Forbidden) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyUserWithoutVerificationCodeV3NotFound creates a AdminVerifyUserWithoutVerificationCodeV3NotFound with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3NotFound() *AdminVerifyUserWithoutVerificationCodeV3NotFound {
	return &AdminVerifyUserWithoutVerificationCodeV3NotFound{}
}

/*AdminVerifyUserWithoutVerificationCodeV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3NotFound) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyUserWithoutVerificationCodeV3Conflict creates a AdminVerifyUserWithoutVerificationCodeV3Conflict with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3Conflict() *AdminVerifyUserWithoutVerificationCodeV3Conflict {
	return &AdminVerifyUserWithoutVerificationCodeV3Conflict{}
}

/*AdminVerifyUserWithoutVerificationCodeV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10140</td><td>user verified</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Conflict) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyUserWithoutVerificationCodeV3InternalServerError creates a AdminVerifyUserWithoutVerificationCodeV3InternalServerError with default headers values
func NewAdminVerifyUserWithoutVerificationCodeV3InternalServerError() *AdminVerifyUserWithoutVerificationCodeV3InternalServerError {
	return &AdminVerifyUserWithoutVerificationCodeV3InternalServerError{}
}

/*AdminVerifyUserWithoutVerificationCodeV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminVerifyUserWithoutVerificationCodeV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminVerifyUserWithoutVerificationCodeV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/verify][%d] adminVerifyUserWithoutVerificationCodeV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminVerifyUserWithoutVerificationCodeV3InternalServerError) ToJSONString() string {
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

func (o *AdminVerifyUserWithoutVerificationCodeV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminVerifyUserWithoutVerificationCodeV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
