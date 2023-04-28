// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

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

// ListViewsReader is a Reader for the ListViews structure.
type ListViewsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListViewsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListViewsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListViewsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewListViewsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/views returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListViewsOK creates a ListViewsOK with default headers values
func NewListViewsOK() *ListViewsOK {
	return &ListViewsOK{}
}

/*ListViewsOK handles this case with default header values.

  successful operation
*/
type ListViewsOK struct {
	Payload []*platformclientmodels.ListViewInfo
}

func (o *ListViewsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/views][%d] listViewsOK  %+v", 200, o.ToJSONString())
}

func (o *ListViewsOK) ToJSONString() string {
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

func (o *ListViewsOK) GetPayload() []*platformclientmodels.ListViewInfo {
	return o.Payload
}

func (o *ListViewsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListViewsNotFound creates a ListViewsNotFound with default headers values
func NewListViewsNotFound() *ListViewsNotFound {
	return &ListViewsNotFound{}
}

/*ListViewsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type ListViewsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ListViewsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/views][%d] listViewsNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListViewsNotFound) ToJSONString() string {
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

func (o *ListViewsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ListViewsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListViewsUnprocessableEntity creates a ListViewsUnprocessableEntity with default headers values
func NewListViewsUnprocessableEntity() *ListViewsUnprocessableEntity {
	return &ListViewsUnprocessableEntity{}
}

/*ListViewsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type ListViewsUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *ListViewsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/views][%d] listViewsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ListViewsUnprocessableEntity) ToJSONString() string {
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

func (o *ListViewsUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *ListViewsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
