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

// AdminUpdateUserV4Reader is a Reader for the AdminUpdateUserV4 structure.
type AdminUpdateUserV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateUserV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateUserV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateUserV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/admin/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserV4OK creates a AdminUpdateUserV4OK with default headers values
func NewAdminUpdateUserV4OK() *AdminUpdateUserV4OK {
	return &AdminUpdateUserV4OK{}
}

/*AdminUpdateUserV4OK handles this case with default header values.

  OK
*/
type AdminUpdateUserV4OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *AdminUpdateUserV4OK) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateUserV4OK) ToJSONString() string {
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

func (o *AdminUpdateUserV4OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *AdminUpdateUserV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateUserV4BadRequest creates a AdminUpdateUserV4BadRequest with default headers values
func NewAdminUpdateUserV4BadRequest() *AdminUpdateUserV4BadRequest {
	return &AdminUpdateUserV4BadRequest{}
}

/*AdminUpdateUserV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10154</td><td>country not found</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type AdminUpdateUserV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserV4BadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV4Unauthorized creates a AdminUpdateUserV4Unauthorized with default headers values
func NewAdminUpdateUserV4Unauthorized() *AdminUpdateUserV4Unauthorized {
	return &AdminUpdateUserV4Unauthorized{}
}

/*AdminUpdateUserV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AdminUpdateUserV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserV4Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV4Forbidden creates a AdminUpdateUserV4Forbidden with default headers values
func NewAdminUpdateUserV4Forbidden() *AdminUpdateUserV4Forbidden {
	return &AdminUpdateUserV4Forbidden{}
}

/*AdminUpdateUserV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateUserV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateUserV4Forbidden) ToJSONString() string {
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

func (o *AdminUpdateUserV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV4NotFound creates a AdminUpdateUserV4NotFound with default headers values
func NewAdminUpdateUserV4NotFound() *AdminUpdateUserV4NotFound {
	return &AdminUpdateUserV4NotFound{}
}

/*AdminUpdateUserV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminUpdateUserV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateUserV4NotFound) ToJSONString() string {
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

func (o *AdminUpdateUserV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV4Conflict creates a AdminUpdateUserV4Conflict with default headers values
func NewAdminUpdateUserV4Conflict() *AdminUpdateUserV4Conflict {
	return &AdminUpdateUserV4Conflict{}
}

/*AdminUpdateUserV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type AdminUpdateUserV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateUserV4Conflict) ToJSONString() string {
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

func (o *AdminUpdateUserV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserV4InternalServerError creates a AdminUpdateUserV4InternalServerError with default headers values
func NewAdminUpdateUserV4InternalServerError() *AdminUpdateUserV4InternalServerError {
	return &AdminUpdateUserV4InternalServerError{}
}

/*AdminUpdateUserV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateUserV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}][%d] adminUpdateUserV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateUserV4InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateUserV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
