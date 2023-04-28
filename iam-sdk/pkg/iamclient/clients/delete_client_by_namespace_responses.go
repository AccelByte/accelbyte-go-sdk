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

// DeleteClientByNamespaceReader is a Reader for the DeleteClientByNamespace structure.
type DeleteClientByNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteClientByNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteClientByNamespaceNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteClientByNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteClientByNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteClientByNamespaceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/namespaces/{namespace}/clients/{clientId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteClientByNamespaceNoContent creates a DeleteClientByNamespaceNoContent with default headers values
func NewDeleteClientByNamespaceNoContent() *DeleteClientByNamespaceNoContent {
	return &DeleteClientByNamespaceNoContent{}
}

/*DeleteClientByNamespaceNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteClientByNamespaceNoContent struct {
}

func (o *DeleteClientByNamespaceNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/clients/{clientId}][%d] deleteClientByNamespaceNoContent ", 204)
}

func (o *DeleteClientByNamespaceNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteClientByNamespaceUnauthorized creates a DeleteClientByNamespaceUnauthorized with default headers values
func NewDeleteClientByNamespaceUnauthorized() *DeleteClientByNamespaceUnauthorized {
	return &DeleteClientByNamespaceUnauthorized{}
}

/*DeleteClientByNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteClientByNamespaceUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientByNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/clients/{clientId}][%d] deleteClientByNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteClientByNamespaceUnauthorized) ToJSONString() string {
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

func (o *DeleteClientByNamespaceUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientByNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteClientByNamespaceForbidden creates a DeleteClientByNamespaceForbidden with default headers values
func NewDeleteClientByNamespaceForbidden() *DeleteClientByNamespaceForbidden {
	return &DeleteClientByNamespaceForbidden{}
}

/*DeleteClientByNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteClientByNamespaceForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientByNamespaceForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/clients/{clientId}][%d] deleteClientByNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteClientByNamespaceForbidden) ToJSONString() string {
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

func (o *DeleteClientByNamespaceForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientByNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteClientByNamespaceNotFound creates a DeleteClientByNamespaceNotFound with default headers values
func NewDeleteClientByNamespaceNotFound() *DeleteClientByNamespaceNotFound {
	return &DeleteClientByNamespaceNotFound{}
}

/*DeleteClientByNamespaceNotFound handles this case with default header values.

  Data not found
*/
type DeleteClientByNamespaceNotFound struct {
}

func (o *DeleteClientByNamespaceNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/clients/{clientId}][%d] deleteClientByNamespaceNotFound ", 404)
}

func (o *DeleteClientByNamespaceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
