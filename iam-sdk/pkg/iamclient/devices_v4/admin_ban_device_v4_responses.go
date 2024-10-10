// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package devices_v4

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

// AdminBanDeviceV4Reader is a Reader for the AdminBanDeviceV4 structure.
type AdminBanDeviceV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBanDeviceV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBanDeviceV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBanDeviceV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBanDeviceV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBanDeviceV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminBanDeviceV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBanDeviceV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/namespaces/{namespace}/devices/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBanDeviceV4NoContent creates a AdminBanDeviceV4NoContent with default headers values
func NewAdminBanDeviceV4NoContent() *AdminBanDeviceV4NoContent {
	return &AdminBanDeviceV4NoContent{}
}

/*AdminBanDeviceV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminBanDeviceV4NoContent struct {
}

func (o *AdminBanDeviceV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4NoContent ", 204)
}

func (o *AdminBanDeviceV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBanDeviceV4BadRequest creates a AdminBanDeviceV4BadRequest with default headers values
func NewAdminBanDeviceV4BadRequest() *AdminBanDeviceV4BadRequest {
	return &AdminBanDeviceV4BadRequest{}
}

/*AdminBanDeviceV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10204</td><td>device can not be banned</td></tr></table>
*/
type AdminBanDeviceV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanDeviceV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBanDeviceV4BadRequest) ToJSONString() string {
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

func (o *AdminBanDeviceV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanDeviceV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanDeviceV4Unauthorized creates a AdminBanDeviceV4Unauthorized with default headers values
func NewAdminBanDeviceV4Unauthorized() *AdminBanDeviceV4Unauthorized {
	return &AdminBanDeviceV4Unauthorized{}
}

/*AdminBanDeviceV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBanDeviceV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanDeviceV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBanDeviceV4Unauthorized) ToJSONString() string {
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

func (o *AdminBanDeviceV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanDeviceV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanDeviceV4Forbidden creates a AdminBanDeviceV4Forbidden with default headers values
func NewAdminBanDeviceV4Forbidden() *AdminBanDeviceV4Forbidden {
	return &AdminBanDeviceV4Forbidden{}
}

/*AdminBanDeviceV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBanDeviceV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanDeviceV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBanDeviceV4Forbidden) ToJSONString() string {
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

func (o *AdminBanDeviceV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanDeviceV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanDeviceV4Conflict creates a AdminBanDeviceV4Conflict with default headers values
func NewAdminBanDeviceV4Conflict() *AdminBanDeviceV4Conflict {
	return &AdminBanDeviceV4Conflict{}
}

/*AdminBanDeviceV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10202</td><td>active device ban config already exists</td></tr></table>
*/
type AdminBanDeviceV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanDeviceV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminBanDeviceV4Conflict) ToJSONString() string {
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

func (o *AdminBanDeviceV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanDeviceV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanDeviceV4InternalServerError creates a AdminBanDeviceV4InternalServerError with default headers values
func NewAdminBanDeviceV4InternalServerError() *AdminBanDeviceV4InternalServerError {
	return &AdminBanDeviceV4InternalServerError{}
}

/*AdminBanDeviceV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBanDeviceV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanDeviceV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/devices/bans][%d] adminBanDeviceV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBanDeviceV4InternalServerError) ToJSONString() string {
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

func (o *AdminBanDeviceV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanDeviceV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
