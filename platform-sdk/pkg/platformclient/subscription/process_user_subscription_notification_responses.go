// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// ProcessUserSubscriptionNotificationReader is a Reader for the ProcessUserSubscriptionNotification structure.
type ProcessUserSubscriptionNotificationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ProcessUserSubscriptionNotificationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewProcessUserSubscriptionNotificationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewProcessUserSubscriptionNotificationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications returns an error %d: %s", response.Code(), string(data))
	}
}

// NewProcessUserSubscriptionNotificationNoContent creates a ProcessUserSubscriptionNotificationNoContent with default headers values
func NewProcessUserSubscriptionNotificationNoContent() *ProcessUserSubscriptionNotificationNoContent {
	return &ProcessUserSubscriptionNotificationNoContent{}
}

/*ProcessUserSubscriptionNotificationNoContent handles this case with default header values.

  process successfully
*/
type ProcessUserSubscriptionNotificationNoContent struct {
}

func (o *ProcessUserSubscriptionNotificationNoContent) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications][%d] processUserSubscriptionNotificationNoContent ", 204)
}

func (o *ProcessUserSubscriptionNotificationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewProcessUserSubscriptionNotificationBadRequest creates a ProcessUserSubscriptionNotificationBadRequest with default headers values
func NewProcessUserSubscriptionNotificationBadRequest() *ProcessUserSubscriptionNotificationBadRequest {
	return &ProcessUserSubscriptionNotificationBadRequest{}
}

/*ProcessUserSubscriptionNotificationBadRequest handles this case with default header values.

  process failed
*/
type ProcessUserSubscriptionNotificationBadRequest struct {
}

func (o *ProcessUserSubscriptionNotificationBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications][%d] processUserSubscriptionNotificationBadRequest ", 400)
}

func (o *ProcessUserSubscriptionNotificationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
