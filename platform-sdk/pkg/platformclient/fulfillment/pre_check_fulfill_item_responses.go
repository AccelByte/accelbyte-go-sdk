// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// PreCheckFulfillItemReader is a Reader for the PreCheckFulfillItem structure.
type PreCheckFulfillItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PreCheckFulfillItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPreCheckFulfillItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPreCheckFulfillItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPreCheckFulfillItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPreCheckFulfillItemOK creates a PreCheckFulfillItemOK with default headers values
func NewPreCheckFulfillItemOK() *PreCheckFulfillItemOK {
	return &PreCheckFulfillItemOK{}
}

/*PreCheckFulfillItemOK handles this case with default header values.

  Successful retrieval
*/
type PreCheckFulfillItemOK struct {
	Payload []*platformclientmodels.FulfillmentItem
}

func (o *PreCheckFulfillItemOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck][%d] preCheckFulfillItemOK  %+v", 200, o.ToJSONString())
}

func (o *PreCheckFulfillItemOK) ToJSONString() string {
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

func (o *PreCheckFulfillItemOK) GetPayload() []*platformclientmodels.FulfillmentItem {
	return o.Payload
}

func (o *PreCheckFulfillItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPreCheckFulfillItemBadRequest creates a PreCheckFulfillItemBadRequest with default headers values
func NewPreCheckFulfillItemBadRequest() *PreCheckFulfillItemBadRequest {
	return &PreCheckFulfillItemBadRequest{}
}

/*PreCheckFulfillItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr></table>
*/
type PreCheckFulfillItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PreCheckFulfillItemBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck][%d] preCheckFulfillItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PreCheckFulfillItemBadRequest) ToJSONString() string {
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

func (o *PreCheckFulfillItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PreCheckFulfillItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPreCheckFulfillItemNotFound creates a PreCheckFulfillItemNotFound with default headers values
func NewPreCheckFulfillItemNotFound() *PreCheckFulfillItemNotFound {
	return &PreCheckFulfillItemNotFound{}
}

/*PreCheckFulfillItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PreCheckFulfillItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PreCheckFulfillItemNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck][%d] preCheckFulfillItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *PreCheckFulfillItemNotFound) ToJSONString() string {
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

func (o *PreCheckFulfillItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PreCheckFulfillItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
