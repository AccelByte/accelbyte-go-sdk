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

// GetEstimatedPriceReader is a Reader for the GetEstimatedPrice structure.
type GetEstimatedPriceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEstimatedPriceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEstimatedPriceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEstimatedPriceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/estimatedPrice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEstimatedPriceOK creates a GetEstimatedPriceOK with default headers values
func NewGetEstimatedPriceOK() *GetEstimatedPriceOK {
	return &GetEstimatedPriceOK{}
}

/*GetEstimatedPriceOK handles this case with default header values.

  successful operation
*/
type GetEstimatedPriceOK struct {
	Payload *platformclientmodels.EstimatedPriceInfo
}

func (o *GetEstimatedPriceOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/estimatedPrice][%d] getEstimatedPriceOK  %+v", 200, o.ToJSONString())
}

func (o *GetEstimatedPriceOK) ToJSONString() string {
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

func (o *GetEstimatedPriceOK) GetPayload() *platformclientmodels.EstimatedPriceInfo {
	return o.Payload
}

func (o *GetEstimatedPriceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EstimatedPriceInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetEstimatedPriceNotFound creates a GetEstimatedPriceNotFound with default headers values
func NewGetEstimatedPriceNotFound() *GetEstimatedPriceNotFound {
	return &GetEstimatedPriceNotFound{}
}

/*GetEstimatedPriceNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetEstimatedPriceNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetEstimatedPriceNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/estimatedPrice][%d] getEstimatedPriceNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetEstimatedPriceNotFound) ToJSONString() string {
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

func (o *GetEstimatedPriceNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetEstimatedPriceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
