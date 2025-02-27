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

// AdminUpdateUserEmailAddressV4Reader is a Reader for the AdminUpdateUserEmailAddressV4 structure.
type AdminUpdateUserEmailAddressV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserEmailAddressV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateUserEmailAddressV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserEmailAddressV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserEmailAddressV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserEmailAddressV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateUserEmailAddressV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserEmailAddressV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserEmailAddressV4NoContent creates a AdminUpdateUserEmailAddressV4NoContent with default headers values
func NewAdminUpdateUserEmailAddressV4NoContent() *AdminUpdateUserEmailAddressV4NoContent {
	return &AdminUpdateUserEmailAddressV4NoContent{}
}

/*AdminUpdateUserEmailAddressV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateUserEmailAddressV4NoContent struct {
}

func (o *AdminUpdateUserEmailAddressV4NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4NoContent ", 204)
}

func (o *AdminUpdateUserEmailAddressV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateUserEmailAddressV4BadRequest creates a AdminUpdateUserEmailAddressV4BadRequest with default headers values
func NewAdminUpdateUserEmailAddressV4BadRequest() *AdminUpdateUserEmailAddressV4BadRequest {
	return &AdminUpdateUserEmailAddressV4BadRequest{}
}

/*AdminUpdateUserEmailAddressV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateUserEmailAddressV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserEmailAddressV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserEmailAddressV4BadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserEmailAddressV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserEmailAddressV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserEmailAddressV4Unauthorized creates a AdminUpdateUserEmailAddressV4Unauthorized with default headers values
func NewAdminUpdateUserEmailAddressV4Unauthorized() *AdminUpdateUserEmailAddressV4Unauthorized {
	return &AdminUpdateUserEmailAddressV4Unauthorized{}
}

/*AdminUpdateUserEmailAddressV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AdminUpdateUserEmailAddressV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserEmailAddressV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserEmailAddressV4Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserEmailAddressV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserEmailAddressV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserEmailAddressV4NotFound creates a AdminUpdateUserEmailAddressV4NotFound with default headers values
func NewAdminUpdateUserEmailAddressV4NotFound() *AdminUpdateUserEmailAddressV4NotFound {
	return &AdminUpdateUserEmailAddressV4NotFound{}
}

/*AdminUpdateUserEmailAddressV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminUpdateUserEmailAddressV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserEmailAddressV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateUserEmailAddressV4NotFound) ToJSONString() string {
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

func (o *AdminUpdateUserEmailAddressV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserEmailAddressV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserEmailAddressV4Conflict creates a AdminUpdateUserEmailAddressV4Conflict with default headers values
func NewAdminUpdateUserEmailAddressV4Conflict() *AdminUpdateUserEmailAddressV4Conflict {
	return &AdminUpdateUserEmailAddressV4Conflict{}
}

/*AdminUpdateUserEmailAddressV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type AdminUpdateUserEmailAddressV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserEmailAddressV4Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateUserEmailAddressV4Conflict) ToJSONString() string {
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

func (o *AdminUpdateUserEmailAddressV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserEmailAddressV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserEmailAddressV4InternalServerError creates a AdminUpdateUserEmailAddressV4InternalServerError with default headers values
func NewAdminUpdateUserEmailAddressV4InternalServerError() *AdminUpdateUserEmailAddressV4InternalServerError {
	return &AdminUpdateUserEmailAddressV4InternalServerError{}
}

/*AdminUpdateUserEmailAddressV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateUserEmailAddressV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserEmailAddressV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/users/{userId}/email][%d] adminUpdateUserEmailAddressV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateUserEmailAddressV4InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateUserEmailAddressV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserEmailAddressV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
