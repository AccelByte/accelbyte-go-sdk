// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// AdminListAssignedUsersV4Reader is a Reader for the AdminListAssignedUsersV4 structure.
type AdminListAssignedUsersV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListAssignedUsersV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListAssignedUsersV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListAssignedUsersV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListAssignedUsersV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListAssignedUsersV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListAssignedUsersV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/roles/{roleId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListAssignedUsersV4OK creates a AdminListAssignedUsersV4OK with default headers values
func NewAdminListAssignedUsersV4OK() *AdminListAssignedUsersV4OK {
	return &AdminListAssignedUsersV4OK{}
}

/*AdminListAssignedUsersV4OK handles this case with default header values.

  OK
*/
type AdminListAssignedUsersV4OK struct {
	Payload *iamclientmodels.ModelListAssignedUsersV4Response
}

func (o *AdminListAssignedUsersV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}/users][%d] adminListAssignedUsersV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListAssignedUsersV4OK) ToJSONString() string {
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

func (o *AdminListAssignedUsersV4OK) GetPayload() *iamclientmodels.ModelListAssignedUsersV4Response {
	return o.Payload
}

func (o *AdminListAssignedUsersV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListAssignedUsersV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListAssignedUsersV4BadRequest creates a AdminListAssignedUsersV4BadRequest with default headers values
func NewAdminListAssignedUsersV4BadRequest() *AdminListAssignedUsersV4BadRequest {
	return &AdminListAssignedUsersV4BadRequest{}
}

/*AdminListAssignedUsersV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListAssignedUsersV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAssignedUsersV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}/users][%d] adminListAssignedUsersV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListAssignedUsersV4BadRequest) ToJSONString() string {
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

func (o *AdminListAssignedUsersV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAssignedUsersV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAssignedUsersV4Unauthorized creates a AdminListAssignedUsersV4Unauthorized with default headers values
func NewAdminListAssignedUsersV4Unauthorized() *AdminListAssignedUsersV4Unauthorized {
	return &AdminListAssignedUsersV4Unauthorized{}
}

/*AdminListAssignedUsersV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListAssignedUsersV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAssignedUsersV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}/users][%d] adminListAssignedUsersV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListAssignedUsersV4Unauthorized) ToJSONString() string {
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

func (o *AdminListAssignedUsersV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAssignedUsersV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAssignedUsersV4Forbidden creates a AdminListAssignedUsersV4Forbidden with default headers values
func NewAdminListAssignedUsersV4Forbidden() *AdminListAssignedUsersV4Forbidden {
	return &AdminListAssignedUsersV4Forbidden{}
}

/*AdminListAssignedUsersV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListAssignedUsersV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAssignedUsersV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}/users][%d] adminListAssignedUsersV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListAssignedUsersV4Forbidden) ToJSONString() string {
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

func (o *AdminListAssignedUsersV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAssignedUsersV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAssignedUsersV4NotFound creates a AdminListAssignedUsersV4NotFound with default headers values
func NewAdminListAssignedUsersV4NotFound() *AdminListAssignedUsersV4NotFound {
	return &AdminListAssignedUsersV4NotFound{}
}

/*AdminListAssignedUsersV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminListAssignedUsersV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListAssignedUsersV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/roles/{roleId}/users][%d] adminListAssignedUsersV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListAssignedUsersV4NotFound) ToJSONString() string {
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

func (o *AdminListAssignedUsersV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListAssignedUsersV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
