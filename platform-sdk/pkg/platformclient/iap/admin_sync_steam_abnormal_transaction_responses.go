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

// AdminSyncSteamAbnormalTransactionReader is a Reader for the AdminSyncSteamAbnormalTransaction structure.
type AdminSyncSteamAbnormalTransactionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncSteamAbnormalTransactionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncSteamAbnormalTransactionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncSteamAbnormalTransactionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncSteamAbnormalTransactionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminSyncSteamAbnormalTransactionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncSteamAbnormalTransactionOK creates a AdminSyncSteamAbnormalTransactionOK with default headers values
func NewAdminSyncSteamAbnormalTransactionOK() *AdminSyncSteamAbnormalTransactionOK {
	return &AdminSyncSteamAbnormalTransactionOK{}
}

/*AdminSyncSteamAbnormalTransactionOK handles this case with default header values.

  successful operation
*/
type AdminSyncSteamAbnormalTransactionOK struct {
	Payload *platformclientmodels.IAPOrderShortInfo
}

func (o *AdminSyncSteamAbnormalTransactionOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] adminSyncSteamAbnormalTransactionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSyncSteamAbnormalTransactionOK) ToJSONString() string {
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

func (o *AdminSyncSteamAbnormalTransactionOK) GetPayload() *platformclientmodels.IAPOrderShortInfo {
	return o.Payload
}

func (o *AdminSyncSteamAbnormalTransactionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamAbnormalTransactionBadRequest creates a AdminSyncSteamAbnormalTransactionBadRequest with default headers values
func NewAdminSyncSteamAbnormalTransactionBadRequest() *AdminSyncSteamAbnormalTransactionBadRequest {
	return &AdminSyncSteamAbnormalTransactionBadRequest{}
}

/*AdminSyncSteamAbnormalTransactionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr><tr><td>39621</td><td>Steam api common exception with status code [statusCode] details: [details]</td></tr></table>
*/
type AdminSyncSteamAbnormalTransactionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamAbnormalTransactionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] adminSyncSteamAbnormalTransactionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncSteamAbnormalTransactionBadRequest) ToJSONString() string {
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

func (o *AdminSyncSteamAbnormalTransactionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamAbnormalTransactionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamAbnormalTransactionNotFound creates a AdminSyncSteamAbnormalTransactionNotFound with default headers values
func NewAdminSyncSteamAbnormalTransactionNotFound() *AdminSyncSteamAbnormalTransactionNotFound {
	return &AdminSyncSteamAbnormalTransactionNotFound{}
}

/*AdminSyncSteamAbnormalTransactionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type AdminSyncSteamAbnormalTransactionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamAbnormalTransactionNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] adminSyncSteamAbnormalTransactionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncSteamAbnormalTransactionNotFound) ToJSONString() string {
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

func (o *AdminSyncSteamAbnormalTransactionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamAbnormalTransactionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncSteamAbnormalTransactionConflict creates a AdminSyncSteamAbnormalTransactionConflict with default headers values
func NewAdminSyncSteamAbnormalTransactionConflict() *AdminSyncSteamAbnormalTransactionConflict {
	return &AdminSyncSteamAbnormalTransactionConflict{}
}

/*AdminSyncSteamAbnormalTransactionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39184</td><td>Steam api exception  with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>39185</td><td>This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]</td></tr></table>
*/
type AdminSyncSteamAbnormalTransactionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncSteamAbnormalTransactionConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction][%d] adminSyncSteamAbnormalTransactionConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminSyncSteamAbnormalTransactionConflict) ToJSONString() string {
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

func (o *AdminSyncSteamAbnormalTransactionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncSteamAbnormalTransactionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
