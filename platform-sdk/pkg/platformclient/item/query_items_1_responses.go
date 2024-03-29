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

// QueryItems1Reader is a Reader for the QueryItems1 structure.
type QueryItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryItems1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewQueryItems1UnprocessableEntity()
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

// NewQueryItems1OK creates a QueryItems1OK with default headers values
func NewQueryItems1OK() *QueryItems1OK {
	return &QueryItems1OK{}
}

/*QueryItems1OK handles this case with default header values.

  successful operation
*/
type QueryItems1OK struct {
	Payload *platformclientmodels.FullItemPagingResult
}

func (o *QueryItems1OK) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItems1OK  %+v", 200, o.ToJSONString())
}

func (o *QueryItems1OK) ToJSONString() string {
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

func (o *QueryItems1OK) GetPayload() *platformclientmodels.FullItemPagingResult {
	return o.Payload
}

func (o *QueryItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryItems1NotFound creates a QueryItems1NotFound with default headers values
func NewQueryItems1NotFound() *QueryItems1NotFound {
	return &QueryItems1NotFound{}
}

/*QueryItems1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type QueryItems1NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *QueryItems1NotFound) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItems1NotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryItems1NotFound) ToJSONString() string {
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

func (o *QueryItems1NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryItems1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryItems1UnprocessableEntity creates a QueryItems1UnprocessableEntity with default headers values
func NewQueryItems1UnprocessableEntity() *QueryItems1UnprocessableEntity {
	return &QueryItems1UnprocessableEntity{}
}

/*QueryItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type QueryItems1UnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *QueryItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/v2/admin/namespaces/{namespace}/items/byCriteria][%d] queryItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *QueryItems1UnprocessableEntity) ToJSONString() string {
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

func (o *QueryItems1UnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *QueryItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
