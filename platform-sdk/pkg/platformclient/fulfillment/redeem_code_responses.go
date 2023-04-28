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

// RedeemCodeReader is a Reader for the RedeemCode structure.
type RedeemCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RedeemCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRedeemCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRedeemCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRedeemCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRedeemCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRedeemCodeOK creates a RedeemCodeOK with default headers values
func NewRedeemCodeOK() *RedeemCodeOK {
	return &RedeemCodeOK{}
}

/*RedeemCodeOK handles this case with default header values.

  successful operation
*/
type RedeemCodeOK struct {
	Payload *platformclientmodels.FulfillmentResult
}

func (o *RedeemCodeOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] redeemCodeOK  %+v", 200, o.ToJSONString())
}

func (o *RedeemCodeOK) ToJSONString() string {
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

func (o *RedeemCodeOK) GetPayload() *platformclientmodels.FulfillmentResult {
	return o.Payload
}

func (o *RedeemCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRedeemCodeBadRequest creates a RedeemCodeBadRequest with default headers values
func NewRedeemCodeBadRequest() *RedeemCodeBadRequest {
	return &RedeemCodeBadRequest{}
}

/*RedeemCodeBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr></table>
*/
type RedeemCodeBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RedeemCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] redeemCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RedeemCodeBadRequest) ToJSONString() string {
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

func (o *RedeemCodeBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RedeemCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRedeemCodeNotFound creates a RedeemCodeNotFound with default headers values
func NewRedeemCodeNotFound() *RedeemCodeNotFound {
	return &RedeemCodeNotFound{}
}

/*RedeemCodeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type RedeemCodeNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RedeemCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] redeemCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *RedeemCodeNotFound) ToJSONString() string {
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

func (o *RedeemCodeNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RedeemCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRedeemCodeConflict creates a RedeemCodeConflict with default headers values
func NewRedeemCodeConflict() *RedeemCodeConflict {
	return &RedeemCodeConflict{}
}

/*RedeemCodeConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37172</td><td>Campaign [{campaignId}] is inactive in namespace [{namespace}]</td></tr><tr><td>37173</td><td>Code [{code}] is inactive in namespace [{namespace}]</td></tr><tr><td>37174</td><td>Exceeded max redeem count per code [{maxCount}]</td></tr><tr><td>37175</td><td>Exceeded max redeem count per code per user [{maxCount}]</td></tr><tr><td>37177</td><td>Code redemption not started</td></tr><tr><td>37178</td><td>Code redemption already ended</td></tr><tr><td>20006</td><td>optimistic lock</td></tr><tr><td>31177</td><td>Permanent item already owned</td></tr></table>
*/
type RedeemCodeConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RedeemCodeConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code][%d] redeemCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *RedeemCodeConflict) ToJSONString() string {
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

func (o *RedeemCodeConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RedeemCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
