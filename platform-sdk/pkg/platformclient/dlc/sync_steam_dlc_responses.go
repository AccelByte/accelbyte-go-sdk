// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// SyncSteamDLCReader is a Reader for the SyncSteamDLC structure.
type SyncSteamDLCReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSteamDLCReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSyncSteamDLCNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSteamDLCBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncSteamDLCNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSteamDLCNoContent creates a SyncSteamDLCNoContent with default headers values
func NewSyncSteamDLCNoContent() *SyncSteamDLCNoContent {
	return &SyncSteamDLCNoContent{}
}

/*SyncSteamDLCNoContent handles this case with default header values.

  Successful operation
*/
type SyncSteamDLCNoContent struct {
}

func (o *SyncSteamDLCNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync][%d] syncSteamDlcNoContent ", 204)
}

func (o *SyncSteamDLCNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSyncSteamDLCBadRequest creates a SyncSteamDLCBadRequest with default headers values
func NewSyncSteamDLCBadRequest() *SyncSteamDLCBadRequest {
	return &SyncSteamDLCBadRequest{}
}

/*SyncSteamDLCBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr></table>
*/
type SyncSteamDLCBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamDLCBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync][%d] syncSteamDlcBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncSteamDLCBadRequest) ToJSONString() string {
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

func (o *SyncSteamDLCBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamDLCBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncSteamDLCNotFound creates a SyncSteamDLCNotFound with default headers values
func NewSyncSteamDLCNotFound() *SyncSteamDLCNotFound {
	return &SyncSteamDLCNotFound{}
}

/*SyncSteamDLCNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncSteamDLCNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamDLCNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync][%d] syncSteamDlcNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncSteamDLCNotFound) ToJSONString() string {
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

func (o *SyncSteamDLCNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamDLCNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
