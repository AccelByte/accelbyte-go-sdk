// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// UpdateClientPermissionReader is a Reader for the UpdateClientPermission structure.
type UpdateClientPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateClientPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateClientPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateClientPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateClientPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateClientPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateClientPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/clients/{clientId}/clientpermissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateClientPermissionNoContent creates a UpdateClientPermissionNoContent with default headers values
func NewUpdateClientPermissionNoContent() *UpdateClientPermissionNoContent {
	return &UpdateClientPermissionNoContent{}
}

/*UpdateClientPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type UpdateClientPermissionNoContent struct {
}

func (o *UpdateClientPermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions][%d] updateClientPermissionNoContent ", 204)
}

func (o *UpdateClientPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateClientPermissionBadRequest creates a UpdateClientPermissionBadRequest with default headers values
func NewUpdateClientPermissionBadRequest() *UpdateClientPermissionBadRequest {
	return &UpdateClientPermissionBadRequest{}
}

/*UpdateClientPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateClientPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientPermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions][%d] updateClientPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateClientPermissionBadRequest) ToJSONString() string {
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

func (o *UpdateClientPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientPermissionUnauthorized creates a UpdateClientPermissionUnauthorized with default headers values
func NewUpdateClientPermissionUnauthorized() *UpdateClientPermissionUnauthorized {
	return &UpdateClientPermissionUnauthorized{}
}

/*UpdateClientPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateClientPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions][%d] updateClientPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateClientPermissionUnauthorized) ToJSONString() string {
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

func (o *UpdateClientPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientPermissionForbidden creates a UpdateClientPermissionForbidden with default headers values
func NewUpdateClientPermissionForbidden() *UpdateClientPermissionForbidden {
	return &UpdateClientPermissionForbidden{}
}

/*UpdateClientPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateClientPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateClientPermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions][%d] updateClientPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateClientPermissionForbidden) ToJSONString() string {
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

func (o *UpdateClientPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateClientPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateClientPermissionNotFound creates a UpdateClientPermissionNotFound with default headers values
func NewUpdateClientPermissionNotFound() *UpdateClientPermissionNotFound {
	return &UpdateClientPermissionNotFound{}
}

/*UpdateClientPermissionNotFound handles this case with default header values.

  Data not found
*/
type UpdateClientPermissionNotFound struct {
}

func (o *UpdateClientPermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions][%d] updateClientPermissionNotFound ", 404)
}

func (o *UpdateClientPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
