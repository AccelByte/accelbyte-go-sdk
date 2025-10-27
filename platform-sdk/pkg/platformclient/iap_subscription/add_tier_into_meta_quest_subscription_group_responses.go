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

// AddTierIntoMetaQuestSubscriptionGroupReader is a Reader for the AddTierIntoMetaQuestSubscriptionGroup structure.
type AddTierIntoMetaQuestSubscriptionGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddTierIntoMetaQuestSubscriptionGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAddTierIntoMetaQuestSubscriptionGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAddTierIntoMetaQuestSubscriptionGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddTierIntoMetaQuestSubscriptionGroupOK creates a AddTierIntoMetaQuestSubscriptionGroupOK with default headers values
func NewAddTierIntoMetaQuestSubscriptionGroupOK() *AddTierIntoMetaQuestSubscriptionGroupOK {
	return &AddTierIntoMetaQuestSubscriptionGroupOK{}
}

/*AddTierIntoMetaQuestSubscriptionGroupOK handles this case with default header values.

  successful operation
*/
type AddTierIntoMetaQuestSubscriptionGroupOK struct {
	Payload *platformclientmodels.ThirdPartySubscriptionTierInfo
}

func (o *AddTierIntoMetaQuestSubscriptionGroupOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier][%d] addTierIntoMetaQuestSubscriptionGroupOK  %+v", 200, o.ToJSONString())
}

func (o *AddTierIntoMetaQuestSubscriptionGroupOK) ToJSONString() string {
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

func (o *AddTierIntoMetaQuestSubscriptionGroupOK) GetPayload() *platformclientmodels.ThirdPartySubscriptionTierInfo {
	return o.Payload
}

func (o *AddTierIntoMetaQuestSubscriptionGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartySubscriptionTierInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddTierIntoMetaQuestSubscriptionGroupConflict creates a AddTierIntoMetaQuestSubscriptionGroupConflict with default headers values
func NewAddTierIntoMetaQuestSubscriptionGroupConflict() *AddTierIntoMetaQuestSubscriptionGroupConflict {
	return &AddTierIntoMetaQuestSubscriptionGroupConflict{}
}

/*AddTierIntoMetaQuestSubscriptionGroupConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39187</td><td>Duplicated group sku [{sku}] platform [{platform}] in namespace [{namespace}]</td></tr></table>
*/
type AddTierIntoMetaQuestSubscriptionGroupConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AddTierIntoMetaQuestSubscriptionGroupConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier][%d] addTierIntoMetaQuestSubscriptionGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *AddTierIntoMetaQuestSubscriptionGroupConflict) ToJSONString() string {
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

func (o *AddTierIntoMetaQuestSubscriptionGroupConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AddTierIntoMetaQuestSubscriptionGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
