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

// AdminGetDeviceTypesV4Reader is a Reader for the AdminGetDeviceTypesV4 structure.
type AdminGetDeviceTypesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetDeviceTypesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetDeviceTypesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetDeviceTypesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetDeviceTypesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetDeviceTypesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/devices/types returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetDeviceTypesV4OK creates a AdminGetDeviceTypesV4OK with default headers values
func NewAdminGetDeviceTypesV4OK() *AdminGetDeviceTypesV4OK {
	return &AdminGetDeviceTypesV4OK{}
}

/*AdminGetDeviceTypesV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetDeviceTypesV4OK struct {
	Payload *iamclientmodels.ModelDeviceTypesResponseV4
}

func (o *AdminGetDeviceTypesV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/types][%d] adminGetDeviceTypesV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetDeviceTypesV4OK) ToJSONString() string {
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

func (o *AdminGetDeviceTypesV4OK) GetPayload() *iamclientmodels.ModelDeviceTypesResponseV4 {
	return o.Payload
}

func (o *AdminGetDeviceTypesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelDeviceTypesResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetDeviceTypesV4Unauthorized creates a AdminGetDeviceTypesV4Unauthorized with default headers values
func NewAdminGetDeviceTypesV4Unauthorized() *AdminGetDeviceTypesV4Unauthorized {
	return &AdminGetDeviceTypesV4Unauthorized{}
}

/*AdminGetDeviceTypesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetDeviceTypesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceTypesV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/types][%d] adminGetDeviceTypesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetDeviceTypesV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetDeviceTypesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceTypesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceTypesV4Forbidden creates a AdminGetDeviceTypesV4Forbidden with default headers values
func NewAdminGetDeviceTypesV4Forbidden() *AdminGetDeviceTypesV4Forbidden {
	return &AdminGetDeviceTypesV4Forbidden{}
}

/*AdminGetDeviceTypesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetDeviceTypesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceTypesV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/types][%d] adminGetDeviceTypesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetDeviceTypesV4Forbidden) ToJSONString() string {
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

func (o *AdminGetDeviceTypesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceTypesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDeviceTypesV4InternalServerError creates a AdminGetDeviceTypesV4InternalServerError with default headers values
func NewAdminGetDeviceTypesV4InternalServerError() *AdminGetDeviceTypesV4InternalServerError {
	return &AdminGetDeviceTypesV4InternalServerError{}
}

/*AdminGetDeviceTypesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetDeviceTypesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetDeviceTypesV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/types][%d] adminGetDeviceTypesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetDeviceTypesV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetDeviceTypesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetDeviceTypesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
