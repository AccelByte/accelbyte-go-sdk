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

// PublicGetEstimatedPriceReader is a Reader for the PublicGetEstimatedPrice structure.
type PublicGetEstimatedPriceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetEstimatedPriceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetEstimatedPriceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetEstimatedPriceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/items/estimatedPrice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetEstimatedPriceOK creates a PublicGetEstimatedPriceOK with default headers values
func NewPublicGetEstimatedPriceOK() *PublicGetEstimatedPriceOK {
	return &PublicGetEstimatedPriceOK{}
}

/*PublicGetEstimatedPriceOK handles this case with default header values.

  successful operation
*/
type PublicGetEstimatedPriceOK struct {
	Payload []*platformclientmodels.EstimatedPriceInfo
}

func (o *PublicGetEstimatedPriceOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/estimatedPrice][%d] publicGetEstimatedPriceOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetEstimatedPriceOK) ToJSONString() string {
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

func (o *PublicGetEstimatedPriceOK) GetPayload() []*platformclientmodels.EstimatedPriceInfo {
	return o.Payload
}

func (o *PublicGetEstimatedPriceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetEstimatedPriceNotFound creates a PublicGetEstimatedPriceNotFound with default headers values
func NewPublicGetEstimatedPriceNotFound() *PublicGetEstimatedPriceNotFound {
	return &PublicGetEstimatedPriceNotFound{}
}

/*PublicGetEstimatedPriceNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetEstimatedPriceNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetEstimatedPriceNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/estimatedPrice][%d] publicGetEstimatedPriceNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetEstimatedPriceNotFound) ToJSONString() string {
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

func (o *PublicGetEstimatedPriceNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetEstimatedPriceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
