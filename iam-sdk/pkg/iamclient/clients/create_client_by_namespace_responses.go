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

// CreateClientByNamespaceReader is a Reader for the CreateClientByNamespace structure.
type CreateClientByNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateClientByNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateClientByNamespaceCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateClientByNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateClientByNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateClientByNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateClientByNamespaceConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateClientByNamespaceCreated creates a CreateClientByNamespaceCreated with default headers values
func NewCreateClientByNamespaceCreated() *CreateClientByNamespaceCreated {
	return &CreateClientByNamespaceCreated{}
}

/*CreateClientByNamespaceCreated handles this case with default header values.

  Created
*/
type CreateClientByNamespaceCreated struct {
	Payload *iamclientmodels.ClientmodelClientCreationResponse
}

func (o *CreateClientByNamespaceCreated) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/clients][%d] createClientByNamespaceCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateClientByNamespaceCreated) ToJSONString() string {
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

func (o *CreateClientByNamespaceCreated) GetPayload() *iamclientmodels.ClientmodelClientCreationResponse {
	return o.Payload
}

func (o *CreateClientByNamespaceCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientCreationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateClientByNamespaceBadRequest creates a CreateClientByNamespaceBadRequest with default headers values
func NewCreateClientByNamespaceBadRequest() *CreateClientByNamespaceBadRequest {
	return &CreateClientByNamespaceBadRequest{}
}

/*CreateClientByNamespaceBadRequest handles this case with default header values.

  Invalid request
*/
type CreateClientByNamespaceBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientByNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/clients][%d] createClientByNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateClientByNamespaceBadRequest) ToJSONString() string {
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

func (o *CreateClientByNamespaceBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientByNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateClientByNamespaceUnauthorized creates a CreateClientByNamespaceUnauthorized with default headers values
func NewCreateClientByNamespaceUnauthorized() *CreateClientByNamespaceUnauthorized {
	return &CreateClientByNamespaceUnauthorized{}
}

/*CreateClientByNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateClientByNamespaceUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientByNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/clients][%d] createClientByNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateClientByNamespaceUnauthorized) ToJSONString() string {
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

func (o *CreateClientByNamespaceUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientByNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateClientByNamespaceForbidden creates a CreateClientByNamespaceForbidden with default headers values
func NewCreateClientByNamespaceForbidden() *CreateClientByNamespaceForbidden {
	return &CreateClientByNamespaceForbidden{}
}

/*CreateClientByNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateClientByNamespaceForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientByNamespaceForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/clients][%d] createClientByNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateClientByNamespaceForbidden) ToJSONString() string {
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

func (o *CreateClientByNamespaceForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientByNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateClientByNamespaceConflict creates a CreateClientByNamespaceConflict with default headers values
func NewCreateClientByNamespaceConflict() *CreateClientByNamespaceConflict {
	return &CreateClientByNamespaceConflict{}
}

/*CreateClientByNamespaceConflict handles this case with default header values.

  Client exists
*/
type CreateClientByNamespaceConflict struct {
}

func (o *CreateClientByNamespaceConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/clients][%d] createClientByNamespaceConflict ", 409)
}

func (o *CreateClientByNamespaceConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
