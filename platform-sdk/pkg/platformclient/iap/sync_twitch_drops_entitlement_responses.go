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

// SyncTwitchDropsEntitlementReader is a Reader for the SyncTwitchDropsEntitlement structure.
type SyncTwitchDropsEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncTwitchDropsEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncTwitchDropsEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncTwitchDropsEntitlementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/me/iap/twitch/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncTwitchDropsEntitlementOK creates a SyncTwitchDropsEntitlementOK with default headers values
func NewSyncTwitchDropsEntitlementOK() *SyncTwitchDropsEntitlementOK {
	return &SyncTwitchDropsEntitlementOK{}
}

/*SyncTwitchDropsEntitlementOK handles this case with default header values.

  successful operation
*/
type SyncTwitchDropsEntitlementOK struct {
	Payload []*platformclientmodels.TwitchSyncResult
}

func (o *SyncTwitchDropsEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/me/iap/twitch/sync][%d] syncTwitchDropsEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *SyncTwitchDropsEntitlementOK) ToJSONString() string {
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

func (o *SyncTwitchDropsEntitlementOK) GetPayload() []*platformclientmodels.TwitchSyncResult {
	return o.Payload
}

func (o *SyncTwitchDropsEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncTwitchDropsEntitlementBadRequest creates a SyncTwitchDropsEntitlementBadRequest with default headers values
func NewSyncTwitchDropsEntitlementBadRequest() *SyncTwitchDropsEntitlementBadRequest {
	return &SyncTwitchDropsEntitlementBadRequest{}
}

/*SyncTwitchDropsEntitlementBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr>
*/
type SyncTwitchDropsEntitlementBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncTwitchDropsEntitlementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/me/iap/twitch/sync][%d] syncTwitchDropsEntitlementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncTwitchDropsEntitlementBadRequest) ToJSONString() string {
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

func (o *SyncTwitchDropsEntitlementBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncTwitchDropsEntitlementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
