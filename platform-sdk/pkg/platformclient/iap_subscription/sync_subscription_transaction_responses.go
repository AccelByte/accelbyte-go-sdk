// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// SyncSubscriptionTransactionReader is a Reader for the SyncSubscriptionTransaction structure.
type SyncSubscriptionTransactionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSubscriptionTransactionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncSubscriptionTransactionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSubscriptionTransactionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncSubscriptionTransactionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSubscriptionTransactionOK creates a SyncSubscriptionTransactionOK with default headers values
func NewSyncSubscriptionTransactionOK() *SyncSubscriptionTransactionOK {
	return &SyncSubscriptionTransactionOK{}
}

/*SyncSubscriptionTransactionOK handles this case with default header values.

  successful operation
*/
type SyncSubscriptionTransactionOK struct {
	Payload *platformclientmodels.ThirdPartySubscriptionTransactionInfo
}

func (o *SyncSubscriptionTransactionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync][%d] syncSubscriptionTransactionOK  %+v", 200, o.ToJSONString())
}

func (o *SyncSubscriptionTransactionOK) ToJSONString() string {
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

func (o *SyncSubscriptionTransactionOK) GetPayload() *platformclientmodels.ThirdPartySubscriptionTransactionInfo {
	return o.Payload
}

func (o *SyncSubscriptionTransactionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartySubscriptionTransactionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncSubscriptionTransactionBadRequest creates a SyncSubscriptionTransactionBadRequest with default headers values
func NewSyncSubscriptionTransactionBadRequest() *SyncSubscriptionTransactionBadRequest {
	return &SyncSubscriptionTransactionBadRequest{}
}

/*SyncSubscriptionTransactionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39131</td><td>Invalid Apple IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39136</td><td>Request Apple API failed with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>39137</td><td>Verify Apple transaction failed with status [{status}] and error message [{message}]</td></tr></table>
*/
type SyncSubscriptionTransactionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSubscriptionTransactionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync][%d] syncSubscriptionTransactionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncSubscriptionTransactionBadRequest) ToJSONString() string {
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

func (o *SyncSubscriptionTransactionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSubscriptionTransactionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSubscriptionTransactionNotFound creates a SyncSubscriptionTransactionNotFound with default headers values
func NewSyncSubscriptionTransactionNotFound() *SyncSubscriptionTransactionNotFound {
	return &SyncSubscriptionTransactionNotFound{}
}

/*SyncSubscriptionTransactionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39149</td><td>Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}].</td></tr></table>
*/
type SyncSubscriptionTransactionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSubscriptionTransactionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync][%d] syncSubscriptionTransactionNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncSubscriptionTransactionNotFound) ToJSONString() string {
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

func (o *SyncSubscriptionTransactionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSubscriptionTransactionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
