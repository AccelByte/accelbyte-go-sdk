// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// UpdateNamespaceReader is a Reader for the UpdateNamespace structure.
type UpdateNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateNamespaceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateNamespaceConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/admin/namespaces/{namespace}/basic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateNamespaceOK creates a UpdateNamespaceOK with default headers values
func NewUpdateNamespaceOK() *UpdateNamespaceOK {
	return &UpdateNamespaceOK{}
}

/*UpdateNamespaceOK handles this case with default header values.

  Successful operation
*/
type UpdateNamespaceOK struct {
	Payload *basicclientmodels.NamespaceInfo
}

func (o *UpdateNamespaceOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateNamespaceOK) ToJSONString() string {
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

func (o *UpdateNamespaceOK) GetPayload() *basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *UpdateNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.NamespaceInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNamespaceBadRequest creates a UpdateNamespaceBadRequest with default headers values
func NewUpdateNamespaceBadRequest() *UpdateNamespaceBadRequest {
	return &UpdateNamespaceBadRequest{}
}

/*UpdateNamespaceBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateNamespaceBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateNamespaceBadRequest) ToJSONString() string {
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

func (o *UpdateNamespaceBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNamespaceUnauthorized creates a UpdateNamespaceUnauthorized with default headers values
func NewUpdateNamespaceUnauthorized() *UpdateNamespaceUnauthorized {
	return &UpdateNamespaceUnauthorized{}
}

/*UpdateNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateNamespaceUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateNamespaceUnauthorized) ToJSONString() string {
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

func (o *UpdateNamespaceUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNamespaceForbidden creates a UpdateNamespaceForbidden with default headers values
func NewUpdateNamespaceForbidden() *UpdateNamespaceForbidden {
	return &UpdateNamespaceForbidden{}
}

/*UpdateNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateNamespaceForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateNamespaceForbidden) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateNamespaceForbidden) ToJSONString() string {
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

func (o *UpdateNamespaceForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNamespaceNotFound creates a UpdateNamespaceNotFound with default headers values
func NewUpdateNamespaceNotFound() *UpdateNamespaceNotFound {
	return &UpdateNamespaceNotFound{}
}

/*UpdateNamespaceNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11337</td><td>Unable to {action}: Namespace not found</td></tr></table>
*/
type UpdateNamespaceNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateNamespaceNotFound) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateNamespaceNotFound) ToJSONString() string {
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

func (o *UpdateNamespaceNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateNamespaceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateNamespaceConflict creates a UpdateNamespaceConflict with default headers values
func NewUpdateNamespaceConflict() *UpdateNamespaceConflict {
	return &UpdateNamespaceConflict{}
}

/*UpdateNamespaceConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type UpdateNamespaceConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateNamespaceConflict) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/basic][%d] updateNamespaceConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateNamespaceConflict) ToJSONString() string {
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

func (o *UpdateNamespaceConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateNamespaceConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
