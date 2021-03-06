// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// SyncSteamInventoryReader is a Reader for the SyncSteamInventory structure.
type SyncSteamInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncSteamInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSyncSteamInventoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncSteamInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncSteamInventoryNoContent creates a SyncSteamInventoryNoContent with default headers values
func NewSyncSteamInventoryNoContent() *SyncSteamInventoryNoContent {
	return &SyncSteamInventoryNoContent{}
}

/*SyncSteamInventoryNoContent handles this case with default header values.

  Successful operation
*/
type SyncSteamInventoryNoContent struct {
}

func (o *SyncSteamInventoryNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync][%d] syncSteamInventoryNoContent ", 204)
}

func (o *SyncSteamInventoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewSyncSteamInventoryBadRequest creates a SyncSteamInventoryBadRequest with default headers values
func NewSyncSteamInventoryBadRequest() *SyncSteamInventoryBadRequest {
	return &SyncSteamInventoryBadRequest{}
}

/*SyncSteamInventoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39123</td><td>IAP request is not in valid application</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr>
*/
type SyncSteamInventoryBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncSteamInventoryBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync][%d] syncSteamInventoryBadRequest  %+v", 400, o.Payload)
}

func (o *SyncSteamInventoryBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncSteamInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
