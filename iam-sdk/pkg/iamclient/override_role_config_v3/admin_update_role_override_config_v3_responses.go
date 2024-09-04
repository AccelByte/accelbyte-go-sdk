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

// AdminUpdateRoleOverrideConfigV3Reader is a Reader for the AdminUpdateRoleOverrideConfigV3 structure.
type AdminUpdateRoleOverrideConfigV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateRoleOverrideConfigV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateRoleOverrideConfigV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateRoleOverrideConfigV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateRoleOverrideConfigV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateRoleOverrideConfigV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateRoleOverrideConfigV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateRoleOverrideConfigV3OK creates a AdminUpdateRoleOverrideConfigV3OK with default headers values
func NewAdminUpdateRoleOverrideConfigV3OK() *AdminUpdateRoleOverrideConfigV3OK {
	return &AdminUpdateRoleOverrideConfigV3OK{}
}

/*AdminUpdateRoleOverrideConfigV3OK handles this case with default header values.

  OK
*/
type AdminUpdateRoleOverrideConfigV3OK struct {
	Payload *iamclientmodels.ModelRoleOverrideResponse
}

func (o *AdminUpdateRoleOverrideConfigV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride][%d] adminUpdateRoleOverrideConfigV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateRoleOverrideConfigV3OK) ToJSONString() string {
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

func (o *AdminUpdateRoleOverrideConfigV3OK) GetPayload() *iamclientmodels.ModelRoleOverrideResponse {
	return o.Payload
}

func (o *AdminUpdateRoleOverrideConfigV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleOverrideResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateRoleOverrideConfigV3BadRequest creates a AdminUpdateRoleOverrideConfigV3BadRequest with default headers values
func NewAdminUpdateRoleOverrideConfigV3BadRequest() *AdminUpdateRoleOverrideConfigV3BadRequest {
	return &AdminUpdateRoleOverrideConfigV3BadRequest{}
}

/*AdminUpdateRoleOverrideConfigV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminUpdateRoleOverrideConfigV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRoleOverrideConfigV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride][%d] adminUpdateRoleOverrideConfigV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateRoleOverrideConfigV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateRoleOverrideConfigV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRoleOverrideConfigV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRoleOverrideConfigV3Unauthorized creates a AdminUpdateRoleOverrideConfigV3Unauthorized with default headers values
func NewAdminUpdateRoleOverrideConfigV3Unauthorized() *AdminUpdateRoleOverrideConfigV3Unauthorized {
	return &AdminUpdateRoleOverrideConfigV3Unauthorized{}
}

/*AdminUpdateRoleOverrideConfigV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateRoleOverrideConfigV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRoleOverrideConfigV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride][%d] adminUpdateRoleOverrideConfigV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateRoleOverrideConfigV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateRoleOverrideConfigV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRoleOverrideConfigV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRoleOverrideConfigV3Forbidden creates a AdminUpdateRoleOverrideConfigV3Forbidden with default headers values
func NewAdminUpdateRoleOverrideConfigV3Forbidden() *AdminUpdateRoleOverrideConfigV3Forbidden {
	return &AdminUpdateRoleOverrideConfigV3Forbidden{}
}

/*AdminUpdateRoleOverrideConfigV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateRoleOverrideConfigV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRoleOverrideConfigV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride][%d] adminUpdateRoleOverrideConfigV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateRoleOverrideConfigV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateRoleOverrideConfigV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRoleOverrideConfigV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateRoleOverrideConfigV3InternalServerError creates a AdminUpdateRoleOverrideConfigV3InternalServerError with default headers values
func NewAdminUpdateRoleOverrideConfigV3InternalServerError() *AdminUpdateRoleOverrideConfigV3InternalServerError {
	return &AdminUpdateRoleOverrideConfigV3InternalServerError{}
}

/*AdminUpdateRoleOverrideConfigV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateRoleOverrideConfigV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateRoleOverrideConfigV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride][%d] adminUpdateRoleOverrideConfigV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateRoleOverrideConfigV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateRoleOverrideConfigV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateRoleOverrideConfigV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
