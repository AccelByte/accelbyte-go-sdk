// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// PublicConsumeUserEntitlementReader is a Reader for the PublicConsumeUserEntitlement structure.
type PublicConsumeUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicConsumeUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicConsumeUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicConsumeUserEntitlementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicConsumeUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicConsumeUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicConsumeUserEntitlementOK creates a PublicConsumeUserEntitlementOK with default headers values
func NewPublicConsumeUserEntitlementOK() *PublicConsumeUserEntitlementOK {
	return &PublicConsumeUserEntitlementOK{}
}

/*PublicConsumeUserEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicConsumeUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementDecrementResult
}

func (o *PublicConsumeUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] publicConsumeUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicConsumeUserEntitlementOK) ToJSONString() string {
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

func (o *PublicConsumeUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementDecrementResult {
	return o.Payload
}

func (o *PublicConsumeUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementDecrementResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicConsumeUserEntitlementBadRequest creates a PublicConsumeUserEntitlementBadRequest with default headers values
func NewPublicConsumeUserEntitlementBadRequest() *PublicConsumeUserEntitlementBadRequest {
	return &PublicConsumeUserEntitlementBadRequest{}
}

/*PublicConsumeUserEntitlementBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31121</td><td>OptionBox entitlement [{entitlementId}] use count is not 1</td></tr><tr><td>31122</td><td>OptionBox entitlement [{entitlementId}] options size is not 1</td></tr><tr><td>31123</td><td>Unable to acquire box item, box item [{itemId}] expired</td></tr></table>
*/
type PublicConsumeUserEntitlementBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicConsumeUserEntitlementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] publicConsumeUserEntitlementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicConsumeUserEntitlementBadRequest) ToJSONString() string {
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

func (o *PublicConsumeUserEntitlementBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicConsumeUserEntitlementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicConsumeUserEntitlementNotFound creates a PublicConsumeUserEntitlementNotFound with default headers values
func NewPublicConsumeUserEntitlementNotFound() *PublicConsumeUserEntitlementNotFound {
	return &PublicConsumeUserEntitlementNotFound{}
}

/*PublicConsumeUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr><tr><td>31145</td><td>Option [{option}] doesn't exist in OptionBox entitlement [{entitlementId}]</td></tr></table>
*/
type PublicConsumeUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicConsumeUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] publicConsumeUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicConsumeUserEntitlementNotFound) ToJSONString() string {
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

func (o *PublicConsumeUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicConsumeUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicConsumeUserEntitlementConflict creates a PublicConsumeUserEntitlementConflict with default headers values
func NewPublicConsumeUserEntitlementConflict() *PublicConsumeUserEntitlementConflict {
	return &PublicConsumeUserEntitlementConflict{}
}

/*PublicConsumeUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31173</td><td>Entitlement [{entitlementId}] is not consumable</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31180</td><td>Duplicate request id: [{requestId}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr><tr><td>31183</td><td>Entitlement [{entitlementId}] origin [{origin}] not allowed be operated at [{platform}]</td></tr></table>
*/
type PublicConsumeUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicConsumeUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] publicConsumeUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicConsumeUserEntitlementConflict) ToJSONString() string {
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

func (o *PublicConsumeUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicConsumeUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
