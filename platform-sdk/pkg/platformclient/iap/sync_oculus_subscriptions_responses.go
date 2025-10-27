// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// SyncOculusSubscriptionsReader is a Reader for the SyncOculusSubscriptions structure.
type SyncOculusSubscriptionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncOculusSubscriptionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncOculusSubscriptionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncOculusSubscriptionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncOculusSubscriptionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncOculusSubscriptionsOK creates a SyncOculusSubscriptionsOK with default headers values
func NewSyncOculusSubscriptionsOK() *SyncOculusSubscriptionsOK {
	return &SyncOculusSubscriptionsOK{}
}

/*SyncOculusSubscriptionsOK handles this case with default header values.

  successful operation
*/
type SyncOculusSubscriptionsOK struct {
	Payload []*platformclientmodels.ThirdPartySubscriptionTransactionInfo
}

func (o *SyncOculusSubscriptionsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] syncOculusSubscriptionsOK  %+v", 200, o.ToJSONString())
}

func (o *SyncOculusSubscriptionsOK) ToJSONString() string {
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

func (o *SyncOculusSubscriptionsOK) GetPayload() []*platformclientmodels.ThirdPartySubscriptionTransactionInfo {
	return o.Payload
}

func (o *SyncOculusSubscriptionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncOculusSubscriptionsBadRequest creates a SyncOculusSubscriptionsBadRequest with default headers values
func NewSyncOculusSubscriptionsBadRequest() *SyncOculusSubscriptionsBadRequest {
	return &SyncOculusSubscriptionsBadRequest{}
}

/*SyncOculusSubscriptionsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39134</td><td>Invalid Oculus IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39133</td><td>Bad request for Oculus: [{reason}]</td></tr></table>
*/
type SyncOculusSubscriptionsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncOculusSubscriptionsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] syncOculusSubscriptionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncOculusSubscriptionsBadRequest) ToJSONString() string {
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

func (o *SyncOculusSubscriptionsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncOculusSubscriptionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncOculusSubscriptionsNotFound creates a SyncOculusSubscriptionsNotFound with default headers values
func NewSyncOculusSubscriptionsNotFound() *SyncOculusSubscriptionsNotFound {
	return &SyncOculusSubscriptionsNotFound{}
}

/*SyncOculusSubscriptionsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39146</td><td>Oculus IAP config not found in namespace [{namespace}].</td></tr><tr><td>39154</td><td>Meta Quest Subscription Sku [{sku}] not found in namespace [{namespace}] config, please config this Subscription sku in subscription group.</td></tr></table>
*/
type SyncOculusSubscriptionsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncOculusSubscriptionsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] syncOculusSubscriptionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncOculusSubscriptionsNotFound) ToJSONString() string {
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

func (o *SyncOculusSubscriptionsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncOculusSubscriptionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
