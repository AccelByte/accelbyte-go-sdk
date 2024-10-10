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

// AdminDisableUserV2Reader is a Reader for the AdminDisableUserV2 structure.
type AdminDisableUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDisableUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDisableUserV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDisableUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDisableUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDisableUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDisableUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDisableUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDisableUserV2NoContent creates a AdminDisableUserV2NoContent with default headers values
func NewAdminDisableUserV2NoContent() *AdminDisableUserV2NoContent {
	return &AdminDisableUserV2NoContent{}
}

/*AdminDisableUserV2NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDisableUserV2NoContent struct {
}

func (o *AdminDisableUserV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2NoContent ", 204)
}

func (o *AdminDisableUserV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableUserV2BadRequest creates a AdminDisableUserV2BadRequest with default headers values
func NewAdminDisableUserV2BadRequest() *AdminDisableUserV2BadRequest {
	return &AdminDisableUserV2BadRequest{}
}

/*AdminDisableUserV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminDisableUserV2BadRequest struct {
}

func (o *AdminDisableUserV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2BadRequest ", 400)
}

func (o *AdminDisableUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableUserV2Unauthorized creates a AdminDisableUserV2Unauthorized with default headers values
func NewAdminDisableUserV2Unauthorized() *AdminDisableUserV2Unauthorized {
	return &AdminDisableUserV2Unauthorized{}
}

/*AdminDisableUserV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDisableUserV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDisableUserV2Unauthorized) ToJSONString() string {
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

func (o *AdminDisableUserV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserV2Forbidden creates a AdminDisableUserV2Forbidden with default headers values
func NewAdminDisableUserV2Forbidden() *AdminDisableUserV2Forbidden {
	return &AdminDisableUserV2Forbidden{}
}

/*AdminDisableUserV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDisableUserV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDisableUserV2Forbidden) ToJSONString() string {
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

func (o *AdminDisableUserV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserV2NotFound creates a AdminDisableUserV2NotFound with default headers values
func NewAdminDisableUserV2NotFound() *AdminDisableUserV2NotFound {
	return &AdminDisableUserV2NotFound{}
}

/*AdminDisableUserV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDisableUserV2NotFound struct {
}

func (o *AdminDisableUserV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2NotFound ", 404)
}

func (o *AdminDisableUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableUserV2InternalServerError creates a AdminDisableUserV2InternalServerError with default headers values
func NewAdminDisableUserV2InternalServerError() *AdminDisableUserV2InternalServerError {
	return &AdminDisableUserV2InternalServerError{}
}

/*AdminDisableUserV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDisableUserV2InternalServerError struct {
}

func (o *AdminDisableUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/disable][%d] adminDisableUserV2InternalServerError ", 500)
}

func (o *AdminDisableUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
