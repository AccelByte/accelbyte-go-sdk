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

// AdminCreateUserV4Reader is a Reader for the AdminCreateUserV4 structure.
type AdminCreateUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateUserV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateUserV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateUserV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateUserV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/namespaces/{namespace}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateUserV4Created creates a AdminCreateUserV4Created with default headers values
func NewAdminCreateUserV4Created() *AdminCreateUserV4Created {
	return &AdminCreateUserV4Created{}
}

/*AdminCreateUserV4Created handles this case with default header values.

  Created
*/
type AdminCreateUserV4Created struct {
	Payload *iamclientmodels.AccountCreateUserResponseV4
}

func (o *AdminCreateUserV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateUserV4Created) ToJSONString() string {
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

func (o *AdminCreateUserV4Created) GetPayload() *iamclientmodels.AccountCreateUserResponseV4 {
	return o.Payload
}

func (o *AdminCreateUserV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountCreateUserResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateUserV4BadRequest creates a AdminCreateUserV4BadRequest with default headers values
func NewAdminCreateUserV4BadRequest() *AdminCreateUserV4BadRequest {
	return &AdminCreateUserV4BadRequest{}
}

/*AdminCreateUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type AdminCreateUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateUserV4BadRequest) ToJSONString() string {
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

func (o *AdminCreateUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateUserV4Unauthorized creates a AdminCreateUserV4Unauthorized with default headers values
func NewAdminCreateUserV4Unauthorized() *AdminCreateUserV4Unauthorized {
	return &AdminCreateUserV4Unauthorized{}
}

/*AdminCreateUserV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateUserV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateUserV4Unauthorized) ToJSONString() string {
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

func (o *AdminCreateUserV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateUserV4Forbidden creates a AdminCreateUserV4Forbidden with default headers values
func NewAdminCreateUserV4Forbidden() *AdminCreateUserV4Forbidden {
	return &AdminCreateUserV4Forbidden{}
}

/*AdminCreateUserV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20003</td><td>forbidden access</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type AdminCreateUserV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateUserV4Forbidden) ToJSONString() string {
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

func (o *AdminCreateUserV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateUserV4NotFound creates a AdminCreateUserV4NotFound with default headers values
func NewAdminCreateUserV4NotFound() *AdminCreateUserV4NotFound {
	return &AdminCreateUserV4NotFound{}
}

/*AdminCreateUserV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type AdminCreateUserV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCreateUserV4NotFound) ToJSONString() string {
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

func (o *AdminCreateUserV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateUserV4Conflict creates a AdminCreateUserV4Conflict with default headers values
func NewAdminCreateUserV4Conflict() *AdminCreateUserV4Conflict {
	return &AdminCreateUserV4Conflict{}
}

/*AdminCreateUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10177</td><td>username already used</td></tr></table>
*/
type AdminCreateUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateUserV4Conflict) ToJSONString() string {
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

func (o *AdminCreateUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCreateUserV4InternalServerError creates a AdminCreateUserV4InternalServerError with default headers values
func NewAdminCreateUserV4InternalServerError() *AdminCreateUserV4InternalServerError {
	return &AdminCreateUserV4InternalServerError{}
}

/*AdminCreateUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminCreateUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users][%d] adminCreateUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateUserV4InternalServerError) ToJSONString() string {
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

func (o *AdminCreateUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
