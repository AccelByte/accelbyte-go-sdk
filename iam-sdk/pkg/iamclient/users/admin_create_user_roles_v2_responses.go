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

// AdminCreateUserRolesV2Reader is a Reader for the AdminCreateUserRolesV2 structure.
type AdminCreateUserRolesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateUserRolesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminCreateUserRolesV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateUserRolesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateUserRolesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateUserRolesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCreateUserRolesV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateUserRolesV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateUserRolesV2NoContent creates a AdminCreateUserRolesV2NoContent with default headers values
func NewAdminCreateUserRolesV2NoContent() *AdminCreateUserRolesV2NoContent {
	return &AdminCreateUserRolesV2NoContent{}
}

/*AdminCreateUserRolesV2NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminCreateUserRolesV2NoContent struct {
}

func (o *AdminCreateUserRolesV2NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2NoContent ", 204)
}

func (o *AdminCreateUserRolesV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminCreateUserRolesV2BadRequest creates a AdminCreateUserRolesV2BadRequest with default headers values
func NewAdminCreateUserRolesV2BadRequest() *AdminCreateUserRolesV2BadRequest {
	return &AdminCreateUserRolesV2BadRequest{}
}

/*AdminCreateUserRolesV2BadRequest handles this case with default header values.

  Invalid request
*/
type AdminCreateUserRolesV2BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserRolesV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateUserRolesV2BadRequest) ToJSONString() string {
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

func (o *AdminCreateUserRolesV2BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserRolesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateUserRolesV2Unauthorized creates a AdminCreateUserRolesV2Unauthorized with default headers values
func NewAdminCreateUserRolesV2Unauthorized() *AdminCreateUserRolesV2Unauthorized {
	return &AdminCreateUserRolesV2Unauthorized{}
}

/*AdminCreateUserRolesV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateUserRolesV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserRolesV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateUserRolesV2Unauthorized) ToJSONString() string {
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

func (o *AdminCreateUserRolesV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserRolesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateUserRolesV2Forbidden creates a AdminCreateUserRolesV2Forbidden with default headers values
func NewAdminCreateUserRolesV2Forbidden() *AdminCreateUserRolesV2Forbidden {
	return &AdminCreateUserRolesV2Forbidden{}
}

/*AdminCreateUserRolesV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminCreateUserRolesV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateUserRolesV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateUserRolesV2Forbidden) ToJSONString() string {
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

func (o *AdminCreateUserRolesV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateUserRolesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateUserRolesV2NotFound creates a AdminCreateUserRolesV2NotFound with default headers values
func NewAdminCreateUserRolesV2NotFound() *AdminCreateUserRolesV2NotFound {
	return &AdminCreateUserRolesV2NotFound{}
}

/*AdminCreateUserRolesV2NotFound handles this case with default header values.

  Data not found
*/
type AdminCreateUserRolesV2NotFound struct {
}

func (o *AdminCreateUserRolesV2NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2NotFound ", 404)
}

func (o *AdminCreateUserRolesV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminCreateUserRolesV2Conflict creates a AdminCreateUserRolesV2Conflict with default headers values
func NewAdminCreateUserRolesV2Conflict() *AdminCreateUserRolesV2Conflict {
	return &AdminCreateUserRolesV2Conflict{}
}

/*AdminCreateUserRolesV2Conflict handles this case with default header values.

  Conflict
*/
type AdminCreateUserRolesV2Conflict struct {
}

func (o *AdminCreateUserRolesV2Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminCreateUserRolesV2Conflict ", 409)
}

func (o *AdminCreateUserRolesV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
