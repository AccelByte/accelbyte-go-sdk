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

// AdminAddUserPermissionsV3Reader is a Reader for the AdminAddUserPermissionsV3 structure.
type AdminAddUserPermissionsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddUserPermissionsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddUserPermissionsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddUserPermissionsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddUserPermissionsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddUserPermissionsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddUserPermissionsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddUserPermissionsV3NoContent creates a AdminAddUserPermissionsV3NoContent with default headers values
func NewAdminAddUserPermissionsV3NoContent() *AdminAddUserPermissionsV3NoContent {
	return &AdminAddUserPermissionsV3NoContent{}
}

/*AdminAddUserPermissionsV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminAddUserPermissionsV3NoContent struct {
}

func (o *AdminAddUserPermissionsV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3NoContent ", 204)
}

func (o *AdminAddUserPermissionsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddUserPermissionsV3BadRequest creates a AdminAddUserPermissionsV3BadRequest with default headers values
func NewAdminAddUserPermissionsV3BadRequest() *AdminAddUserPermissionsV3BadRequest {
	return &AdminAddUserPermissionsV3BadRequest{}
}

/*AdminAddUserPermissionsV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminAddUserPermissionsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserPermissionsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddUserPermissionsV3BadRequest) ToJSONString() string {
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

func (o *AdminAddUserPermissionsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserPermissionsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserPermissionsV3Unauthorized creates a AdminAddUserPermissionsV3Unauthorized with default headers values
func NewAdminAddUserPermissionsV3Unauthorized() *AdminAddUserPermissionsV3Unauthorized {
	return &AdminAddUserPermissionsV3Unauthorized{}
}

/*AdminAddUserPermissionsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddUserPermissionsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserPermissionsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddUserPermissionsV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddUserPermissionsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserPermissionsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserPermissionsV3Forbidden creates a AdminAddUserPermissionsV3Forbidden with default headers values
func NewAdminAddUserPermissionsV3Forbidden() *AdminAddUserPermissionsV3Forbidden {
	return &AdminAddUserPermissionsV3Forbidden{}
}

/*AdminAddUserPermissionsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAddUserPermissionsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddUserPermissionsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddUserPermissionsV3Forbidden) ToJSONString() string {
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

func (o *AdminAddUserPermissionsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddUserPermissionsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddUserPermissionsV3NotFound creates a AdminAddUserPermissionsV3NotFound with default headers values
func NewAdminAddUserPermissionsV3NotFound() *AdminAddUserPermissionsV3NotFound {
	return &AdminAddUserPermissionsV3NotFound{}
}

/*AdminAddUserPermissionsV3NotFound handles this case with default header values.

  Data not found
*/
type AdminAddUserPermissionsV3NotFound struct {
}

func (o *AdminAddUserPermissionsV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions][%d] adminAddUserPermissionsV3NotFound ", 404)
}

func (o *AdminAddUserPermissionsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
