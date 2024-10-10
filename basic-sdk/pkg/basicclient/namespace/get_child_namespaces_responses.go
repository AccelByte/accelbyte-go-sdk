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

// GetChildNamespacesReader is a Reader for the GetChildNamespaces structure.
type GetChildNamespacesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetChildNamespacesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetChildNamespacesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetChildNamespacesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetChildNamespacesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/child returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetChildNamespacesOK creates a GetChildNamespacesOK with default headers values
func NewGetChildNamespacesOK() *GetChildNamespacesOK {
	return &GetChildNamespacesOK{}
}

/*GetChildNamespacesOK handles this case with default header values.

  Successful operation
*/
type GetChildNamespacesOK struct {
	Payload []*basicclientmodels.NamespaceInfo
}

func (o *GetChildNamespacesOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/child][%d] getChildNamespacesOK  %+v", 200, o.ToJSONString())
}

func (o *GetChildNamespacesOK) ToJSONString() string {
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

func (o *GetChildNamespacesOK) GetPayload() []*basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *GetChildNamespacesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetChildNamespacesUnauthorized creates a GetChildNamespacesUnauthorized with default headers values
func NewGetChildNamespacesUnauthorized() *GetChildNamespacesUnauthorized {
	return &GetChildNamespacesUnauthorized{}
}

/*GetChildNamespacesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetChildNamespacesUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetChildNamespacesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/child][%d] getChildNamespacesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetChildNamespacesUnauthorized) ToJSONString() string {
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

func (o *GetChildNamespacesUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetChildNamespacesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetChildNamespacesForbidden creates a GetChildNamespacesForbidden with default headers values
func NewGetChildNamespacesForbidden() *GetChildNamespacesForbidden {
	return &GetChildNamespacesForbidden{}
}

/*GetChildNamespacesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetChildNamespacesForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetChildNamespacesForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/child][%d] getChildNamespacesForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetChildNamespacesForbidden) ToJSONString() string {
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

func (o *GetChildNamespacesForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetChildNamespacesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
