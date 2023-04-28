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

// FulfillRewardsReader is a Reader for the FulfillRewards structure.
type FulfillRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FulfillRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewFulfillRewardsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFulfillRewardsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFulfillRewardsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewFulfillRewardsConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFulfillRewardsNoContent creates a FulfillRewardsNoContent with default headers values
func NewFulfillRewardsNoContent() *FulfillRewardsNoContent {
	return &FulfillRewardsNoContent{}
}

/*FulfillRewardsNoContent handles this case with default header values.

  fulfill successfully
*/
type FulfillRewardsNoContent struct {
}

func (o *FulfillRewardsNoContent) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsNoContent ", 204)
}

func (o *FulfillRewardsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewFulfillRewardsBadRequest creates a FulfillRewardsBadRequest with default headers values
func NewFulfillRewardsBadRequest() *FulfillRewardsBadRequest {
	return &FulfillRewardsBadRequest{}
}

/*FulfillRewardsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr></table>
*/
type FulfillRewardsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FulfillRewardsBadRequest) ToJSONString() string {
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

func (o *FulfillRewardsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillRewardsNotFound creates a FulfillRewardsNotFound with default headers values
func NewFulfillRewardsNotFound() *FulfillRewardsNotFound {
	return &FulfillRewardsNotFound{}
}

/*FulfillRewardsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type FulfillRewardsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsNotFound  %+v", 404, o.ToJSONString())
}

func (o *FulfillRewardsNotFound) ToJSONString() string {
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

func (o *FulfillRewardsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFulfillRewardsConflict creates a FulfillRewardsConflict with default headers values
func NewFulfillRewardsConflict() *FulfillRewardsConflict {
	return &FulfillRewardsConflict{}
}

/*FulfillRewardsConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type FulfillRewardsConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *FulfillRewardsConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards][%d] fulfillRewardsConflict  %+v", 409, o.ToJSONString())
}

func (o *FulfillRewardsConflict) ToJSONString() string {
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

func (o *FulfillRewardsConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *FulfillRewardsConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
