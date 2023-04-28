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

// AdminUpdateUserPermissionV3Reader is a Reader for the AdminUpdateUserPermissionV3 structure.
type AdminUpdateUserPermissionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserPermissionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateUserPermissionV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserPermissionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserPermissionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateUserPermissionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserPermissionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserPermissionV3NoContent creates a AdminUpdateUserPermissionV3NoContent with default headers values
func NewAdminUpdateUserPermissionV3NoContent() *AdminUpdateUserPermissionV3NoContent {
	return &AdminUpdateUserPermissionV3NoContent{}
}

/*AdminUpdateUserPermissionV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateUserPermissionV3NoContent struct {
}

func (o *AdminUpdateUserPermissionV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminUpdateUserPermissionV3NoContent ", 204)
}

func (o *AdminUpdateUserPermissionV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateUserPermissionV3BadRequest creates a AdminUpdateUserPermissionV3BadRequest with default headers values
func NewAdminUpdateUserPermissionV3BadRequest() *AdminUpdateUserPermissionV3BadRequest {
	return &AdminUpdateUserPermissionV3BadRequest{}
}

/*AdminUpdateUserPermissionV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminUpdateUserPermissionV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserPermissionV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminUpdateUserPermissionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserPermissionV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserPermissionV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserPermissionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserPermissionV3Unauthorized creates a AdminUpdateUserPermissionV3Unauthorized with default headers values
func NewAdminUpdateUserPermissionV3Unauthorized() *AdminUpdateUserPermissionV3Unauthorized {
	return &AdminUpdateUserPermissionV3Unauthorized{}
}

/*AdminUpdateUserPermissionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateUserPermissionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserPermissionV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminUpdateUserPermissionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserPermissionV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserPermissionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserPermissionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserPermissionV3Forbidden creates a AdminUpdateUserPermissionV3Forbidden with default headers values
func NewAdminUpdateUserPermissionV3Forbidden() *AdminUpdateUserPermissionV3Forbidden {
	return &AdminUpdateUserPermissionV3Forbidden{}
}

/*AdminUpdateUserPermissionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateUserPermissionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateUserPermissionV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminUpdateUserPermissionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateUserPermissionV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateUserPermissionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateUserPermissionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserPermissionV3NotFound creates a AdminUpdateUserPermissionV3NotFound with default headers values
func NewAdminUpdateUserPermissionV3NotFound() *AdminUpdateUserPermissionV3NotFound {
	return &AdminUpdateUserPermissionV3NotFound{}
}

/*AdminUpdateUserPermissionV3NotFound handles this case with default header values.

  Data not found
*/
type AdminUpdateUserPermissionV3NotFound struct {
}

func (o *AdminUpdateUserPermissionV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminUpdateUserPermissionV3NotFound ", 404)
}

func (o *AdminUpdateUserPermissionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
