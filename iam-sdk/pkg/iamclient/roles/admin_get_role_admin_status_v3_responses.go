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

// AdminGetRoleAdminStatusV3Reader is a Reader for the AdminGetRoleAdminStatusV3 structure.
type AdminGetRoleAdminStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleAdminStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleAdminStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRoleAdminStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleAdminStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleAdminStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleAdminStatusV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleAdminStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleAdminStatusV3OK creates a AdminGetRoleAdminStatusV3OK with default headers values
func NewAdminGetRoleAdminStatusV3OK() *AdminGetRoleAdminStatusV3OK {
	return &AdminGetRoleAdminStatusV3OK{}
}

/*AdminGetRoleAdminStatusV3OK handles this case with default header values.

  OK
*/
type AdminGetRoleAdminStatusV3OK struct {
	Payload *iamclientmodels.ModelRoleAdminStatusResponseV3
}

func (o *AdminGetRoleAdminStatusV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3OK) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3OK) GetPayload() *iamclientmodels.ModelRoleAdminStatusResponseV3 {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleAdminStatusResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRoleAdminStatusV3BadRequest creates a AdminGetRoleAdminStatusV3BadRequest with default headers values
func NewAdminGetRoleAdminStatusV3BadRequest() *AdminGetRoleAdminStatusV3BadRequest {
	return &AdminGetRoleAdminStatusV3BadRequest{}
}

/*AdminGetRoleAdminStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetRoleAdminStatusV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleAdminStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3BadRequest) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleAdminStatusV3Unauthorized creates a AdminGetRoleAdminStatusV3Unauthorized with default headers values
func NewAdminGetRoleAdminStatusV3Unauthorized() *AdminGetRoleAdminStatusV3Unauthorized {
	return &AdminGetRoleAdminStatusV3Unauthorized{}
}

/*AdminGetRoleAdminStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleAdminStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleAdminStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleAdminStatusV3Forbidden creates a AdminGetRoleAdminStatusV3Forbidden with default headers values
func NewAdminGetRoleAdminStatusV3Forbidden() *AdminGetRoleAdminStatusV3Forbidden {
	return &AdminGetRoleAdminStatusV3Forbidden{}
}

/*AdminGetRoleAdminStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleAdminStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleAdminStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleAdminStatusV3NotFound creates a AdminGetRoleAdminStatusV3NotFound with default headers values
func NewAdminGetRoleAdminStatusV3NotFound() *AdminGetRoleAdminStatusV3NotFound {
	return &AdminGetRoleAdminStatusV3NotFound{}
}

/*AdminGetRoleAdminStatusV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleAdminStatusV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleAdminStatusV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3NotFound) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleAdminStatusV3InternalServerError creates a AdminGetRoleAdminStatusV3InternalServerError with default headers values
func NewAdminGetRoleAdminStatusV3InternalServerError() *AdminGetRoleAdminStatusV3InternalServerError {
	return &AdminGetRoleAdminStatusV3InternalServerError{}
}

/*AdminGetRoleAdminStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleAdminStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleAdminStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/roles/{roleId}/admin][%d] adminGetRoleAdminStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleAdminStatusV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleAdminStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleAdminStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
