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

// QueryItemsV2Reader is a Reader for the QueryItemsV2 structure.
type QueryItemsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryItemsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryItemsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryItemsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewQueryItemsV2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryItemsV2OK creates a QueryItemsV2OK with default headers values
func NewQueryItemsV2OK() *QueryItemsV2OK {
	return &QueryItemsV2OK{}
}

/*QueryItemsV2OK handles this case with default header values.

  successful operation
*/
type QueryItemsV2OK struct {
	Payload *platformclientmodels.FullItemPagingResult
}

func (o *QueryItemsV2OK) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItemsV2OK  %+v", 200, o.ToJSONString())
}

func (o *QueryItemsV2OK) ToJSONString() string {
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

func (o *QueryItemsV2OK) GetPayload() *platformclientmodels.FullItemPagingResult {
	return o.Payload
}

func (o *QueryItemsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullItemPagingResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryItemsV2NotFound creates a QueryItemsV2NotFound with default headers values
func NewQueryItemsV2NotFound() *QueryItemsV2NotFound {
	return &QueryItemsV2NotFound{}
}

/*QueryItemsV2NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type QueryItemsV2NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *QueryItemsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItemsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryItemsV2NotFound) ToJSONString() string {
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

func (o *QueryItemsV2NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryItemsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryItemsV2UnprocessableEntity creates a QueryItemsV2UnprocessableEntity with default headers values
func NewQueryItemsV2UnprocessableEntity() *QueryItemsV2UnprocessableEntity {
	return &QueryItemsV2UnprocessableEntity{}
}

/*QueryItemsV2UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type QueryItemsV2UnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *QueryItemsV2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItemsV2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *QueryItemsV2UnprocessableEntity) ToJSONString() string {
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

func (o *QueryItemsV2UnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *QueryItemsV2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
