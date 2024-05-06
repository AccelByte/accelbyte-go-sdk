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

// PublicCreateUserOrderReader is a Reader for the PublicCreateUserOrder structure.
type PublicCreateUserOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserOrderCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateUserOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateUserOrderForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCreateUserOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicCreateUserOrderUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/users/{userId}/orders returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserOrderCreated creates a PublicCreateUserOrderCreated with default headers values
func NewPublicCreateUserOrderCreated() *PublicCreateUserOrderCreated {
	return &PublicCreateUserOrderCreated{}
}

/*PublicCreateUserOrderCreated handles this case with default header values.

  successful operation
*/
type PublicCreateUserOrderCreated struct {
	Payload *platformclientmodels.OrderInfo
}

func (o *PublicCreateUserOrderCreated) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicCreateUserOrderCreated) ToJSONString() string {
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

func (o *PublicCreateUserOrderCreated) GetPayload() *platformclientmodels.OrderInfo {
	return o.Payload
}

func (o *PublicCreateUserOrderCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserOrderBadRequest creates a PublicCreateUserOrderBadRequest with default headers values
func NewPublicCreateUserOrderBadRequest() *PublicCreateUserOrderBadRequest {
	return &PublicCreateUserOrderBadRequest{}
}

/*PublicCreateUserOrderBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20018</td><td>ecommerce item type not supported</tr><tr><td>32121</td><td>Order price mismatch</td></tr><tr><td>32122</td><td>Item type [{itemType}] does not support</td></tr><tr><td>32123</td><td>Item is not purchasable</td></tr><tr><td>32125</td><td>The user does not meet the purchase conditions</td></tr><tr><td>32126</td><td>Section ID is required for placing this order</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>32127</td><td>Discount code [{code}] can't be used on this item: {tips}</td></tr><tr><td>32128</td><td>Discount code [{code}] can not be used with other code together</td></tr><tr><td>32129</td><td>Can't use discount code on free order</td></tr><tr><td>32130</td><td>The total discount amount cannot exceed the order price</td></tr></table>
*/
type PublicCreateUserOrderBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCreateUserOrderBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateUserOrderBadRequest) ToJSONString() string {
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

func (o *PublicCreateUserOrderBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserOrderForbidden creates a PublicCreateUserOrderForbidden with default headers values
func NewPublicCreateUserOrderForbidden() *PublicCreateUserOrderForbidden {
	return &PublicCreateUserOrderForbidden{}
}

/*PublicCreateUserOrderForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type PublicCreateUserOrderForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCreateUserOrderForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateUserOrderForbidden) ToJSONString() string {
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

func (o *PublicCreateUserOrderForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserOrderForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserOrderNotFound creates a PublicCreateUserOrderNotFound with default headers values
func NewPublicCreateUserOrderNotFound() *PublicCreateUserOrderNotFound {
	return &PublicCreateUserOrderNotFound{}
}

/*PublicCreateUserOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr><tr><td>1100001</td><td>record not found: inventory</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicCreateUserOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCreateUserOrderNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCreateUserOrderNotFound) ToJSONString() string {
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

func (o *PublicCreateUserOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserOrderConflict creates a PublicCreateUserOrderConflict with default headers values
func NewPublicCreateUserOrderConflict() *PublicCreateUserOrderConflict {
	return &PublicCreateUserOrderConflict{}
}

/*PublicCreateUserOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20024</td><td>insufficient inventory capacity (max. slots)</td></tr><tr><td>32175</td><td>Exceed item [{itemId}] max count [{maxCount}] per user</td></tr><tr><td>32176</td><td>Exceed item [{itemId}] max count [{maxCount}]</td></tr><tr><td>31177</td><td>Permanent item already owned</td></tr><tr><td>32178</td><td>User [{userId}] already owned all durable items in flexible bundle [{bundleId}], namespace: [{namespace}]</td></tr><tr><td>49183</td><td>Pass item does not match published season pass</td></tr><tr><td>49184</td><td>Tier item does not match published season tier</td></tr><tr><td>49185</td><td>Season has not started</td></tr><tr><td>49186</td><td>Pass already owned</td></tr><tr><td>49187</td><td>Exceed max tier count</td></tr><tr><td>20006</td><td>optimistic lock</td></tr><tr><td>37172</td><td>Campaign [{campaignId}] is inactive in namespace [{namespace}]</td></tr><tr><td>37173</td><td>Code [{code}] is inactive in namespace [{namespace}]</td></tr><tr><td>37174</td><td>Exceeded max redeem count per code [{maxCount}]</td></tr><tr><td>37175</td><td>Exceeded max redeem count per code per user [{maxCount}]</td></tr><tr><td>37177</td><td>Code redemption not started</td></tr><tr><td>37178</td><td>Code redemption already ended</td></tr><tr><td>37179</td><td>Exceeded max redeem count per campaign per user [{maxCount}]</td></tr></table>
*/
type PublicCreateUserOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCreateUserOrderConflict) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCreateUserOrderConflict) ToJSONString() string {
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

func (o *PublicCreateUserOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserOrderUnprocessableEntity creates a PublicCreateUserOrderUnprocessableEntity with default headers values
func NewPublicCreateUserOrderUnprocessableEntity() *PublicCreateUserOrderUnprocessableEntity {
	return &PublicCreateUserOrderUnprocessableEntity{}
}

/*PublicCreateUserOrderUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicCreateUserOrderUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *PublicCreateUserOrderUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders][%d] publicCreateUserOrderUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicCreateUserOrderUnprocessableEntity) ToJSONString() string {
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

func (o *PublicCreateUserOrderUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserOrderUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
