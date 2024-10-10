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

// PublicSearchItemsReader is a Reader for the PublicSearchItems structure.
type PublicSearchItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSearchItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSearchItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSearchItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/items/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSearchItemsOK creates a PublicSearchItemsOK with default headers values
func NewPublicSearchItemsOK() *PublicSearchItemsOK {
	return &PublicSearchItemsOK{}
}

/*PublicSearchItemsOK handles this case with default header values.

  successful operation
*/
type PublicSearchItemsOK struct {
	Payload *platformclientmodels.ItemPagingSlicedResult
}

func (o *PublicSearchItemsOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/search][%d] publicSearchItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicSearchItemsOK) ToJSONString() string {
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

func (o *PublicSearchItemsOK) GetPayload() *platformclientmodels.ItemPagingSlicedResult {
	return o.Payload
}

func (o *PublicSearchItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSearchItemsNotFound creates a PublicSearchItemsNotFound with default headers values
func NewPublicSearchItemsNotFound() *PublicSearchItemsNotFound {
	return &PublicSearchItemsNotFound{}
}

/*PublicSearchItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicSearchItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSearchItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/search][%d] publicSearchItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSearchItemsNotFound) ToJSONString() string {
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

func (o *PublicSearchItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSearchItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
