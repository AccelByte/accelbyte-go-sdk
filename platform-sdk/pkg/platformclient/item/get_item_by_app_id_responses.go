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

// GetItemByAppIDReader is a Reader for the GetItemByAppID structure.
type GetItemByAppIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetItemByAppIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetItemByAppIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetItemByAppIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/byAppId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetItemByAppIDOK creates a GetItemByAppIDOK with default headers values
func NewGetItemByAppIDOK() *GetItemByAppIDOK {
	return &GetItemByAppIDOK{}
}

/*GetItemByAppIDOK handles this case with default header values.

  successful operation
*/
type GetItemByAppIDOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *GetItemByAppIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/byAppId][%d] getItemByAppIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetItemByAppIDOK) ToJSONString() string {
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

func (o *GetItemByAppIDOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *GetItemByAppIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetItemByAppIDNotFound creates a GetItemByAppIDNotFound with default headers values
func NewGetItemByAppIDNotFound() *GetItemByAppIDNotFound {
	return &GetItemByAppIDNotFound{}
}

/*GetItemByAppIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30342</td><td>Item of appId [{appId}] does not exist</td></tr></table>
*/
type GetItemByAppIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetItemByAppIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/byAppId][%d] getItemByAppIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetItemByAppIDNotFound) ToJSONString() string {
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

func (o *GetItemByAppIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetItemByAppIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
