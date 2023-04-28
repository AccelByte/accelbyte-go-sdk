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

// DeleteNamespaceReader is a Reader for the DeleteNamespace structure.
type DeleteNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteNamespaceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteNamespaceConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /basic/v1/admin/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNamespaceOK creates a DeleteNamespaceOK with default headers values
func NewDeleteNamespaceOK() *DeleteNamespaceOK {
	return &DeleteNamespaceOK{}
}

/*DeleteNamespaceOK handles this case with default header values.

  Successful operation
*/
type DeleteNamespaceOK struct {
	Payload *basicclientmodels.NamespaceInfo
}

func (o *DeleteNamespaceOK) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteNamespaceOK) ToJSONString() string {
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

func (o *DeleteNamespaceOK) GetPayload() *basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *DeleteNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteNamespaceBadRequest creates a DeleteNamespaceBadRequest with default headers values
func NewDeleteNamespaceBadRequest() *DeleteNamespaceBadRequest {
	return &DeleteNamespaceBadRequest{}
}

/*DeleteNamespaceBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteNamespaceBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *DeleteNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteNamespaceBadRequest) ToJSONString() string {
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

func (o *DeleteNamespaceBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteNamespaceUnauthorized creates a DeleteNamespaceUnauthorized with default headers values
func NewDeleteNamespaceUnauthorized() *DeleteNamespaceUnauthorized {
	return &DeleteNamespaceUnauthorized{}
}

/*DeleteNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type DeleteNamespaceUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteNamespaceUnauthorized) ToJSONString() string {
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

func (o *DeleteNamespaceUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteNamespaceForbidden creates a DeleteNamespaceForbidden with default headers values
func NewDeleteNamespaceForbidden() *DeleteNamespaceForbidden {
	return &DeleteNamespaceForbidden{}
}

/*DeleteNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteNamespaceForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteNamespaceForbidden) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteNamespaceForbidden) ToJSONString() string {
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

func (o *DeleteNamespaceForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteNamespaceNotFound creates a DeleteNamespaceNotFound with default headers values
func NewDeleteNamespaceNotFound() *DeleteNamespaceNotFound {
	return &DeleteNamespaceNotFound{}
}

/*DeleteNamespaceNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11337</td><td>Unable to {action}: Namespace not found</td></tr></table>
*/
type DeleteNamespaceNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteNamespaceNotFound) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteNamespaceNotFound) ToJSONString() string {
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

func (o *DeleteNamespaceNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteNamespaceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteNamespaceConflict creates a DeleteNamespaceConflict with default headers values
func NewDeleteNamespaceConflict() *DeleteNamespaceConflict {
	return &DeleteNamespaceConflict{}
}

/*DeleteNamespaceConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type DeleteNamespaceConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteNamespaceConflict) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}][%d] deleteNamespaceConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteNamespaceConflict) ToJSONString() string {
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

func (o *DeleteNamespaceConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteNamespaceConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
