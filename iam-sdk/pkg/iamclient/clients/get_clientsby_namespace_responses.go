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

// GetClientsbyNamespaceReader is a Reader for the GetClientsbyNamespace structure.
type GetClientsbyNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetClientsbyNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetClientsbyNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetClientsbyNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetClientsbyNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/namespaces/{namespace}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetClientsbyNamespaceOK creates a GetClientsbyNamespaceOK with default headers values
func NewGetClientsbyNamespaceOK() *GetClientsbyNamespaceOK {
	return &GetClientsbyNamespaceOK{}
}

/*GetClientsbyNamespaceOK handles this case with default header values.

  OK
*/
type GetClientsbyNamespaceOK struct {
	Payload []*iamclientmodels.ClientmodelClientResponse
}

func (o *GetClientsbyNamespaceOK) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/clients][%d] getClientsbyNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *GetClientsbyNamespaceOK) ToJSONString() string {
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

func (o *GetClientsbyNamespaceOK) GetPayload() []*iamclientmodels.ClientmodelClientResponse {
	return o.Payload
}

func (o *GetClientsbyNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetClientsbyNamespaceUnauthorized creates a GetClientsbyNamespaceUnauthorized with default headers values
func NewGetClientsbyNamespaceUnauthorized() *GetClientsbyNamespaceUnauthorized {
	return &GetClientsbyNamespaceUnauthorized{}
}

/*GetClientsbyNamespaceUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetClientsbyNamespaceUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetClientsbyNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/clients][%d] getClientsbyNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetClientsbyNamespaceUnauthorized) ToJSONString() string {
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

func (o *GetClientsbyNamespaceUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetClientsbyNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetClientsbyNamespaceForbidden creates a GetClientsbyNamespaceForbidden with default headers values
func NewGetClientsbyNamespaceForbidden() *GetClientsbyNamespaceForbidden {
	return &GetClientsbyNamespaceForbidden{}
}

/*GetClientsbyNamespaceForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetClientsbyNamespaceForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetClientsbyNamespaceForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/namespaces/{namespace}/clients][%d] getClientsbyNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetClientsbyNamespaceForbidden) ToJSONString() string {
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

func (o *GetClientsbyNamespaceForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetClientsbyNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
