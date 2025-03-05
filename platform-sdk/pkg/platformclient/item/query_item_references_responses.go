// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// QueryItemReferencesReader is a Reader for the QueryItemReferences structure.
type QueryItemReferencesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryItemReferencesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryItemReferencesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryItemReferencesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/{itemId}/references returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryItemReferencesOK creates a QueryItemReferencesOK with default headers values
func NewQueryItemReferencesOK() *QueryItemReferencesOK {
	return &QueryItemReferencesOK{}
}

/*QueryItemReferencesOK handles this case with default header values.

  successful operation
*/
type QueryItemReferencesOK struct {
	Payload *platformclientmodels.ItemDependency
}

func (o *QueryItemReferencesOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/references][%d] queryItemReferencesOK  %+v", 200, o.ToJSONString())
}

func (o *QueryItemReferencesOK) ToJSONString() string {
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

func (o *QueryItemReferencesOK) GetPayload() *platformclientmodels.ItemDependency {
	return o.Payload
}

func (o *QueryItemReferencesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemDependency)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryItemReferencesNotFound creates a QueryItemReferencesNotFound with default headers values
func NewQueryItemReferencesNotFound() *QueryItemReferencesNotFound {
	return &QueryItemReferencesNotFound{}
}

/*QueryItemReferencesNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type QueryItemReferencesNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *QueryItemReferencesNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/references][%d] queryItemReferencesNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryItemReferencesNotFound) ToJSONString() string {
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

func (o *QueryItemReferencesNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryItemReferencesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
