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

// AdminUnbanDeviceV4Reader is a Reader for the AdminUnbanDeviceV4 structure.
type AdminUnbanDeviceV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUnbanDeviceV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUnbanDeviceV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUnbanDeviceV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUnbanDeviceV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUnbanDeviceV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUnbanDeviceV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUnbanDeviceV4NoContent creates a AdminUnbanDeviceV4NoContent with default headers values
func NewAdminUnbanDeviceV4NoContent() *AdminUnbanDeviceV4NoContent {
	return &AdminUnbanDeviceV4NoContent{}
}

/*AdminUnbanDeviceV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUnbanDeviceV4NoContent struct {
}

func (o *AdminUnbanDeviceV4NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban][%d] adminUnbanDeviceV4NoContent ", 204)
}

func (o *AdminUnbanDeviceV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUnbanDeviceV4BadRequest creates a AdminUnbanDeviceV4BadRequest with default headers values
func NewAdminUnbanDeviceV4BadRequest() *AdminUnbanDeviceV4BadRequest {
	return &AdminUnbanDeviceV4BadRequest{}
}

/*AdminUnbanDeviceV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUnbanDeviceV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanDeviceV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban][%d] adminUnbanDeviceV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUnbanDeviceV4BadRequest) ToJSONString() string {
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

func (o *AdminUnbanDeviceV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanDeviceV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanDeviceV4Unauthorized creates a AdminUnbanDeviceV4Unauthorized with default headers values
func NewAdminUnbanDeviceV4Unauthorized() *AdminUnbanDeviceV4Unauthorized {
	return &AdminUnbanDeviceV4Unauthorized{}
}

/*AdminUnbanDeviceV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUnbanDeviceV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanDeviceV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban][%d] adminUnbanDeviceV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUnbanDeviceV4Unauthorized) ToJSONString() string {
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

func (o *AdminUnbanDeviceV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanDeviceV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanDeviceV4Forbidden creates a AdminUnbanDeviceV4Forbidden with default headers values
func NewAdminUnbanDeviceV4Forbidden() *AdminUnbanDeviceV4Forbidden {
	return &AdminUnbanDeviceV4Forbidden{}
}

/*AdminUnbanDeviceV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUnbanDeviceV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanDeviceV4Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban][%d] adminUnbanDeviceV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUnbanDeviceV4Forbidden) ToJSONString() string {
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

func (o *AdminUnbanDeviceV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanDeviceV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnbanDeviceV4InternalServerError creates a AdminUnbanDeviceV4InternalServerError with default headers values
func NewAdminUnbanDeviceV4InternalServerError() *AdminUnbanDeviceV4InternalServerError {
	return &AdminUnbanDeviceV4InternalServerError{}
}

/*AdminUnbanDeviceV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUnbanDeviceV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUnbanDeviceV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban][%d] adminUnbanDeviceV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUnbanDeviceV4InternalServerError) ToJSONString() string {
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

func (o *AdminUnbanDeviceV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUnbanDeviceV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
