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

// CreateNamespaceReader is a Reader for the CreateNamespace structure.
type CreateNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateNamespaceCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNamespaceConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNamespaceCreated creates a CreateNamespaceCreated with default headers values
func NewCreateNamespaceCreated() *CreateNamespaceCreated {
	return &CreateNamespaceCreated{}
}

/*CreateNamespaceCreated handles this case with default header values.

  Successful operation
*/
type CreateNamespaceCreated struct {
	Payload *basicclientmodels.NamespaceInfo
}

func (o *CreateNamespaceCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces][%d] createNamespaceCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateNamespaceCreated) ToJSONString() string {
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

func (o *CreateNamespaceCreated) GetPayload() *basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *CreateNamespaceCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNamespaceBadRequest creates a CreateNamespaceBadRequest with default headers values
func NewCreateNamespaceBadRequest() *CreateNamespaceBadRequest {
	return &CreateNamespaceBadRequest{}
}

/*CreateNamespaceBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>11338</td><td>Unable to {action}: Namespace contains invalid character(s)</td></tr><tr><td>11339</td><td>Unable to {action}: Display name contains invalid character(s)</td></tr><tr><td>11340</td><td>Unable to {action}: The maximum number of games namespace for studio:{studio} has been exceeded</td></tr></table>
*/
type CreateNamespaceBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *CreateNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces][%d] createNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNamespaceBadRequest) ToJSONString() string {
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

func (o *CreateNamespaceBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNamespaceUnauthorized creates a CreateNamespaceUnauthorized with default headers values
func NewCreateNamespaceUnauthorized() *CreateNamespaceUnauthorized {
	return &CreateNamespaceUnauthorized{}
}

/*CreateNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type CreateNamespaceUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces][%d] createNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNamespaceUnauthorized) ToJSONString() string {
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

func (o *CreateNamespaceUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNamespaceForbidden creates a CreateNamespaceForbidden with default headers values
func NewCreateNamespaceForbidden() *CreateNamespaceForbidden {
	return &CreateNamespaceForbidden{}
}

/*CreateNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreateNamespaceForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateNamespaceForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces][%d] createNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNamespaceForbidden) ToJSONString() string {
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

func (o *CreateNamespaceForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNamespaceConflict creates a CreateNamespaceConflict with default headers values
func NewCreateNamespaceConflict() *CreateNamespaceConflict {
	return &CreateNamespaceConflict{}
}

/*CreateNamespaceConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11336</td><td>Unable to {action}: Namespace already exists</td></tr></table>
*/
type CreateNamespaceConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateNamespaceConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces][%d] createNamespaceConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNamespaceConflict) ToJSONString() string {
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

func (o *CreateNamespaceConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateNamespaceConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
