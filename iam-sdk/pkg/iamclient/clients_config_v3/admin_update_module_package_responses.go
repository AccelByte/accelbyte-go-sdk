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

// AdminUpdateModulePackageReader is a Reader for the AdminUpdateModulePackage structure.
type AdminUpdateModulePackageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateModulePackageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateModulePackageNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateModulePackageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateModulePackageForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/clientConfig/permissions/package returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateModulePackageNoContent creates a AdminUpdateModulePackageNoContent with default headers values
func NewAdminUpdateModulePackageNoContent() *AdminUpdateModulePackageNoContent {
	return &AdminUpdateModulePackageNoContent{}
}

/*AdminUpdateModulePackageNoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateModulePackageNoContent struct {
}

func (o *AdminUpdateModulePackageNoContent) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/clientConfig/permissions/package][%d] adminUpdateModulePackageNoContent ", 204)
}

func (o *AdminUpdateModulePackageNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateModulePackageUnauthorized creates a AdminUpdateModulePackageUnauthorized with default headers values
func NewAdminUpdateModulePackageUnauthorized() *AdminUpdateModulePackageUnauthorized {
	return &AdminUpdateModulePackageUnauthorized{}
}

/*AdminUpdateModulePackageUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateModulePackageUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateModulePackageUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/clientConfig/permissions/package][%d] adminUpdateModulePackageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateModulePackageUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateModulePackageUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateModulePackageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateModulePackageForbidden creates a AdminUpdateModulePackageForbidden with default headers values
func NewAdminUpdateModulePackageForbidden() *AdminUpdateModulePackageForbidden {
	return &AdminUpdateModulePackageForbidden{}
}

/*AdminUpdateModulePackageForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateModulePackageForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateModulePackageForbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/clientConfig/permissions/package][%d] adminUpdateModulePackageForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateModulePackageForbidden) ToJSONString() string {
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

func (o *AdminUpdateModulePackageForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateModulePackageForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
