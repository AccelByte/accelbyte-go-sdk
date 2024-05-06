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

// GetNamespace1Reader is a Reader for the GetNamespace1 structure.
type GetNamespace1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNamespace1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNamespace1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNamespace1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNamespace1OK creates a GetNamespace1OK with default headers values
func NewGetNamespace1OK() *GetNamespace1OK {
	return &GetNamespace1OK{}
}

/*GetNamespace1OK handles this case with default header values.

  Successful operation
*/
type GetNamespace1OK struct {
	Payload *basicclientmodels.NamespaceSimpleInfo
}

func (o *GetNamespace1OK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}][%d] getNamespace1OK  %+v", 200, o.ToJSONString())
}

func (o *GetNamespace1OK) ToJSONString() string {
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

func (o *GetNamespace1OK) GetPayload() *basicclientmodels.NamespaceSimpleInfo {
	return o.Payload
}

func (o *GetNamespace1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.NamespaceSimpleInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNamespace1NotFound creates a GetNamespace1NotFound with default headers values
func NewGetNamespace1NotFound() *GetNamespace1NotFound {
	return &GetNamespace1NotFound{}
}

/*GetNamespace1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11337</td><td>Unable to {action}: Namespace not found</td></tr></table>
*/
type GetNamespace1NotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetNamespace1NotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}][%d] getNamespace1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNamespace1NotFound) ToJSONString() string {
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

func (o *GetNamespace1NotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetNamespace1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
