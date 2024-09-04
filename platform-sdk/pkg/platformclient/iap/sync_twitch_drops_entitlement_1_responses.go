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

// SyncTwitchDropsEntitlement1Reader is a Reader for the SyncTwitchDropsEntitlement1 structure.
type SyncTwitchDropsEntitlement1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncTwitchDropsEntitlement1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSyncTwitchDropsEntitlement1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncTwitchDropsEntitlement1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncTwitchDropsEntitlement1NoContent creates a SyncTwitchDropsEntitlement1NoContent with default headers values
func NewSyncTwitchDropsEntitlement1NoContent() *SyncTwitchDropsEntitlement1NoContent {
	return &SyncTwitchDropsEntitlement1NoContent{}
}

/*SyncTwitchDropsEntitlement1NoContent handles this case with default header values.

  Sync Successful
*/
type SyncTwitchDropsEntitlement1NoContent struct {
}

func (o *SyncTwitchDropsEntitlement1NoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync][%d] syncTwitchDropsEntitlement1NoContent ", 204)
}

func (o *SyncTwitchDropsEntitlement1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSyncTwitchDropsEntitlement1BadRequest creates a SyncTwitchDropsEntitlement1BadRequest with default headers values
func NewSyncTwitchDropsEntitlement1BadRequest() *SyncTwitchDropsEntitlement1BadRequest {
	return &SyncTwitchDropsEntitlement1BadRequest{}
}

/*SyncTwitchDropsEntitlement1BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr></table>
*/
type SyncTwitchDropsEntitlement1BadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncTwitchDropsEntitlement1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync][%d] syncTwitchDropsEntitlement1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncTwitchDropsEntitlement1BadRequest) ToJSONString() string {
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

func (o *SyncTwitchDropsEntitlement1BadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncTwitchDropsEntitlement1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
