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

// DisableUserReader is a Reader for the DisableUser structure.
type DisableUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DisableUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDisableUserNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDisableUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDisableUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDisableUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDisableUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDisableUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/namespaces/{namespace}/users/{userId}/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDisableUserNoContent creates a DisableUserNoContent with default headers values
func NewDisableUserNoContent() *DisableUserNoContent {
	return &DisableUserNoContent{}
}

/*DisableUserNoContent handles this case with default header values.

  Operation succeeded
*/
type DisableUserNoContent struct {
}

func (o *DisableUserNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserNoContent ", 204)
}

func (o *DisableUserNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserBadRequest creates a DisableUserBadRequest with default headers values
func NewDisableUserBadRequest() *DisableUserBadRequest {
	return &DisableUserBadRequest{}
}

/*DisableUserBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DisableUserBadRequest struct {
}

func (o *DisableUserBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserBadRequest ", 400)
}

func (o *DisableUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserUnauthorized creates a DisableUserUnauthorized with default headers values
func NewDisableUserUnauthorized() *DisableUserUnauthorized {
	return &DisableUserUnauthorized{}
}

/*DisableUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DisableUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DisableUserUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DisableUserUnauthorized) ToJSONString() string {
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

func (o *DisableUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DisableUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableUserForbidden creates a DisableUserForbidden with default headers values
func NewDisableUserForbidden() *DisableUserForbidden {
	return &DisableUserForbidden{}
}

/*DisableUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DisableUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DisableUserForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *DisableUserForbidden) ToJSONString() string {
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

func (o *DisableUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DisableUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableUserNotFound creates a DisableUserNotFound with default headers values
func NewDisableUserNotFound() *DisableUserNotFound {
	return &DisableUserNotFound{}
}

/*DisableUserNotFound handles this case with default header values.

  Data not found
*/
type DisableUserNotFound struct {
}

func (o *DisableUserNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserNotFound ", 404)
}

func (o *DisableUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserInternalServerError creates a DisableUserInternalServerError with default headers values
func NewDisableUserInternalServerError() *DisableUserInternalServerError {
	return &DisableUserInternalServerError{}
}

/*DisableUserInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DisableUserInternalServerError struct {
}

func (o *DisableUserInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/disable][%d] disableUserInternalServerError ", 500)
}

func (o *DisableUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
