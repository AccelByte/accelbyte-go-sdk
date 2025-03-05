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

// SyncSteamAbnormalTransactionReader is a Reader for the SyncSteamAbnormalTransaction structure.
type SyncSteamAbnormalTransactionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSteamAbnormalTransactionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncSteamAbnormalTransactionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSteamAbnormalTransactionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncSteamAbnormalTransactionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSyncSteamAbnormalTransactionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSteamAbnormalTransactionOK creates a SyncSteamAbnormalTransactionOK with default headers values
func NewSyncSteamAbnormalTransactionOK() *SyncSteamAbnormalTransactionOK {
	return &SyncSteamAbnormalTransactionOK{}
}

/*SyncSteamAbnormalTransactionOK handles this case with default header values.

  successful operation
*/
type SyncSteamAbnormalTransactionOK struct {
	Payload *platformclientmodels.IAPOrderShortInfo
}

func (o *SyncSteamAbnormalTransactionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] syncSteamAbnormalTransactionOK  %+v", 200, o.ToJSONString())
}

func (o *SyncSteamAbnormalTransactionOK) ToJSONString() string {
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

func (o *SyncSteamAbnormalTransactionOK) GetPayload() *platformclientmodels.IAPOrderShortInfo {
	return o.Payload
}

func (o *SyncSteamAbnormalTransactionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamAbnormalTransactionBadRequest creates a SyncSteamAbnormalTransactionBadRequest with default headers values
func NewSyncSteamAbnormalTransactionBadRequest() *SyncSteamAbnormalTransactionBadRequest {
	return &SyncSteamAbnormalTransactionBadRequest{}
}

/*SyncSteamAbnormalTransactionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr><tr><td>39621</td><td>Steam api common exception with status code [statusCode] details: [details]</td></tr></table>
*/
type SyncSteamAbnormalTransactionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamAbnormalTransactionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] syncSteamAbnormalTransactionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncSteamAbnormalTransactionBadRequest) ToJSONString() string {
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

func (o *SyncSteamAbnormalTransactionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamAbnormalTransactionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamAbnormalTransactionNotFound creates a SyncSteamAbnormalTransactionNotFound with default headers values
func NewSyncSteamAbnormalTransactionNotFound() *SyncSteamAbnormalTransactionNotFound {
	return &SyncSteamAbnormalTransactionNotFound{}
}

/*SyncSteamAbnormalTransactionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncSteamAbnormalTransactionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamAbnormalTransactionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] syncSteamAbnormalTransactionNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncSteamAbnormalTransactionNotFound) ToJSONString() string {
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

func (o *SyncSteamAbnormalTransactionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamAbnormalTransactionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamAbnormalTransactionConflict creates a SyncSteamAbnormalTransactionConflict with default headers values
func NewSyncSteamAbnormalTransactionConflict() *SyncSteamAbnormalTransactionConflict {
	return &SyncSteamAbnormalTransactionConflict{}
}

/*SyncSteamAbnormalTransactionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39184</td><td>Steam api exception with error code [{statusCode}] and error message [{message}]</td></tr><tr><td>39185</td><td>This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]</td></tr></table>
*/
type SyncSteamAbnormalTransactionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamAbnormalTransactionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] syncSteamAbnormalTransactionConflict  %+v", 409, o.ToJSONString())
}

func (o *SyncSteamAbnormalTransactionConflict) ToJSONString() string {
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

func (o *SyncSteamAbnormalTransactionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamAbnormalTransactionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
