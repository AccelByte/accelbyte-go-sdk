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

// AdminListClientAvailablePermissionsReader is a Reader for the AdminListClientAvailablePermissions structure.
type AdminListClientAvailablePermissionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListClientAvailablePermissionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListClientAvailablePermissionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListClientAvailablePermissionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListClientAvailablePermissionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/clientConfig/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListClientAvailablePermissionsOK creates a AdminListClientAvailablePermissionsOK with default headers values
func NewAdminListClientAvailablePermissionsOK() *AdminListClientAvailablePermissionsOK {
	return &AdminListClientAvailablePermissionsOK{}
}

/*AdminListClientAvailablePermissionsOK handles this case with default header values.

  OK
*/
type AdminListClientAvailablePermissionsOK struct {
	Payload *iamclientmodels.ClientmodelListClientPermissionSet
}

func (o *AdminListClientAvailablePermissionsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/permissions][%d] adminListClientAvailablePermissionsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListClientAvailablePermissionsOK) ToJSONString() string {
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

func (o *AdminListClientAvailablePermissionsOK) GetPayload() *iamclientmodels.ClientmodelListClientPermissionSet {
	return o.Payload
}

func (o *AdminListClientAvailablePermissionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelListClientPermissionSet)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListClientAvailablePermissionsUnauthorized creates a AdminListClientAvailablePermissionsUnauthorized with default headers values
func NewAdminListClientAvailablePermissionsUnauthorized() *AdminListClientAvailablePermissionsUnauthorized {
	return &AdminListClientAvailablePermissionsUnauthorized{}
}

/*AdminListClientAvailablePermissionsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListClientAvailablePermissionsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListClientAvailablePermissionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/permissions][%d] adminListClientAvailablePermissionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListClientAvailablePermissionsUnauthorized) ToJSONString() string {
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

func (o *AdminListClientAvailablePermissionsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListClientAvailablePermissionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListClientAvailablePermissionsForbidden creates a AdminListClientAvailablePermissionsForbidden with default headers values
func NewAdminListClientAvailablePermissionsForbidden() *AdminListClientAvailablePermissionsForbidden {
	return &AdminListClientAvailablePermissionsForbidden{}
}

/*AdminListClientAvailablePermissionsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListClientAvailablePermissionsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListClientAvailablePermissionsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/permissions][%d] adminListClientAvailablePermissionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListClientAvailablePermissionsForbidden) ToJSONString() string {
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

func (o *AdminListClientAvailablePermissionsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListClientAvailablePermissionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
