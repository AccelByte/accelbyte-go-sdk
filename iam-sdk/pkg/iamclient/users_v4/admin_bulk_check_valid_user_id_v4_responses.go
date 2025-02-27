// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// AdminBulkCheckValidUserIDV4Reader is a Reader for the AdminBulkCheckValidUserIDV4 structure.
type AdminBulkCheckValidUserIDV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkCheckValidUserIDV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkCheckValidUserIDV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkCheckValidUserIDV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkCheckValidUserIDV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkCheckValidUserIDV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkCheckValidUserIDV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkCheckValidUserIDV4OK creates a AdminBulkCheckValidUserIDV4OK with default headers values
func NewAdminBulkCheckValidUserIDV4OK() *AdminBulkCheckValidUserIDV4OK {
	return &AdminBulkCheckValidUserIDV4OK{}
}

/*AdminBulkCheckValidUserIDV4OK handles this case with default header values.

  Operation succeeded
*/
type AdminBulkCheckValidUserIDV4OK struct {
	Payload *iamclientmodels.ModelListValidUserIDResponseV4
}

func (o *AdminBulkCheckValidUserIDV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate][%d] adminBulkCheckValidUserIdV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkCheckValidUserIDV4OK) ToJSONString() string {
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

func (o *AdminBulkCheckValidUserIDV4OK) GetPayload() *iamclientmodels.ModelListValidUserIDResponseV4 {
	return o.Payload
}

func (o *AdminBulkCheckValidUserIDV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListValidUserIDResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkCheckValidUserIDV4BadRequest creates a AdminBulkCheckValidUserIDV4BadRequest with default headers values
func NewAdminBulkCheckValidUserIDV4BadRequest() *AdminBulkCheckValidUserIDV4BadRequest {
	return &AdminBulkCheckValidUserIDV4BadRequest{}
}

/*AdminBulkCheckValidUserIDV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminBulkCheckValidUserIDV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkCheckValidUserIDV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate][%d] adminBulkCheckValidUserIdV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkCheckValidUserIDV4BadRequest) ToJSONString() string {
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

func (o *AdminBulkCheckValidUserIDV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkCheckValidUserIDV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkCheckValidUserIDV4Unauthorized creates a AdminBulkCheckValidUserIDV4Unauthorized with default headers values
func NewAdminBulkCheckValidUserIDV4Unauthorized() *AdminBulkCheckValidUserIDV4Unauthorized {
	return &AdminBulkCheckValidUserIDV4Unauthorized{}
}

/*AdminBulkCheckValidUserIDV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkCheckValidUserIDV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkCheckValidUserIDV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate][%d] adminBulkCheckValidUserIdV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkCheckValidUserIDV4Unauthorized) ToJSONString() string {
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

func (o *AdminBulkCheckValidUserIDV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkCheckValidUserIDV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkCheckValidUserIDV4Forbidden creates a AdminBulkCheckValidUserIDV4Forbidden with default headers values
func NewAdminBulkCheckValidUserIDV4Forbidden() *AdminBulkCheckValidUserIDV4Forbidden {
	return &AdminBulkCheckValidUserIDV4Forbidden{}
}

/*AdminBulkCheckValidUserIDV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBulkCheckValidUserIDV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkCheckValidUserIDV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate][%d] adminBulkCheckValidUserIdV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkCheckValidUserIDV4Forbidden) ToJSONString() string {
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

func (o *AdminBulkCheckValidUserIDV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkCheckValidUserIDV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkCheckValidUserIDV4InternalServerError creates a AdminBulkCheckValidUserIDV4InternalServerError with default headers values
func NewAdminBulkCheckValidUserIDV4InternalServerError() *AdminBulkCheckValidUserIDV4InternalServerError {
	return &AdminBulkCheckValidUserIDV4InternalServerError{}
}

/*AdminBulkCheckValidUserIDV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBulkCheckValidUserIDV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkCheckValidUserIDV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/namespaces/{namespace}/users/bulk/validate][%d] adminBulkCheckValidUserIdV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkCheckValidUserIDV4InternalServerError) ToJSONString() string {
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

func (o *AdminBulkCheckValidUserIDV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkCheckValidUserIDV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
