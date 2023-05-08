// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// ProcessUserOrderNotificationReader is a Reader for the ProcessUserOrderNotification structure.
type ProcessUserOrderNotificationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ProcessUserOrderNotificationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewProcessUserOrderNotificationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewProcessUserOrderNotificationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications returns an error %d: %s", response.Code(), string(data))
	}
}

// NewProcessUserOrderNotificationNoContent creates a ProcessUserOrderNotificationNoContent with default headers values
func NewProcessUserOrderNotificationNoContent() *ProcessUserOrderNotificationNoContent {
	return &ProcessUserOrderNotificationNoContent{}
}

/*ProcessUserOrderNotificationNoContent handles this case with default header values.

  process successfully
*/
type ProcessUserOrderNotificationNoContent struct {
}

func (o *ProcessUserOrderNotificationNoContent) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications][%d] processUserOrderNotificationNoContent ", 204)
}

func (o *ProcessUserOrderNotificationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewProcessUserOrderNotificationBadRequest creates a ProcessUserOrderNotificationBadRequest with default headers values
func NewProcessUserOrderNotificationBadRequest() *ProcessUserOrderNotificationBadRequest {
	return &ProcessUserOrderNotificationBadRequest{}
}

/*ProcessUserOrderNotificationBadRequest handles this case with default header values.

  process failed
*/
type ProcessUserOrderNotificationBadRequest struct {
}

func (o *ProcessUserOrderNotificationBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications][%d] processUserOrderNotificationBadRequest ", 400)
}

func (o *ProcessUserOrderNotificationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
