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

// AdminTrustlyUpdateUserIdentityReader is a Reader for the AdminTrustlyUpdateUserIdentity structure.
type AdminTrustlyUpdateUserIdentityReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminTrustlyUpdateUserIdentityReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminTrustlyUpdateUserIdentityNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminTrustlyUpdateUserIdentityBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminTrustlyUpdateUserIdentityUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminTrustlyUpdateUserIdentityForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminTrustlyUpdateUserIdentityNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminTrustlyUpdateUserIdentityConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminTrustlyUpdateUserIdentityInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminTrustlyUpdateUserIdentityNoContent creates a AdminTrustlyUpdateUserIdentityNoContent with default headers values
func NewAdminTrustlyUpdateUserIdentityNoContent() *AdminTrustlyUpdateUserIdentityNoContent {
	return &AdminTrustlyUpdateUserIdentityNoContent{}
}

/*AdminTrustlyUpdateUserIdentityNoContent handles this case with default header values.

  No Content
*/
type AdminTrustlyUpdateUserIdentityNoContent struct {
}

func (o *AdminTrustlyUpdateUserIdentityNoContent) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityNoContent ", 204)
}

func (o *AdminTrustlyUpdateUserIdentityNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminTrustlyUpdateUserIdentityBadRequest creates a AdminTrustlyUpdateUserIdentityBadRequest with default headers values
func NewAdminTrustlyUpdateUserIdentityBadRequest() *AdminTrustlyUpdateUserIdentityBadRequest {
	return &AdminTrustlyUpdateUserIdentityBadRequest{}
}

/*AdminTrustlyUpdateUserIdentityBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityBadRequest) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTrustlyUpdateUserIdentityUnauthorized creates a AdminTrustlyUpdateUserIdentityUnauthorized with default headers values
func NewAdminTrustlyUpdateUserIdentityUnauthorized() *AdminTrustlyUpdateUserIdentityUnauthorized {
	return &AdminTrustlyUpdateUserIdentityUnauthorized{}
}

/*AdminTrustlyUpdateUserIdentityUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityUnauthorized) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTrustlyUpdateUserIdentityForbidden creates a AdminTrustlyUpdateUserIdentityForbidden with default headers values
func NewAdminTrustlyUpdateUserIdentityForbidden() *AdminTrustlyUpdateUserIdentityForbidden {
	return &AdminTrustlyUpdateUserIdentityForbidden{}
}

/*AdminTrustlyUpdateUserIdentityForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityForbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityForbidden) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTrustlyUpdateUserIdentityNotFound creates a AdminTrustlyUpdateUserIdentityNotFound with default headers values
func NewAdminTrustlyUpdateUserIdentityNotFound() *AdminTrustlyUpdateUserIdentityNotFound {
	return &AdminTrustlyUpdateUserIdentityNotFound{}
}

/*AdminTrustlyUpdateUserIdentityNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityNotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityNotFound) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTrustlyUpdateUserIdentityConflict creates a AdminTrustlyUpdateUserIdentityConflict with default headers values
func NewAdminTrustlyUpdateUserIdentityConflict() *AdminTrustlyUpdateUserIdentityConflict {
	return &AdminTrustlyUpdateUserIdentityConflict{}
}

/*AdminTrustlyUpdateUserIdentityConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityConflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityConflict) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityConflict) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityConflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminTrustlyUpdateUserIdentityInternalServerError creates a AdminTrustlyUpdateUserIdentityInternalServerError with default headers values
func NewAdminTrustlyUpdateUserIdentityInternalServerError() *AdminTrustlyUpdateUserIdentityInternalServerError {
	return &AdminTrustlyUpdateUserIdentityInternalServerError{}
}

/*AdminTrustlyUpdateUserIdentityInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminTrustlyUpdateUserIdentityInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminTrustlyUpdateUserIdentityInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity][%d] adminTrustlyUpdateUserIdentityInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminTrustlyUpdateUserIdentityInternalServerError) ToJSONString() string {
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

func (o *AdminTrustlyUpdateUserIdentityInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminTrustlyUpdateUserIdentityInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
