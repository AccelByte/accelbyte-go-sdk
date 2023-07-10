// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkFetchOrDefaultStatItems1Reader is a Reader for the BulkFetchOrDefaultStatItems1 structure.
type BulkFetchOrDefaultStatItems1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFetchOrDefaultStatItems1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFetchOrDefaultStatItems1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkFetchOrDefaultStatItems1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkFetchOrDefaultStatItems1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFetchOrDefaultStatItems1OK creates a BulkFetchOrDefaultStatItems1OK with default headers values
func NewBulkFetchOrDefaultStatItems1OK() *BulkFetchOrDefaultStatItems1OK {
	return &BulkFetchOrDefaultStatItems1OK{}
}

/*BulkFetchOrDefaultStatItems1OK handles this case with default header values.

  successful operation
*/
type BulkFetchOrDefaultStatItems1OK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *BulkFetchOrDefaultStatItems1OK) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItems1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItems1OK) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItems1OK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItems1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchOrDefaultStatItems1NotFound creates a BulkFetchOrDefaultStatItems1NotFound with default headers values
func NewBulkFetchOrDefaultStatItems1NotFound() *BulkFetchOrDefaultStatItems1NotFound {
	return &BulkFetchOrDefaultStatItems1NotFound{}
}

/*BulkFetchOrDefaultStatItems1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type BulkFetchOrDefaultStatItems1NotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchOrDefaultStatItems1NotFound) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItems1NotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItems1NotFound) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItems1NotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItems1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkFetchOrDefaultStatItems1UnprocessableEntity creates a BulkFetchOrDefaultStatItems1UnprocessableEntity with default headers values
func NewBulkFetchOrDefaultStatItems1UnprocessableEntity() *BulkFetchOrDefaultStatItems1UnprocessableEntity {
	return &BulkFetchOrDefaultStatItems1UnprocessableEntity{}
}

/*BulkFetchOrDefaultStatItems1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkFetchOrDefaultStatItems1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkFetchOrDefaultStatItems1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItems1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItems1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItems1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItems1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}