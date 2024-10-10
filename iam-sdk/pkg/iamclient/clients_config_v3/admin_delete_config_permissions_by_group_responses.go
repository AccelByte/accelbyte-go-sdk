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

// AdminDeleteConfigPermissionsByGroupReader is a Reader for the AdminDeleteConfigPermissionsByGroup structure.
type AdminDeleteConfigPermissionsByGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteConfigPermissionsByGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteConfigPermissionsByGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteConfigPermissionsByGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteConfigPermissionsByGroupForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/clientConfig/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteConfigPermissionsByGroupNoContent creates a AdminDeleteConfigPermissionsByGroupNoContent with default headers values
func NewAdminDeleteConfigPermissionsByGroupNoContent() *AdminDeleteConfigPermissionsByGroupNoContent {
	return &AdminDeleteConfigPermissionsByGroupNoContent{}
}

/*AdminDeleteConfigPermissionsByGroupNoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteConfigPermissionsByGroupNoContent struct {
}

func (o *AdminDeleteConfigPermissionsByGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/clientConfig/permissions][%d] adminDeleteConfigPermissionsByGroupNoContent ", 204)
}

func (o *AdminDeleteConfigPermissionsByGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteConfigPermissionsByGroupUnauthorized creates a AdminDeleteConfigPermissionsByGroupUnauthorized with default headers values
func NewAdminDeleteConfigPermissionsByGroupUnauthorized() *AdminDeleteConfigPermissionsByGroupUnauthorized {
	return &AdminDeleteConfigPermissionsByGroupUnauthorized{}
}

/*AdminDeleteConfigPermissionsByGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteConfigPermissionsByGroupUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteConfigPermissionsByGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/clientConfig/permissions][%d] adminDeleteConfigPermissionsByGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteConfigPermissionsByGroupUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteConfigPermissionsByGroupUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteConfigPermissionsByGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteConfigPermissionsByGroupForbidden creates a AdminDeleteConfigPermissionsByGroupForbidden with default headers values
func NewAdminDeleteConfigPermissionsByGroupForbidden() *AdminDeleteConfigPermissionsByGroupForbidden {
	return &AdminDeleteConfigPermissionsByGroupForbidden{}
}

/*AdminDeleteConfigPermissionsByGroupForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteConfigPermissionsByGroupForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteConfigPermissionsByGroupForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/clientConfig/permissions][%d] adminDeleteConfigPermissionsByGroupForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteConfigPermissionsByGroupForbidden) ToJSONString() string {
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

func (o *AdminDeleteConfigPermissionsByGroupForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteConfigPermissionsByGroupForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
