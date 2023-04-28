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

// AdminDeleteUserPermissionBulkV3Reader is a Reader for the AdminDeleteUserPermissionBulkV3 structure.
type AdminDeleteUserPermissionBulkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserPermissionBulkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserPermissionBulkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserPermissionBulkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserPermissionBulkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteUserPermissionBulkV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserPermissionBulkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserPermissionBulkV3NoContent creates a AdminDeleteUserPermissionBulkV3NoContent with default headers values
func NewAdminDeleteUserPermissionBulkV3NoContent() *AdminDeleteUserPermissionBulkV3NoContent {
	return &AdminDeleteUserPermissionBulkV3NoContent{}
}

/*AdminDeleteUserPermissionBulkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteUserPermissionBulkV3NoContent struct {
}

func (o *AdminDeleteUserPermissionBulkV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminDeleteUserPermissionBulkV3NoContent ", 204)
}

func (o *AdminDeleteUserPermissionBulkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserPermissionBulkV3BadRequest creates a AdminDeleteUserPermissionBulkV3BadRequest with default headers values
func NewAdminDeleteUserPermissionBulkV3BadRequest() *AdminDeleteUserPermissionBulkV3BadRequest {
	return &AdminDeleteUserPermissionBulkV3BadRequest{}
}

/*AdminDeleteUserPermissionBulkV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminDeleteUserPermissionBulkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionBulkV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminDeleteUserPermissionBulkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionBulkV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionBulkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionBulkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserPermissionBulkV3Unauthorized creates a AdminDeleteUserPermissionBulkV3Unauthorized with default headers values
func NewAdminDeleteUserPermissionBulkV3Unauthorized() *AdminDeleteUserPermissionBulkV3Unauthorized {
	return &AdminDeleteUserPermissionBulkV3Unauthorized{}
}

/*AdminDeleteUserPermissionBulkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteUserPermissionBulkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionBulkV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminDeleteUserPermissionBulkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionBulkV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionBulkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionBulkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserPermissionBulkV3Forbidden creates a AdminDeleteUserPermissionBulkV3Forbidden with default headers values
func NewAdminDeleteUserPermissionBulkV3Forbidden() *AdminDeleteUserPermissionBulkV3Forbidden {
	return &AdminDeleteUserPermissionBulkV3Forbidden{}
}

/*AdminDeleteUserPermissionBulkV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteUserPermissionBulkV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserPermissionBulkV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminDeleteUserPermissionBulkV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteUserPermissionBulkV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteUserPermissionBulkV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserPermissionBulkV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteUserPermissionBulkV3NotFound creates a AdminDeleteUserPermissionBulkV3NotFound with default headers values
func NewAdminDeleteUserPermissionBulkV3NotFound() *AdminDeleteUserPermissionBulkV3NotFound {
	return &AdminDeleteUserPermissionBulkV3NotFound{}
}

/*AdminDeleteUserPermissionBulkV3NotFound handles this case with default header values.

  Data not found
*/
type AdminDeleteUserPermissionBulkV3NotFound struct {
}

func (o *AdminDeleteUserPermissionBulkV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminDeleteUserPermissionBulkV3NotFound ", 404)
}

func (o *AdminDeleteUserPermissionBulkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
