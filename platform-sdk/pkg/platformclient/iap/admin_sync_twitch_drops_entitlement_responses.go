// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AdminSyncTwitchDropsEntitlementReader is a Reader for the AdminSyncTwitchDropsEntitlement structure.
type AdminSyncTwitchDropsEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncTwitchDropsEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminSyncTwitchDropsEntitlementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewAdminSyncTwitchDropsEntitlementTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/twitch/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncTwitchDropsEntitlementNoContent creates a AdminSyncTwitchDropsEntitlementNoContent with default headers values
func NewAdminSyncTwitchDropsEntitlementNoContent() *AdminSyncTwitchDropsEntitlementNoContent {
	return &AdminSyncTwitchDropsEntitlementNoContent{}
}

/*AdminSyncTwitchDropsEntitlementNoContent handles this case with default header values.

  Sync Successful
*/
type AdminSyncTwitchDropsEntitlementNoContent struct {
}

func (o *AdminSyncTwitchDropsEntitlementNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/twitch/sync][%d] adminSyncTwitchDropsEntitlementNoContent ", 204)
}

func (o *AdminSyncTwitchDropsEntitlementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSyncTwitchDropsEntitlementTooManyRequests creates a AdminSyncTwitchDropsEntitlementTooManyRequests with default headers values
func NewAdminSyncTwitchDropsEntitlementTooManyRequests() *AdminSyncTwitchDropsEntitlementTooManyRequests {
	return &AdminSyncTwitchDropsEntitlementTooManyRequests{}
}

/*AdminSyncTwitchDropsEntitlementTooManyRequests handles this case with default header values.

  Too Many Request (twitch rate limit exceeded)
*/
type AdminSyncTwitchDropsEntitlementTooManyRequests struct {
}

func (o *AdminSyncTwitchDropsEntitlementTooManyRequests) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/twitch/sync][%d] adminSyncTwitchDropsEntitlementTooManyRequests ", 429)
}

func (o *AdminSyncTwitchDropsEntitlementTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
