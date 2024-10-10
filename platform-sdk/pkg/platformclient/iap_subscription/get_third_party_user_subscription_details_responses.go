// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// GetThirdPartyUserSubscriptionDetailsReader is a Reader for the GetThirdPartyUserSubscriptionDetails structure.
type GetThirdPartyUserSubscriptionDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetThirdPartyUserSubscriptionDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetThirdPartyUserSubscriptionDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetThirdPartyUserSubscriptionDetailsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetThirdPartyUserSubscriptionDetailsOK creates a GetThirdPartyUserSubscriptionDetailsOK with default headers values
func NewGetThirdPartyUserSubscriptionDetailsOK() *GetThirdPartyUserSubscriptionDetailsOK {
	return &GetThirdPartyUserSubscriptionDetailsOK{}
}

/*GetThirdPartyUserSubscriptionDetailsOK handles this case with default header values.

  successful operation
*/
type GetThirdPartyUserSubscriptionDetailsOK struct {
	Payload *platformclientmodels.ThirdPartyUserSubscriptionInfo
}

func (o *GetThirdPartyUserSubscriptionDetailsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}][%d] getThirdPartyUserSubscriptionDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *GetThirdPartyUserSubscriptionDetailsOK) ToJSONString() string {
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

func (o *GetThirdPartyUserSubscriptionDetailsOK) GetPayload() *platformclientmodels.ThirdPartyUserSubscriptionInfo {
	return o.Payload
}

func (o *GetThirdPartyUserSubscriptionDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartyUserSubscriptionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetThirdPartyUserSubscriptionDetailsNotFound creates a GetThirdPartyUserSubscriptionDetailsNotFound with default headers values
func NewGetThirdPartyUserSubscriptionDetailsNotFound() *GetThirdPartyUserSubscriptionDetailsNotFound {
	return &GetThirdPartyUserSubscriptionDetailsNotFound{}
}

/*GetThirdPartyUserSubscriptionDetailsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39149</td><td>Third Party User Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].</td></tr></table>
*/
type GetThirdPartyUserSubscriptionDetailsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetThirdPartyUserSubscriptionDetailsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}][%d] getThirdPartyUserSubscriptionDetailsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetThirdPartyUserSubscriptionDetailsNotFound) ToJSONString() string {
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

func (o *GetThirdPartyUserSubscriptionDetailsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetThirdPartyUserSubscriptionDetailsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
