// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package terminated_servers

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// ListTerminatedServersWithNamespaceReader is a Reader for the ListTerminatedServersWithNamespace structure.
type ListTerminatedServersWithNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListTerminatedServersWithNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListTerminatedServersWithNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListTerminatedServersWithNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListTerminatedServersWithNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListTerminatedServersWithNamespaceInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsartifact/namespaces/{namespace}/servers/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListTerminatedServersWithNamespaceOK creates a ListTerminatedServersWithNamespaceOK with default headers values
func NewListTerminatedServersWithNamespaceOK() *ListTerminatedServersWithNamespaceOK {
	return &ListTerminatedServersWithNamespaceOK{}
}

/*ListTerminatedServersWithNamespaceOK handles this case with default header values.

  OK
*/
type ListTerminatedServersWithNamespaceOK struct {
	Payload *dsartifactclientmodels.ModelsListTerminatedServersResponse
}

func (o *ListTerminatedServersWithNamespaceOK) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/search][%d] listTerminatedServersWithNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *ListTerminatedServersWithNamespaceOK) ToJSONString() string {
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

func (o *ListTerminatedServersWithNamespaceOK) GetPayload() *dsartifactclientmodels.ModelsListTerminatedServersResponse {
	return o.Payload
}

func (o *ListTerminatedServersWithNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ModelsListTerminatedServersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersWithNamespaceBadRequest creates a ListTerminatedServersWithNamespaceBadRequest with default headers values
func NewListTerminatedServersWithNamespaceBadRequest() *ListTerminatedServersWithNamespaceBadRequest {
	return &ListTerminatedServersWithNamespaceBadRequest{}
}

/*ListTerminatedServersWithNamespaceBadRequest handles this case with default header values.

  Bad Request
*/
type ListTerminatedServersWithNamespaceBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersWithNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/search][%d] listTerminatedServersWithNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListTerminatedServersWithNamespaceBadRequest) ToJSONString() string {
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

func (o *ListTerminatedServersWithNamespaceBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersWithNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersWithNamespaceUnauthorized creates a ListTerminatedServersWithNamespaceUnauthorized with default headers values
func NewListTerminatedServersWithNamespaceUnauthorized() *ListTerminatedServersWithNamespaceUnauthorized {
	return &ListTerminatedServersWithNamespaceUnauthorized{}
}

/*ListTerminatedServersWithNamespaceUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListTerminatedServersWithNamespaceUnauthorized struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersWithNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/search][%d] listTerminatedServersWithNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListTerminatedServersWithNamespaceUnauthorized) ToJSONString() string {
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

func (o *ListTerminatedServersWithNamespaceUnauthorized) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersWithNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersWithNamespaceInternalServerError creates a ListTerminatedServersWithNamespaceInternalServerError with default headers values
func NewListTerminatedServersWithNamespaceInternalServerError() *ListTerminatedServersWithNamespaceInternalServerError {
	return &ListTerminatedServersWithNamespaceInternalServerError{}
}

/*ListTerminatedServersWithNamespaceInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListTerminatedServersWithNamespaceInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *ListTerminatedServersWithNamespaceInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsartifact/namespaces/{namespace}/servers/search][%d] listTerminatedServersWithNamespaceInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListTerminatedServersWithNamespaceInternalServerError) ToJSONString() string {
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

func (o *ListTerminatedServersWithNamespaceInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersWithNamespaceInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
