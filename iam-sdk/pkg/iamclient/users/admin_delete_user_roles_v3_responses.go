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

// AdminDeleteUserRolesV3Reader is a Reader for the AdminDeleteUserRolesV3 structure.
type AdminDeleteUserRolesV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteUserRolesV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteUserRolesV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteUserRolesV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteUserRolesV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteUserRolesV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteUserRolesV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteUserRolesV3NoContent creates a AdminDeleteUserRolesV3NoContent with default headers values
func NewAdminDeleteUserRolesV3NoContent() *AdminDeleteUserRolesV3NoContent {
	return &AdminDeleteUserRolesV3NoContent{}
}

/*AdminDeleteUserRolesV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteUserRolesV3NoContent struct {
}

func (o *AdminDeleteUserRolesV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminDeleteUserRolesV3NoContent ", 204)
}

func (o *AdminDeleteUserRolesV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteUserRolesV3BadRequest creates a AdminDeleteUserRolesV3BadRequest with default headers values
func NewAdminDeleteUserRolesV3BadRequest() *AdminDeleteUserRolesV3BadRequest {
	return &AdminDeleteUserRolesV3BadRequest{}
}

/*AdminDeleteUserRolesV3BadRequest handles this case with default header values.

  Invalid request
*/
type AdminDeleteUserRolesV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserRolesV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminDeleteUserRolesV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteUserRolesV3BadRequest) ToJSONString() string {
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

func (o *AdminDeleteUserRolesV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserRolesV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserRolesV3Unauthorized creates a AdminDeleteUserRolesV3Unauthorized with default headers values
func NewAdminDeleteUserRolesV3Unauthorized() *AdminDeleteUserRolesV3Unauthorized {
	return &AdminDeleteUserRolesV3Unauthorized{}
}

/*AdminDeleteUserRolesV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteUserRolesV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserRolesV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminDeleteUserRolesV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteUserRolesV3Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteUserRolesV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserRolesV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserRolesV3Forbidden creates a AdminDeleteUserRolesV3Forbidden with default headers values
func NewAdminDeleteUserRolesV3Forbidden() *AdminDeleteUserRolesV3Forbidden {
	return &AdminDeleteUserRolesV3Forbidden{}
}

/*AdminDeleteUserRolesV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteUserRolesV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteUserRolesV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminDeleteUserRolesV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteUserRolesV3Forbidden) ToJSONString() string {
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

func (o *AdminDeleteUserRolesV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteUserRolesV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteUserRolesV3NotFound creates a AdminDeleteUserRolesV3NotFound with default headers values
func NewAdminDeleteUserRolesV3NotFound() *AdminDeleteUserRolesV3NotFound {
	return &AdminDeleteUserRolesV3NotFound{}
}

/*AdminDeleteUserRolesV3NotFound handles this case with default header values.

  Data not found
*/
type AdminDeleteUserRolesV3NotFound struct {
}

func (o *AdminDeleteUserRolesV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminDeleteUserRolesV3NotFound ", 404)
}

func (o *AdminDeleteUserRolesV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
