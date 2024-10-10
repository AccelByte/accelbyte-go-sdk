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

// GetThirdPartySubscriptionDetailsReader is a Reader for the GetThirdPartySubscriptionDetails structure.
type GetThirdPartySubscriptionDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetThirdPartySubscriptionDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetThirdPartySubscriptionDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetThirdPartySubscriptionDetailsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetThirdPartySubscriptionDetailsOK creates a GetThirdPartySubscriptionDetailsOK with default headers values
func NewGetThirdPartySubscriptionDetailsOK() *GetThirdPartySubscriptionDetailsOK {
	return &GetThirdPartySubscriptionDetailsOK{}
}

/*GetThirdPartySubscriptionDetailsOK handles this case with default header values.

  successful operation
*/
type GetThirdPartySubscriptionDetailsOK struct {
	Payload *platformclientmodels.ThirdPartySubscriptionTransactionInfo
}

func (o *GetThirdPartySubscriptionDetailsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}][%d] getThirdPartySubscriptionDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *GetThirdPartySubscriptionDetailsOK) ToJSONString() string {
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

func (o *GetThirdPartySubscriptionDetailsOK) GetPayload() *platformclientmodels.ThirdPartySubscriptionTransactionInfo {
	return o.Payload
}

func (o *GetThirdPartySubscriptionDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartySubscriptionTransactionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetThirdPartySubscriptionDetailsNotFound creates a GetThirdPartySubscriptionDetailsNotFound with default headers values
func NewGetThirdPartySubscriptionDetailsNotFound() *GetThirdPartySubscriptionDetailsNotFound {
	return &GetThirdPartySubscriptionDetailsNotFound{}
}

/*GetThirdPartySubscriptionDetailsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39149</td><td>Third Party Subscription [{id}] not found for user [{userId}] in the namespace [{namespace}].</td></tr></table>
*/
type GetThirdPartySubscriptionDetailsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetThirdPartySubscriptionDetailsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}][%d] getThirdPartySubscriptionDetailsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetThirdPartySubscriptionDetailsNotFound) ToJSONString() string {
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

func (o *GetThirdPartySubscriptionDetailsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetThirdPartySubscriptionDetailsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
