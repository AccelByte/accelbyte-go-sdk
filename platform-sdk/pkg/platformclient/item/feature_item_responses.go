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

// FeatureItemReader is a Reader for the FeatureItem structure.
type FeatureItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FeatureItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFeatureItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFeatureItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewFeatureItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFeatureItemOK creates a FeatureItemOK with default headers values
func NewFeatureItemOK() *FeatureItemOK {
	return &FeatureItemOK{}
}

/*FeatureItemOK handles this case with default header values.

  successful operation
*/
type FeatureItemOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *FeatureItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}][%d] featureItemOK  %+v", 200, o.ToJSONString())
}

func (o *FeatureItemOK) ToJSONString() string {
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

func (o *FeatureItemOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *FeatureItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFeatureItemNotFound creates a FeatureItemNotFound with default headers values
func NewFeatureItemNotFound() *FeatureItemNotFound {
	return &FeatureItemNotFound{}
}

/*FeatureItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type FeatureItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FeatureItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}][%d] featureItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *FeatureItemNotFound) ToJSONString() string {
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

func (o *FeatureItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FeatureItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFeatureItemConflict creates a FeatureItemConflict with default headers values
func NewFeatureItemConflict() *FeatureItemConflict {
	return &FeatureItemConflict{}
}

/*FeatureItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type FeatureItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FeatureItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}][%d] featureItemConflict  %+v", 409, o.ToJSONString())
}

func (o *FeatureItemConflict) ToJSONString() string {
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

func (o *FeatureItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FeatureItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
