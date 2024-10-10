// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients_config_v3

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

// AdminUpdateAvailablePermissionsByModuleReader is a Reader for the AdminUpdateAvailablePermissionsByModule structure.
type AdminUpdateAvailablePermissionsByModuleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAvailablePermissionsByModuleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateAvailablePermissionsByModuleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAvailablePermissionsByModuleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateAvailablePermissionsByModuleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/clientConfig/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAvailablePermissionsByModuleNoContent creates a AdminUpdateAvailablePermissionsByModuleNoContent with default headers values
func NewAdminUpdateAvailablePermissionsByModuleNoContent() *AdminUpdateAvailablePermissionsByModuleNoContent {
	return &AdminUpdateAvailablePermissionsByModuleNoContent{}
}

/*AdminUpdateAvailablePermissionsByModuleNoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateAvailablePermissionsByModuleNoContent struct {
}

func (o *AdminUpdateAvailablePermissionsByModuleNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/clientConfig/permissions][%d] adminUpdateAvailablePermissionsByModuleNoContent ", 204)
}

func (o *AdminUpdateAvailablePermissionsByModuleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateAvailablePermissionsByModuleUnauthorized creates a AdminUpdateAvailablePermissionsByModuleUnauthorized with default headers values
func NewAdminUpdateAvailablePermissionsByModuleUnauthorized() *AdminUpdateAvailablePermissionsByModuleUnauthorized {
	return &AdminUpdateAvailablePermissionsByModuleUnauthorized{}
}

/*AdminUpdateAvailablePermissionsByModuleUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateAvailablePermissionsByModuleUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAvailablePermissionsByModuleUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/clientConfig/permissions][%d] adminUpdateAvailablePermissionsByModuleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAvailablePermissionsByModuleUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateAvailablePermissionsByModuleUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAvailablePermissionsByModuleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAvailablePermissionsByModuleForbidden creates a AdminUpdateAvailablePermissionsByModuleForbidden with default headers values
func NewAdminUpdateAvailablePermissionsByModuleForbidden() *AdminUpdateAvailablePermissionsByModuleForbidden {
	return &AdminUpdateAvailablePermissionsByModuleForbidden{}
}

/*AdminUpdateAvailablePermissionsByModuleForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateAvailablePermissionsByModuleForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAvailablePermissionsByModuleForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/clientConfig/permissions][%d] adminUpdateAvailablePermissionsByModuleForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateAvailablePermissionsByModuleForbidden) ToJSONString() string {
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

func (o *AdminUpdateAvailablePermissionsByModuleForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAvailablePermissionsByModuleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
