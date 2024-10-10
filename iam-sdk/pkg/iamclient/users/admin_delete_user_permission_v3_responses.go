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

// AdminDeleteUserPermissionV3Reader is a Reader for the AdminDeleteUserPermissionV3 structure.
type AdminDeleteUserPermissionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserPermissionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserPermissionV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserPermissionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserPermissionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteUserPermissionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserPermissionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserPermissionV3NoContent creates a AdminDeleteUserPermissionV3NoContent with default headers values
func NewAdminDeleteUserPermissionV3NoContent() *AdminDeleteUserPermissionV3NoContent {
	return &AdminDeleteUserPermissionV3NoContent{}
}

/*AdminDeleteUserPermissionV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteUserPermissionV3NoContent struct {
}

func (o *AdminDeleteUserPermissionV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] adminDeleteUserPermissionV3NoContent ", 204)
}

func (o *AdminDeleteUserPermissionV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserPermissionV3BadRequest creates a AdminDeleteUserPermissionV3BadRequest with default headers values
func NewAdminDeleteUserPermissionV3BadRequest() *AdminDeleteUserPermissionV3BadRequest {
	return &AdminDeleteUserPermissionV3BadRequest{}
}

/*AdminDeleteUserPermissionV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminDeleteUserPermissionV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] adminDeleteUserPermissionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserPermissionV3Unauthorized creates a AdminDeleteUserPermissionV3Unauthorized with default headers values
func NewAdminDeleteUserPermissionV3Unauthorized() *AdminDeleteUserPermissionV3Unauthorized {
	return &AdminDeleteUserPermissionV3Unauthorized{}
}

/*AdminDeleteUserPermissionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteUserPermissionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] adminDeleteUserPermissionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserPermissionV3Forbidden creates a AdminDeleteUserPermissionV3Forbidden with default headers values
func NewAdminDeleteUserPermissionV3Forbidden() *AdminDeleteUserPermissionV3Forbidden {
	return &AdminDeleteUserPermissionV3Forbidden{}
}

/*AdminDeleteUserPermissionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteUserPermissionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] adminDeleteUserPermissionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserPermissionV3NotFound creates a AdminDeleteUserPermissionV3NotFound with default headers values
func NewAdminDeleteUserPermissionV3NotFound() *AdminDeleteUserPermissionV3NotFound {
	return &AdminDeleteUserPermissionV3NotFound{}
}

/*AdminDeleteUserPermissionV3NotFound handles this case with default header values.

  Data not found
*/
type AdminDeleteUserPermissionV3NotFound struct {
}

func (o *AdminDeleteUserPermissionV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] adminDeleteUserPermissionV3NotFound ", 404)
}

func (o *AdminDeleteUserPermissionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
