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

// SyncSubscriptionReader is a Reader for the SyncSubscription structure.
type SyncSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncSubscriptionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSubscriptionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSubscriptionOK creates a SyncSubscriptionOK with default headers values
func NewSyncSubscriptionOK() *SyncSubscriptionOK {
	return &SyncSubscriptionOK{}
}

/*SyncSubscriptionOK handles this case with default header values.

  successful operation
*/
type SyncSubscriptionOK struct {
	Payload *platformclientmodels.ThirdPartyUserSubscriptionInfo
}

func (o *SyncSubscriptionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync][%d] syncSubscriptionOK  %+v", 200, o.ToJSONString())
}

func (o *SyncSubscriptionOK) ToJSONString() string {
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

func (o *SyncSubscriptionOK) GetPayload() *platformclientmodels.ThirdPartyUserSubscriptionInfo {
	return o.Payload
}

func (o *SyncSubscriptionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartyUserSubscriptionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncSubscriptionBadRequest creates a SyncSubscriptionBadRequest with default headers values
func NewSyncSubscriptionBadRequest() *SyncSubscriptionBadRequest {
	return &SyncSubscriptionBadRequest{}
}

/*SyncSubscriptionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39131</td><td>Invalid Apple IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39136</td><td>Request Apple API failed with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>39137</td><td>Verify Apple transaction failed with status [{status}] and error message [{message}]</td></tr></table>
*/
type SyncSubscriptionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSubscriptionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync][%d] syncSubscriptionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncSubscriptionBadRequest) ToJSONString() string {
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

func (o *SyncSubscriptionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSubscriptionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSubscriptionNotFound creates a SyncSubscriptionNotFound with default headers values
func NewSyncSubscriptionNotFound() *SyncSubscriptionNotFound {
	return &SyncSubscriptionNotFound{}
}

/*SyncSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39149</td><td>Third Party Subscription Transaction [{id}] not found for user [{userId}] in the namespace [{namespace}].</td></tr><tr><td>39150</td><td>Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}]..</td></tr></table>
*/
type SyncSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync][%d] syncSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncSubscriptionNotFound) ToJSONString() string {
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

func (o *SyncSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
