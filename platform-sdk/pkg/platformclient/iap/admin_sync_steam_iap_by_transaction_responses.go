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

// AdminSyncSteamIAPByTransactionReader is a Reader for the AdminSyncSteamIAPByTransaction structure.
type AdminSyncSteamIAPByTransactionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncSteamIAPByTransactionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncSteamIAPByTransactionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncSteamIAPByTransactionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncSteamIAPByTransactionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminSyncSteamIAPByTransactionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncSteamIAPByTransactionOK creates a AdminSyncSteamIAPByTransactionOK with default headers values
func NewAdminSyncSteamIAPByTransactionOK() *AdminSyncSteamIAPByTransactionOK {
	return &AdminSyncSteamIAPByTransactionOK{}
}

/*AdminSyncSteamIAPByTransactionOK handles this case with default header values.

  successful operation
*/
type AdminSyncSteamIAPByTransactionOK struct {
	Payload *platformclientmodels.IAPOrderShortInfo
}

func (o *AdminSyncSteamIAPByTransactionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] adminSyncSteamIapByTransactionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSyncSteamIAPByTransactionOK) ToJSONString() string {
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

func (o *AdminSyncSteamIAPByTransactionOK) GetPayload() *platformclientmodels.IAPOrderShortInfo {
	return o.Payload
}

func (o *AdminSyncSteamIAPByTransactionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamIAPByTransactionBadRequest creates a AdminSyncSteamIAPByTransactionBadRequest with default headers values
func NewAdminSyncSteamIAPByTransactionBadRequest() *AdminSyncSteamIAPByTransactionBadRequest {
	return &AdminSyncSteamIAPByTransactionBadRequest{}
}

/*AdminSyncSteamIAPByTransactionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr><tr><td>39621</td><td>Steam api common exception with status code [statusCode] details: [details]</td></tr></table>
*/
type AdminSyncSteamIAPByTransactionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamIAPByTransactionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] adminSyncSteamIapByTransactionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncSteamIAPByTransactionBadRequest) ToJSONString() string {
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

func (o *AdminSyncSteamIAPByTransactionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamIAPByTransactionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamIAPByTransactionNotFound creates a AdminSyncSteamIAPByTransactionNotFound with default headers values
func NewAdminSyncSteamIAPByTransactionNotFound() *AdminSyncSteamIAPByTransactionNotFound {
	return &AdminSyncSteamIAPByTransactionNotFound{}
}

/*AdminSyncSteamIAPByTransactionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type AdminSyncSteamIAPByTransactionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamIAPByTransactionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] adminSyncSteamIapByTransactionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncSteamIAPByTransactionNotFound) ToJSONString() string {
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

func (o *AdminSyncSteamIAPByTransactionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamIAPByTransactionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamIAPByTransactionConflict creates a AdminSyncSteamIAPByTransactionConflict with default headers values
func NewAdminSyncSteamIAPByTransactionConflict() *AdminSyncSteamIAPByTransactionConflict {
	return &AdminSyncSteamIAPByTransactionConflict{}
}

/*AdminSyncSteamIAPByTransactionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39184</td><td>Steam api exception with error code [{errorCode}] and error message [{message}]</td></tr><tr><td>39185</td><td>This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]</td></tr></table>
*/
type AdminSyncSteamIAPByTransactionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamIAPByTransactionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction][%d] adminSyncSteamIapByTransactionConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminSyncSteamIAPByTransactionConflict) ToJSONString() string {
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

func (o *AdminSyncSteamIAPByTransactionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamIAPByTransactionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
