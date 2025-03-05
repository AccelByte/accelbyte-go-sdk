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

// SyncSteamIAPByTransactionReader is a Reader for the SyncSteamIAPByTransaction structure.
type SyncSteamIAPByTransactionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSteamIAPByTransactionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncSteamIAPByTransactionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSteamIAPByTransactionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncSteamIAPByTransactionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSyncSteamIAPByTransactionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSteamIAPByTransactionOK creates a SyncSteamIAPByTransactionOK with default headers values
func NewSyncSteamIAPByTransactionOK() *SyncSteamIAPByTransactionOK {
	return &SyncSteamIAPByTransactionOK{}
}

/*SyncSteamIAPByTransactionOK handles this case with default header values.

  successful operation
*/
type SyncSteamIAPByTransactionOK struct {
	Payload *platformclientmodels.IAPOrderShortInfo
}

func (o *SyncSteamIAPByTransactionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] syncSteamIapByTransactionOK  %+v", 200, o.ToJSONString())
}

func (o *SyncSteamIAPByTransactionOK) ToJSONString() string {
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

func (o *SyncSteamIAPByTransactionOK) GetPayload() *platformclientmodels.IAPOrderShortInfo {
	return o.Payload
}

func (o *SyncSteamIAPByTransactionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.IAPOrderShortInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSyncSteamIAPByTransactionBadRequest creates a SyncSteamIAPByTransactionBadRequest with default headers values
func NewSyncSteamIAPByTransactionBadRequest() *SyncSteamIAPByTransactionBadRequest {
	return &SyncSteamIAPByTransactionBadRequest{}
}

/*SyncSteamIAPByTransactionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr><tr><td>39621</td><td>Steam api common exception with status code [statusCode] details: [details]</td></tr></table>
*/
type SyncSteamIAPByTransactionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamIAPByTransactionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] syncSteamIapByTransactionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncSteamIAPByTransactionBadRequest) ToJSONString() string {
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

func (o *SyncSteamIAPByTransactionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamIAPByTransactionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamIAPByTransactionNotFound creates a SyncSteamIAPByTransactionNotFound with default headers values
func NewSyncSteamIAPByTransactionNotFound() *SyncSteamIAPByTransactionNotFound {
	return &SyncSteamIAPByTransactionNotFound{}
}

/*SyncSteamIAPByTransactionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncSteamIAPByTransactionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamIAPByTransactionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] syncSteamIapByTransactionNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncSteamIAPByTransactionNotFound) ToJSONString() string {
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

func (o *SyncSteamIAPByTransactionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamIAPByTransactionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamIAPByTransactionConflict creates a SyncSteamIAPByTransactionConflict with default headers values
func NewSyncSteamIAPByTransactionConflict() *SyncSteamIAPByTransactionConflict {
	return &SyncSteamIAPByTransactionConflict{}
}

/*SyncSteamIAPByTransactionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39183</td><td>Steam transaction [{orderId}] is still pending or failed, status [{status}], please try it later</td></tr><tr><td>39184</td><td>Steam api exception with error code [{errorCode}] and error message [{message}]</td></tr><tr><td>39185</td><td>This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]</td></tr></table>
*/
type SyncSteamIAPByTransactionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamIAPByTransactionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] syncSteamIapByTransactionConflict  %+v", 409, o.ToJSONString())
}

func (o *SyncSteamIAPByTransactionConflict) ToJSONString() string {
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

func (o *SyncSteamIAPByTransactionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamIAPByTransactionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
