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

// DeleteClientPermissionReader is a Reader for the DeleteClientPermission structure.
type DeleteClientPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteClientPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteClientPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteClientPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteClientPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteClientPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteClientPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteClientPermissionNoContent creates a DeleteClientPermissionNoContent with default headers values
func NewDeleteClientPermissionNoContent() *DeleteClientPermissionNoContent {
	return &DeleteClientPermissionNoContent{}
}

/*DeleteClientPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteClientPermissionNoContent struct {
}

func (o *DeleteClientPermissionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] deleteClientPermissionNoContent ", 204)
}

func (o *DeleteClientPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteClientPermissionBadRequest creates a DeleteClientPermissionBadRequest with default headers values
func NewDeleteClientPermissionBadRequest() *DeleteClientPermissionBadRequest {
	return &DeleteClientPermissionBadRequest{}
}

/*DeleteClientPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type DeleteClientPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientPermissionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] deleteClientPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteClientPermissionBadRequest) ToJSONString() string {
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

func (o *DeleteClientPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteClientPermissionUnauthorized creates a DeleteClientPermissionUnauthorized with default headers values
func NewDeleteClientPermissionUnauthorized() *DeleteClientPermissionUnauthorized {
	return &DeleteClientPermissionUnauthorized{}
}

/*DeleteClientPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteClientPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] deleteClientPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteClientPermissionUnauthorized) ToJSONString() string {
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

func (o *DeleteClientPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteClientPermissionForbidden creates a DeleteClientPermissionForbidden with default headers values
func NewDeleteClientPermissionForbidden() *DeleteClientPermissionForbidden {
	return &DeleteClientPermissionForbidden{}
}

/*DeleteClientPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteClientPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientPermissionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] deleteClientPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteClientPermissionForbidden) ToJSONString() string {
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

func (o *DeleteClientPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteClientPermissionNotFound creates a DeleteClientPermissionNotFound with default headers values
func NewDeleteClientPermissionNotFound() *DeleteClientPermissionNotFound {
	return &DeleteClientPermissionNotFound{}
}

/*DeleteClientPermissionNotFound handles this case with default header values.

  Data not found
*/
type DeleteClientPermissionNotFound struct {
}

func (o *DeleteClientPermissionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}/clientpermissions/{resource}/{action}][%d] deleteClientPermissionNotFound ", 404)
}

func (o *DeleteClientPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
