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

// ConsumeUserEntitlementReader is a Reader for the ConsumeUserEntitlement structure.
type ConsumeUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ConsumeUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewConsumeUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewConsumeUserEntitlementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewConsumeUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewConsumeUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement returns an error %d: %s", response.Code(), string(data))
	}
}

// NewConsumeUserEntitlementOK creates a ConsumeUserEntitlementOK with default headers values
func NewConsumeUserEntitlementOK() *ConsumeUserEntitlementOK {
	return &ConsumeUserEntitlementOK{}
}

/*ConsumeUserEntitlementOK handles this case with default header values.

  successful operation
*/
type ConsumeUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementDecrementResult
}

func (o *ConsumeUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] consumeUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *ConsumeUserEntitlementOK) ToJSONString() string {
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

func (o *ConsumeUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementDecrementResult {
	return o.Payload
}

func (o *ConsumeUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewConsumeUserEntitlementBadRequest creates a ConsumeUserEntitlementBadRequest with default headers values
func NewConsumeUserEntitlementBadRequest() *ConsumeUserEntitlementBadRequest {
	return &ConsumeUserEntitlementBadRequest{}
}

/*ConsumeUserEntitlementBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31123</td><td>Unable to acquire box item, box item [{itemId}] expired</td></tr></table>
*/
type ConsumeUserEntitlementBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ConsumeUserEntitlementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] consumeUserEntitlementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ConsumeUserEntitlementBadRequest) ToJSONString() string {
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

func (o *ConsumeUserEntitlementBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ConsumeUserEntitlementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewConsumeUserEntitlementNotFound creates a ConsumeUserEntitlementNotFound with default headers values
func NewConsumeUserEntitlementNotFound() *ConsumeUserEntitlementNotFound {
	return &ConsumeUserEntitlementNotFound{}
}

/*ConsumeUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type ConsumeUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ConsumeUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] consumeUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *ConsumeUserEntitlementNotFound) ToJSONString() string {
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

func (o *ConsumeUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ConsumeUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewConsumeUserEntitlementConflict creates a ConsumeUserEntitlementConflict with default headers values
func NewConsumeUserEntitlementConflict() *ConsumeUserEntitlementConflict {
	return &ConsumeUserEntitlementConflict{}
}

/*ConsumeUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31173</td><td>Entitlement [{entitlementId}] is not consumable</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31180</td><td>Duplicate request id: [{requestId}]</td></tr><tr><td>31183</td><td>Entitlement [{entitlementId}] origin [{origin}] not allowed be operated at [{platform}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type ConsumeUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ConsumeUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement][%d] consumeUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *ConsumeUserEntitlementConflict) ToJSONString() string {
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

func (o *ConsumeUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ConsumeUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
