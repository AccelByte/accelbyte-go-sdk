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

// PublicGetNamespacesReader is a Reader for the PublicGetNamespaces structure.
type PublicGetNamespacesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetNamespacesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetNamespacesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetNamespacesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetNamespacesOK creates a PublicGetNamespacesOK with default headers values
func NewPublicGetNamespacesOK() *PublicGetNamespacesOK {
	return &PublicGetNamespacesOK{}
}

/*PublicGetNamespacesOK handles this case with default header values.

  Successful operation
*/
type PublicGetNamespacesOK struct {
	Payload []*basicclientmodels.NamespaceInfo
}

func (o *PublicGetNamespacesOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces][%d] publicGetNamespacesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetNamespacesOK) ToJSONString() string {
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

func (o *PublicGetNamespacesOK) GetPayload() []*basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *PublicGetNamespacesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetNamespacesUnauthorized creates a PublicGetNamespacesUnauthorized with default headers values
func NewPublicGetNamespacesUnauthorized() *PublicGetNamespacesUnauthorized {
	return &PublicGetNamespacesUnauthorized{}
}

/*PublicGetNamespacesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicGetNamespacesUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetNamespacesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces][%d] publicGetNamespacesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetNamespacesUnauthorized) ToJSONString() string {
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

func (o *PublicGetNamespacesUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetNamespacesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
