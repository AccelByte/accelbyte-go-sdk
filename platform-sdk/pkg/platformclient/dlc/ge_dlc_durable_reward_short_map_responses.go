// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// GeDLCDurableRewardShortMapReader is a Reader for the GeDLCDurableRewardShortMap structure.
type GeDLCDurableRewardShortMapReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GeDLCDurableRewardShortMapReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGeDLCDurableRewardShortMapOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGeDLCDurableRewardShortMapNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/dlc/rewards/durable/map returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGeDLCDurableRewardShortMapOK creates a GeDLCDurableRewardShortMapOK with default headers values
func NewGeDLCDurableRewardShortMapOK() *GeDLCDurableRewardShortMapOK {
	return &GeDLCDurableRewardShortMapOK{}
}

/*GeDLCDurableRewardShortMapOK handles this case with default header values.

  successful operation
*/
type GeDLCDurableRewardShortMapOK struct {
	Payload *platformclientmodels.DLCConfigRewardShortInfo
}

func (o *GeDLCDurableRewardShortMapOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/dlc/rewards/durable/map][%d] geDlcDurableRewardShortMapOK  %+v", 200, o.ToJSONString())
}

func (o *GeDLCDurableRewardShortMapOK) ToJSONString() string {
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

func (o *GeDLCDurableRewardShortMapOK) GetPayload() *platformclientmodels.DLCConfigRewardShortInfo {
	return o.Payload
}

func (o *GeDLCDurableRewardShortMapOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.DLCConfigRewardShortInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGeDLCDurableRewardShortMapNotFound creates a GeDLCDurableRewardShortMapNotFound with default headers values
func NewGeDLCDurableRewardShortMapNotFound() *GeDLCDurableRewardShortMapNotFound {
	return &GeDLCDurableRewardShortMapNotFound{}
}

/*GeDLCDurableRewardShortMapNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39442</td><td>DLC item config cannot be found in namespace [{namespace}]</td></tr><tr><td>39441</td><td>Platform dlc config cannot be found in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GeDLCDurableRewardShortMapNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GeDLCDurableRewardShortMapNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/dlc/rewards/durable/map][%d] geDlcDurableRewardShortMapNotFound  %+v", 404, o.ToJSONString())
}

func (o *GeDLCDurableRewardShortMapNotFound) ToJSONString() string {
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

func (o *GeDLCDurableRewardShortMapNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GeDLCDurableRewardShortMapNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
