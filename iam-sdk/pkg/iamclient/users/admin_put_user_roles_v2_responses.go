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

// AdminPutUserRolesV2Reader is a Reader for the AdminPutUserRolesV2 structure.
type AdminPutUserRolesV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutUserRolesV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPutUserRolesV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutUserRolesV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutUserRolesV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutUserRolesV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPutUserRolesV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutUserRolesV2NoContent creates a AdminPutUserRolesV2NoContent with default headers values
func NewAdminPutUserRolesV2NoContent() *AdminPutUserRolesV2NoContent {
	return &AdminPutUserRolesV2NoContent{}
}

/*AdminPutUserRolesV2NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminPutUserRolesV2NoContent struct {
}

func (o *AdminPutUserRolesV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminPutUserRolesV2NoContent ", 204)
}

func (o *AdminPutUserRolesV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPutUserRolesV2BadRequest creates a AdminPutUserRolesV2BadRequest with default headers values
func NewAdminPutUserRolesV2BadRequest() *AdminPutUserRolesV2BadRequest {
	return &AdminPutUserRolesV2BadRequest{}
}

/*AdminPutUserRolesV2BadRequest handles this case with default header values.

  Invalid request
*/
type AdminPutUserRolesV2BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPutUserRolesV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminPutUserRolesV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutUserRolesV2BadRequest) ToJSONString() string {
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

func (o *AdminPutUserRolesV2BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPutUserRolesV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutUserRolesV2Unauthorized creates a AdminPutUserRolesV2Unauthorized with default headers values
func NewAdminPutUserRolesV2Unauthorized() *AdminPutUserRolesV2Unauthorized {
	return &AdminPutUserRolesV2Unauthorized{}
}

/*AdminPutUserRolesV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutUserRolesV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPutUserRolesV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminPutUserRolesV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutUserRolesV2Unauthorized) ToJSONString() string {
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

func (o *AdminPutUserRolesV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPutUserRolesV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutUserRolesV2Forbidden creates a AdminPutUserRolesV2Forbidden with default headers values
func NewAdminPutUserRolesV2Forbidden() *AdminPutUserRolesV2Forbidden {
	return &AdminPutUserRolesV2Forbidden{}
}

/*AdminPutUserRolesV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminPutUserRolesV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPutUserRolesV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminPutUserRolesV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutUserRolesV2Forbidden) ToJSONString() string {
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

func (o *AdminPutUserRolesV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPutUserRolesV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutUserRolesV2NotFound creates a AdminPutUserRolesV2NotFound with default headers values
func NewAdminPutUserRolesV2NotFound() *AdminPutUserRolesV2NotFound {
	return &AdminPutUserRolesV2NotFound{}
}

/*AdminPutUserRolesV2NotFound handles this case with default header values.

  Data not found
*/
type AdminPutUserRolesV2NotFound struct {
}

func (o *AdminPutUserRolesV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/roles][%d] adminPutUserRolesV2NotFound ", 404)
}

func (o *AdminPutUserRolesV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
