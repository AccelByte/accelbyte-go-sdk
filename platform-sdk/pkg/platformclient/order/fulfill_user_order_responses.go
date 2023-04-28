// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// FulfillUserOrderReader is a Reader for the FulfillUserOrder structure.
type FulfillUserOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FulfillUserOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFulfillUserOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFulfillUserOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFulfillUserOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewFulfillUserOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFulfillUserOrderOK creates a FulfillUserOrderOK with default headers values
func NewFulfillUserOrderOK() *FulfillUserOrderOK {
	return &FulfillUserOrderOK{}
}

/*FulfillUserOrderOK handles this case with default header values.

  successful operation
*/
type FulfillUserOrderOK struct {
	Payload *platformclientmodels.OrderInfo
}

func (o *FulfillUserOrderOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill][%d] fulfillUserOrderOK  %+v", 200, o.ToJSONString())
}

func (o *FulfillUserOrderOK) ToJSONString() string {
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

func (o *FulfillUserOrderOK) GetPayload() *platformclientmodels.OrderInfo {
	return o.Payload
}

func (o *FulfillUserOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.OrderInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFulfillUserOrderBadRequest creates a FulfillUserOrderBadRequest with default headers values
func NewFulfillUserOrderBadRequest() *FulfillUserOrderBadRequest {
	return &FulfillUserOrderBadRequest{}
}

/*FulfillUserOrderBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr></table>
*/
type FulfillUserOrderBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillUserOrderBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill][%d] fulfillUserOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FulfillUserOrderBadRequest) ToJSONString() string {
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

func (o *FulfillUserOrderBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillUserOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillUserOrderNotFound creates a FulfillUserOrderNotFound with default headers values
func NewFulfillUserOrderNotFound() *FulfillUserOrderNotFound {
	return &FulfillUserOrderNotFound{}
}

/*FulfillUserOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>32141</td><td>Order [{orderNo}] does not exist</td></tr></table>
*/
type FulfillUserOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillUserOrderNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill][%d] fulfillUserOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *FulfillUserOrderNotFound) ToJSONString() string {
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

func (o *FulfillUserOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillUserOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillUserOrderConflict creates a FulfillUserOrderConflict with default headers values
func NewFulfillUserOrderConflict() *FulfillUserOrderConflict {
	return &FulfillUserOrderConflict{}
}

/*FulfillUserOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32172</td><td>Invalid order status [{status}] for order [{orderNo}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type FulfillUserOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillUserOrderConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill][%d] fulfillUserOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *FulfillUserOrderConflict) ToJSONString() string {
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

func (o *FulfillUserOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillUserOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
