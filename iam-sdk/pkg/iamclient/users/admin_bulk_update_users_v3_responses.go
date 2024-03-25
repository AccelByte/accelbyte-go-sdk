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

// AdminBulkUpdateUsersV3Reader is a Reader for the AdminBulkUpdateUsersV3 structure.
type AdminBulkUpdateUsersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUpdateUsersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBulkUpdateUsersV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUpdateUsersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkUpdateUsersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkUpdateUsersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkUpdateUsersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkUpdateUsersV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUpdateUsersV3NoContent creates a AdminBulkUpdateUsersV3NoContent with default headers values
func NewAdminBulkUpdateUsersV3NoContent() *AdminBulkUpdateUsersV3NoContent {
	return &AdminBulkUpdateUsersV3NoContent{}
}

/*AdminBulkUpdateUsersV3NoContent handles this case with default header values.

  No Content
*/
type AdminBulkUpdateUsersV3NoContent struct {
}

func (o *AdminBulkUpdateUsersV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3NoContent ", 204)
}

func (o *AdminBulkUpdateUsersV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBulkUpdateUsersV3BadRequest creates a AdminBulkUpdateUsersV3BadRequest with default headers values
func NewAdminBulkUpdateUsersV3BadRequest() *AdminBulkUpdateUsersV3BadRequest {
	return &AdminBulkUpdateUsersV3BadRequest{}
}

/*AdminBulkUpdateUsersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminBulkUpdateUsersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUsersV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUpdateUsersV3BadRequest) ToJSONString() string {
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

func (o *AdminBulkUpdateUsersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUsersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkUpdateUsersV3Unauthorized creates a AdminBulkUpdateUsersV3Unauthorized with default headers values
func NewAdminBulkUpdateUsersV3Unauthorized() *AdminBulkUpdateUsersV3Unauthorized {
	return &AdminBulkUpdateUsersV3Unauthorized{}
}

/*AdminBulkUpdateUsersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkUpdateUsersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUsersV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkUpdateUsersV3Unauthorized) ToJSONString() string {
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

func (o *AdminBulkUpdateUsersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUsersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkUpdateUsersV3Forbidden creates a AdminBulkUpdateUsersV3Forbidden with default headers values
func NewAdminBulkUpdateUsersV3Forbidden() *AdminBulkUpdateUsersV3Forbidden {
	return &AdminBulkUpdateUsersV3Forbidden{}
}

/*AdminBulkUpdateUsersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBulkUpdateUsersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUsersV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkUpdateUsersV3Forbidden) ToJSONString() string {
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

func (o *AdminBulkUpdateUsersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUsersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkUpdateUsersV3NotFound creates a AdminBulkUpdateUsersV3NotFound with default headers values
func NewAdminBulkUpdateUsersV3NotFound() *AdminBulkUpdateUsersV3NotFound {
	return &AdminBulkUpdateUsersV3NotFound{}
}

/*AdminBulkUpdateUsersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminBulkUpdateUsersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUsersV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkUpdateUsersV3NotFound) ToJSONString() string {
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

func (o *AdminBulkUpdateUsersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUsersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminBulkUpdateUsersV3InternalServerError creates a AdminBulkUpdateUsersV3InternalServerError with default headers values
func NewAdminBulkUpdateUsersV3InternalServerError() *AdminBulkUpdateUsersV3InternalServerError {
	return &AdminBulkUpdateUsersV3InternalServerError{}
}

/*AdminBulkUpdateUsersV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBulkUpdateUsersV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateUsersV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/users][%d] adminBulkUpdateUsersV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkUpdateUsersV3InternalServerError) ToJSONString() string {
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

func (o *AdminBulkUpdateUsersV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateUsersV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
