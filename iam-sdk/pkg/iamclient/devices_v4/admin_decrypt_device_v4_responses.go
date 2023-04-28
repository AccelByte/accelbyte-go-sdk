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

// AdminDecryptDeviceV4Reader is a Reader for the AdminDecryptDeviceV4 structure.
type AdminDecryptDeviceV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDecryptDeviceV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDecryptDeviceV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDecryptDeviceV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDecryptDeviceV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDecryptDeviceV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDecryptDeviceV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDecryptDeviceV4OK creates a AdminDecryptDeviceV4OK with default headers values
func NewAdminDecryptDeviceV4OK() *AdminDecryptDeviceV4OK {
	return &AdminDecryptDeviceV4OK{}
}

/*AdminDecryptDeviceV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminDecryptDeviceV4OK struct {
	Payload *iamclientmodels.ModelDeviceIDDecryptResponseV4
}

func (o *AdminDecryptDeviceV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt][%d] adminDecryptDeviceV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminDecryptDeviceV4OK) ToJSONString() string {
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

func (o *AdminDecryptDeviceV4OK) GetPayload() *iamclientmodels.ModelDeviceIDDecryptResponseV4 {
	return o.Payload
}

func (o *AdminDecryptDeviceV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelDeviceIDDecryptResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDecryptDeviceV4BadRequest creates a AdminDecryptDeviceV4BadRequest with default headers values
func NewAdminDecryptDeviceV4BadRequest() *AdminDecryptDeviceV4BadRequest {
	return &AdminDecryptDeviceV4BadRequest{}
}

/*AdminDecryptDeviceV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminDecryptDeviceV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDecryptDeviceV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt][%d] adminDecryptDeviceV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDecryptDeviceV4BadRequest) ToJSONString() string {
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

func (o *AdminDecryptDeviceV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDecryptDeviceV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDecryptDeviceV4Unauthorized creates a AdminDecryptDeviceV4Unauthorized with default headers values
func NewAdminDecryptDeviceV4Unauthorized() *AdminDecryptDeviceV4Unauthorized {
	return &AdminDecryptDeviceV4Unauthorized{}
}

/*AdminDecryptDeviceV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDecryptDeviceV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDecryptDeviceV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt][%d] adminDecryptDeviceV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDecryptDeviceV4Unauthorized) ToJSONString() string {
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

func (o *AdminDecryptDeviceV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDecryptDeviceV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDecryptDeviceV4Forbidden creates a AdminDecryptDeviceV4Forbidden with default headers values
func NewAdminDecryptDeviceV4Forbidden() *AdminDecryptDeviceV4Forbidden {
	return &AdminDecryptDeviceV4Forbidden{}
}

/*AdminDecryptDeviceV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDecryptDeviceV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDecryptDeviceV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt][%d] adminDecryptDeviceV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDecryptDeviceV4Forbidden) ToJSONString() string {
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

func (o *AdminDecryptDeviceV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDecryptDeviceV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDecryptDeviceV4InternalServerError creates a AdminDecryptDeviceV4InternalServerError with default headers values
func NewAdminDecryptDeviceV4InternalServerError() *AdminDecryptDeviceV4InternalServerError {
	return &AdminDecryptDeviceV4InternalServerError{}
}

/*AdminDecryptDeviceV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDecryptDeviceV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDecryptDeviceV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt][%d] adminDecryptDeviceV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDecryptDeviceV4InternalServerError) ToJSONString() string {
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

func (o *AdminDecryptDeviceV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDecryptDeviceV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
