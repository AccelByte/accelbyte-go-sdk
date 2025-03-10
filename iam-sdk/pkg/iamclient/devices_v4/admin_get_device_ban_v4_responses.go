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

// AdminGetDeviceBanV4Reader is a Reader for the AdminGetDeviceBanV4 structure.
type AdminGetDeviceBanV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetDeviceBanV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetDeviceBanV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetDeviceBanV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetDeviceBanV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetDeviceBanV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetDeviceBanV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetDeviceBanV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetDeviceBanV4OK creates a AdminGetDeviceBanV4OK with default headers values
func NewAdminGetDeviceBanV4OK() *AdminGetDeviceBanV4OK {
	return &AdminGetDeviceBanV4OK{}
}

/*AdminGetDeviceBanV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetDeviceBanV4OK struct {
	Payload *iamclientmodels.ModelDeviceBanResponseV4
}

func (o *AdminGetDeviceBanV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4OK) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4OK) GetPayload() *iamclientmodels.ModelDeviceBanResponseV4 {
	return o.Payload
}

func (o *AdminGetDeviceBanV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelDeviceBanResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetDeviceBanV4BadRequest creates a AdminGetDeviceBanV4BadRequest with default headers values
func NewAdminGetDeviceBanV4BadRequest() *AdminGetDeviceBanV4BadRequest {
	return &AdminGetDeviceBanV4BadRequest{}
}

/*AdminGetDeviceBanV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetDeviceBanV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceBanV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4BadRequest) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceBanV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceBanV4Unauthorized creates a AdminGetDeviceBanV4Unauthorized with default headers values
func NewAdminGetDeviceBanV4Unauthorized() *AdminGetDeviceBanV4Unauthorized {
	return &AdminGetDeviceBanV4Unauthorized{}
}

/*AdminGetDeviceBanV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetDeviceBanV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceBanV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceBanV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceBanV4Forbidden creates a AdminGetDeviceBanV4Forbidden with default headers values
func NewAdminGetDeviceBanV4Forbidden() *AdminGetDeviceBanV4Forbidden {
	return &AdminGetDeviceBanV4Forbidden{}
}

/*AdminGetDeviceBanV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetDeviceBanV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceBanV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4Forbidden) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceBanV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceBanV4NotFound creates a AdminGetDeviceBanV4NotFound with default headers values
func NewAdminGetDeviceBanV4NotFound() *AdminGetDeviceBanV4NotFound {
	return &AdminGetDeviceBanV4NotFound{}
}

/*AdminGetDeviceBanV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminGetDeviceBanV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceBanV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4NotFound) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceBanV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceBanV4InternalServerError creates a AdminGetDeviceBanV4InternalServerError with default headers values
func NewAdminGetDeviceBanV4InternalServerError() *AdminGetDeviceBanV4InternalServerError {
	return &AdminGetDeviceBanV4InternalServerError{}
}

/*AdminGetDeviceBanV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetDeviceBanV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceBanV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminGetDeviceBanV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetDeviceBanV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetDeviceBanV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceBanV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
