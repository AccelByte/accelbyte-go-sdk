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

// AddClientPermissionReader is a Reader for the AddClientPermission structure.
type AddClientPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddClientPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddClientPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddClientPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddClientPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddClientPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddClientPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/clients/{clientId}/clientpermissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddClientPermissionNoContent creates a AddClientPermissionNoContent with default headers values
func NewAddClientPermissionNoContent() *AddClientPermissionNoContent {
	return &AddClientPermissionNoContent{}
}

/*AddClientPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type AddClientPermissionNoContent struct {
}

func (o *AddClientPermissionNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] addClientPermissionNoContent ", 204)
}

func (o *AddClientPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddClientPermissionBadRequest creates a AddClientPermissionBadRequest with default headers values
func NewAddClientPermissionBadRequest() *AddClientPermissionBadRequest {
	return &AddClientPermissionBadRequest{}
}

/*AddClientPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type AddClientPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddClientPermissionBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] addClientPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddClientPermissionBadRequest) ToJSONString() string {
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

func (o *AddClientPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddClientPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddClientPermissionUnauthorized creates a AddClientPermissionUnauthorized with default headers values
func NewAddClientPermissionUnauthorized() *AddClientPermissionUnauthorized {
	return &AddClientPermissionUnauthorized{}
}

/*AddClientPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddClientPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddClientPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] addClientPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddClientPermissionUnauthorized) ToJSONString() string {
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

func (o *AddClientPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddClientPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddClientPermissionForbidden creates a AddClientPermissionForbidden with default headers values
func NewAddClientPermissionForbidden() *AddClientPermissionForbidden {
	return &AddClientPermissionForbidden{}
}

/*AddClientPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddClientPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddClientPermissionForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] addClientPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddClientPermissionForbidden) ToJSONString() string {
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

func (o *AddClientPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddClientPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddClientPermissionNotFound creates a AddClientPermissionNotFound with default headers values
func NewAddClientPermissionNotFound() *AddClientPermissionNotFound {
	return &AddClientPermissionNotFound{}
}

/*AddClientPermissionNotFound handles this case with default header values.

  Data not found
*/
type AddClientPermissionNotFound struct {
}

func (o *AddClientPermissionNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] addClientPermissionNotFound ", 404)
}

func (o *AddClientPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
