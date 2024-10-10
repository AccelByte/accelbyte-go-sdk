// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_notification

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

// QueryThirdPartyNotificationsReader is a Reader for the QueryThirdPartyNotifications structure.
type QueryThirdPartyNotificationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryThirdPartyNotificationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryThirdPartyNotificationsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/iap/notifications returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryThirdPartyNotificationsOK creates a QueryThirdPartyNotificationsOK with default headers values
func NewQueryThirdPartyNotificationsOK() *QueryThirdPartyNotificationsOK {
	return &QueryThirdPartyNotificationsOK{}
}

/*QueryThirdPartyNotificationsOK handles this case with default header values.

  successful operation
*/
type QueryThirdPartyNotificationsOK struct {
	Payload *platformclientmodels.NotificationPagingSlicedResult
}

func (o *QueryThirdPartyNotificationsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/notifications][%d] queryThirdPartyNotificationsOK  %+v", 200, o.ToJSONString())
}

func (o *QueryThirdPartyNotificationsOK) ToJSONString() string {
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

func (o *QueryThirdPartyNotificationsOK) GetPayload() *platformclientmodels.NotificationPagingSlicedResult {
	return o.Payload
}

func (o *QueryThirdPartyNotificationsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.NotificationPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
