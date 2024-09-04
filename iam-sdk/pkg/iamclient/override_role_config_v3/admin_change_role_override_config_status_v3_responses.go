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

// AdminChangeRoleOverrideConfigStatusV3Reader is a Reader for the AdminChangeRoleOverrideConfigStatusV3 structure.
type AdminChangeRoleOverrideConfigStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminChangeRoleOverrideConfigStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminChangeRoleOverrideConfigStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminChangeRoleOverrideConfigStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminChangeRoleOverrideConfigStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminChangeRoleOverrideConfigStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminChangeRoleOverrideConfigStatusV3OK creates a AdminChangeRoleOverrideConfigStatusV3OK with default headers values
func NewAdminChangeRoleOverrideConfigStatusV3OK() *AdminChangeRoleOverrideConfigStatusV3OK {
	return &AdminChangeRoleOverrideConfigStatusV3OK{}
}

/*AdminChangeRoleOverrideConfigStatusV3OK handles this case with default header values.

  OK
*/
type AdminChangeRoleOverrideConfigStatusV3OK struct {
	Payload *iamclientmodels.ModelRoleOverrideResponse
}

func (o *AdminChangeRoleOverrideConfigStatusV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride/status][%d] adminChangeRoleOverrideConfigStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminChangeRoleOverrideConfigStatusV3OK) ToJSONString() string {
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

func (o *AdminChangeRoleOverrideConfigStatusV3OK) GetPayload() *iamclientmodels.ModelRoleOverrideResponse {
	return o.Payload
}

func (o *AdminChangeRoleOverrideConfigStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChangeRoleOverrideConfigStatusV3Unauthorized creates a AdminChangeRoleOverrideConfigStatusV3Unauthorized with default headers values
func NewAdminChangeRoleOverrideConfigStatusV3Unauthorized() *AdminChangeRoleOverrideConfigStatusV3Unauthorized {
	return &AdminChangeRoleOverrideConfigStatusV3Unauthorized{}
}

/*AdminChangeRoleOverrideConfigStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminChangeRoleOverrideConfigStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChangeRoleOverrideConfigStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride/status][%d] adminChangeRoleOverrideConfigStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminChangeRoleOverrideConfigStatusV3Unauthorized) ToJSONString() string {
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

func (o *AdminChangeRoleOverrideConfigStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChangeRoleOverrideConfigStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChangeRoleOverrideConfigStatusV3Forbidden creates a AdminChangeRoleOverrideConfigStatusV3Forbidden with default headers values
func NewAdminChangeRoleOverrideConfigStatusV3Forbidden() *AdminChangeRoleOverrideConfigStatusV3Forbidden {
	return &AdminChangeRoleOverrideConfigStatusV3Forbidden{}
}

/*AdminChangeRoleOverrideConfigStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminChangeRoleOverrideConfigStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChangeRoleOverrideConfigStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride/status][%d] adminChangeRoleOverrideConfigStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminChangeRoleOverrideConfigStatusV3Forbidden) ToJSONString() string {
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

func (o *AdminChangeRoleOverrideConfigStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChangeRoleOverrideConfigStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminChangeRoleOverrideConfigStatusV3InternalServerError creates a AdminChangeRoleOverrideConfigStatusV3InternalServerError with default headers values
func NewAdminChangeRoleOverrideConfigStatusV3InternalServerError() *AdminChangeRoleOverrideConfigStatusV3InternalServerError {
	return &AdminChangeRoleOverrideConfigStatusV3InternalServerError{}
}

/*AdminChangeRoleOverrideConfigStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminChangeRoleOverrideConfigStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminChangeRoleOverrideConfigStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/roleoverride/status][%d] adminChangeRoleOverrideConfigStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminChangeRoleOverrideConfigStatusV3InternalServerError) ToJSONString() string {
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

func (o *AdminChangeRoleOverrideConfigStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminChangeRoleOverrideConfigStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
