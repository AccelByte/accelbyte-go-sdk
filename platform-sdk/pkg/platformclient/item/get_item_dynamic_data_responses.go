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

// GetItemDynamicDataReader is a Reader for the GetItemDynamicData structure.
type GetItemDynamicDataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetItemDynamicDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetItemDynamicDataOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetItemDynamicDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetItemDynamicDataOK creates a GetItemDynamicDataOK with default headers values
func NewGetItemDynamicDataOK() *GetItemDynamicDataOK {
	return &GetItemDynamicDataOK{}
}

/*GetItemDynamicDataOK handles this case with default header values.

  successful operation
*/
type GetItemDynamicDataOK struct {
	Payload *platformclientmodels.ItemDynamicDataInfo
}

func (o *GetItemDynamicDataOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic][%d] getItemDynamicDataOK  %+v", 200, o.ToJSONString())
}

func (o *GetItemDynamicDataOK) ToJSONString() string {
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

func (o *GetItemDynamicDataOK) GetPayload() *platformclientmodels.ItemDynamicDataInfo {
	return o.Payload
}

func (o *GetItemDynamicDataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemDynamicDataInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetItemDynamicDataNotFound creates a GetItemDynamicDataNotFound with default headers values
func NewGetItemDynamicDataNotFound() *GetItemDynamicDataNotFound {
	return &GetItemDynamicDataNotFound{}
}

/*GetItemDynamicDataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetItemDynamicDataNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetItemDynamicDataNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic][%d] getItemDynamicDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetItemDynamicDataNotFound) ToJSONString() string {
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

func (o *GetItemDynamicDataNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetItemDynamicDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
