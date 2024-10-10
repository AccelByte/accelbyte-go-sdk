// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package override_role_config_v3

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

// AdminGetRoleSourceV3Reader is a Reader for the AdminGetRoleSourceV3 structure.
type AdminGetRoleSourceV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetRoleSourceV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetRoleSourceV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetRoleSourceV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetRoleSourceV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetRoleSourceV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetRoleSourceV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetRoleSourceV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetRoleSourceV3OK creates a AdminGetRoleSourceV3OK with default headers values
func NewAdminGetRoleSourceV3OK() *AdminGetRoleSourceV3OK {
	return &AdminGetRoleSourceV3OK{}
}

/*AdminGetRoleSourceV3OK handles this case with default header values.

  OK
*/
type AdminGetRoleSourceV3OK struct {
	Payload *iamclientmodels.ModelRoleOverrideSourceResponse
}

func (o *AdminGetRoleSourceV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3OK) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3OK) GetPayload() *iamclientmodels.ModelRoleOverrideSourceResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleOverrideSourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetRoleSourceV3BadRequest creates a AdminGetRoleSourceV3BadRequest with default headers values
func NewAdminGetRoleSourceV3BadRequest() *AdminGetRoleSourceV3BadRequest {
	return &AdminGetRoleSourceV3BadRequest{}
}

/*AdminGetRoleSourceV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetRoleSourceV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleSourceV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3BadRequest) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleSourceV3Unauthorized creates a AdminGetRoleSourceV3Unauthorized with default headers values
func NewAdminGetRoleSourceV3Unauthorized() *AdminGetRoleSourceV3Unauthorized {
	return &AdminGetRoleSourceV3Unauthorized{}
}

/*AdminGetRoleSourceV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetRoleSourceV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleSourceV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleSourceV3Forbidden creates a AdminGetRoleSourceV3Forbidden with default headers values
func NewAdminGetRoleSourceV3Forbidden() *AdminGetRoleSourceV3Forbidden {
	return &AdminGetRoleSourceV3Forbidden{}
}

/*AdminGetRoleSourceV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetRoleSourceV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleSourceV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3Forbidden) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleSourceV3NotFound creates a AdminGetRoleSourceV3NotFound with default headers values
func NewAdminGetRoleSourceV3NotFound() *AdminGetRoleSourceV3NotFound {
	return &AdminGetRoleSourceV3NotFound{}
}

/*AdminGetRoleSourceV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminGetRoleSourceV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleSourceV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3NotFound) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetRoleSourceV3InternalServerError creates a AdminGetRoleSourceV3InternalServerError with default headers values
func NewAdminGetRoleSourceV3InternalServerError() *AdminGetRoleSourceV3InternalServerError {
	return &AdminGetRoleSourceV3InternalServerError{}
}

/*AdminGetRoleSourceV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetRoleSourceV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetRoleSourceV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/roleoverride/source][%d] adminGetRoleSourceV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetRoleSourceV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetRoleSourceV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetRoleSourceV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
