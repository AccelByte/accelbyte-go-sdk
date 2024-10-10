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

// PublicPreviewOrderPriceReader is a Reader for the PublicPreviewOrderPrice structure.
type PublicPreviewOrderPriceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPreviewOrderPriceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPreviewOrderPriceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPreviewOrderPriceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPreviewOrderPriceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPreviewOrderPriceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicPreviewOrderPriceConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicPreviewOrderPriceUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPreviewOrderPriceOK creates a PublicPreviewOrderPriceOK with default headers values
func NewPublicPreviewOrderPriceOK() *PublicPreviewOrderPriceOK {
	return &PublicPreviewOrderPriceOK{}
}

/*PublicPreviewOrderPriceOK handles this case with default header values.

  successful operation
*/
type PublicPreviewOrderPriceOK struct {
	Payload *platformclientmodels.OrderDiscountPreviewResponse
}

func (o *PublicPreviewOrderPriceOK) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceOK) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceOK) GetPayload() *platformclientmodels.OrderDiscountPreviewResponse {
	return o.Payload
}

func (o *PublicPreviewOrderPriceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.OrderDiscountPreviewResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPreviewOrderPriceBadRequest creates a PublicPreviewOrderPriceBadRequest with default headers values
func NewPublicPreviewOrderPriceBadRequest() *PublicPreviewOrderPriceBadRequest {
	return &PublicPreviewOrderPriceBadRequest{}
}

/*PublicPreviewOrderPriceBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32127</td><td>Discount code [{code}] can't be used on this item: {tips}</td></tr><tr><td>32128</td><td>Discount code [{code}] can not be used with other code together</td></tr><tr><td>32129</td><td>Can't use discount code on free order</td></tr><tr><td>32130</td><td>The total discount amount cannot exceed the order price</td></tr></table>
*/
type PublicPreviewOrderPriceBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicPreviewOrderPriceBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceBadRequest) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicPreviewOrderPriceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPreviewOrderPriceForbidden creates a PublicPreviewOrderPriceForbidden with default headers values
func NewPublicPreviewOrderPriceForbidden() *PublicPreviewOrderPriceForbidden {
	return &PublicPreviewOrderPriceForbidden{}
}

/*PublicPreviewOrderPriceForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type PublicPreviewOrderPriceForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicPreviewOrderPriceForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceForbidden) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicPreviewOrderPriceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPreviewOrderPriceNotFound creates a PublicPreviewOrderPriceNotFound with default headers values
func NewPublicPreviewOrderPriceNotFound() *PublicPreviewOrderPriceNotFound {
	return &PublicPreviewOrderPriceNotFound{}
}

/*PublicPreviewOrderPriceNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicPreviewOrderPriceNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicPreviewOrderPriceNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceNotFound) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicPreviewOrderPriceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPreviewOrderPriceConflict creates a PublicPreviewOrderPriceConflict with default headers values
func NewPublicPreviewOrderPriceConflict() *PublicPreviewOrderPriceConflict {
	return &PublicPreviewOrderPriceConflict{}
}

/*PublicPreviewOrderPriceConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37172</td><td>Campaign [{campaignId}] is inactive in namespace [{namespace}]</td></tr><tr><td>37173</td><td>Code [{code}] is inactive in namespace [{namespace}]</td></tr><tr><td>37174</td><td>Exceeded max redeem count per code [{maxCount}]</td></tr><tr><td>37175</td><td>Exceeded max redeem count per code per user [{maxCount}]</td></tr><tr><td>37177</td><td>Code redemption not started</td></tr><tr><td>37178</td><td>Code redemption already ended</td></tr><tr><td>37179</td><td>Exceeded max redeem count per campaign per user [{maxCount}]</td></tr></table>
*/
type PublicPreviewOrderPriceConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicPreviewOrderPriceConflict) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceConflict) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicPreviewOrderPriceConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPreviewOrderPriceUnprocessableEntity creates a PublicPreviewOrderPriceUnprocessableEntity with default headers values
func NewPublicPreviewOrderPriceUnprocessableEntity() *PublicPreviewOrderPriceUnprocessableEntity {
	return &PublicPreviewOrderPriceUnprocessableEntity{}
}

/*PublicPreviewOrderPriceUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicPreviewOrderPriceUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *PublicPreviewOrderPriceUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview][%d] publicPreviewOrderPriceUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicPreviewOrderPriceUnprocessableEntity) ToJSONString() string {
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

func (o *PublicPreviewOrderPriceUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicPreviewOrderPriceUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
