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

// AdminGenerateReportV4Reader is a Reader for the AdminGenerateReportV4 structure.
type AdminGenerateReportV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGenerateReportV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGenerateReportV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGenerateReportV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGenerateReportV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGenerateReportV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGenerateReportV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGenerateReportV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/namespaces/{namespace}/devices/report returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGenerateReportV4OK creates a AdminGenerateReportV4OK with default headers values
func NewAdminGenerateReportV4OK() *AdminGenerateReportV4OK {
	return &AdminGenerateReportV4OK{}
}

/*AdminGenerateReportV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminGenerateReportV4OK struct {
}

func (o *AdminGenerateReportV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4OK ", 200)
}

func (o *AdminGenerateReportV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminGenerateReportV4BadRequest creates a AdminGenerateReportV4BadRequest with default headers values
func NewAdminGenerateReportV4BadRequest() *AdminGenerateReportV4BadRequest {
	return &AdminGenerateReportV4BadRequest{}
}

/*AdminGenerateReportV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGenerateReportV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateReportV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGenerateReportV4BadRequest) ToJSONString() string {
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

func (o *AdminGenerateReportV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateReportV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateReportV4Unauthorized creates a AdminGenerateReportV4Unauthorized with default headers values
func NewAdminGenerateReportV4Unauthorized() *AdminGenerateReportV4Unauthorized {
	return &AdminGenerateReportV4Unauthorized{}
}

/*AdminGenerateReportV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGenerateReportV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateReportV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGenerateReportV4Unauthorized) ToJSONString() string {
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

func (o *AdminGenerateReportV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateReportV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateReportV4Forbidden creates a AdminGenerateReportV4Forbidden with default headers values
func NewAdminGenerateReportV4Forbidden() *AdminGenerateReportV4Forbidden {
	return &AdminGenerateReportV4Forbidden{}
}

/*AdminGenerateReportV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGenerateReportV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateReportV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGenerateReportV4Forbidden) ToJSONString() string {
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

func (o *AdminGenerateReportV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateReportV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateReportV4NotFound creates a AdminGenerateReportV4NotFound with default headers values
func NewAdminGenerateReportV4NotFound() *AdminGenerateReportV4NotFound {
	return &AdminGenerateReportV4NotFound{}
}

/*AdminGenerateReportV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminGenerateReportV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateReportV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGenerateReportV4NotFound) ToJSONString() string {
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

func (o *AdminGenerateReportV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateReportV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateReportV4InternalServerError creates a AdminGenerateReportV4InternalServerError with default headers values
func NewAdminGenerateReportV4InternalServerError() *AdminGenerateReportV4InternalServerError {
	return &AdminGenerateReportV4InternalServerError{}
}

/*AdminGenerateReportV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGenerateReportV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGenerateReportV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/namespaces/{namespace}/devices/report][%d] adminGenerateReportV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGenerateReportV4InternalServerError) ToJSONString() string {
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

func (o *AdminGenerateReportV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGenerateReportV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
