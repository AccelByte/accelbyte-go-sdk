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

// PublicTransferUserEntitlementReader is a Reader for the PublicTransferUserEntitlement structure.
type PublicTransferUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicTransferUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicTransferUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicTransferUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicTransferUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicTransferUserEntitlementOK creates a PublicTransferUserEntitlementOK with default headers values
func NewPublicTransferUserEntitlementOK() *PublicTransferUserEntitlementOK {
	return &PublicTransferUserEntitlementOK{}
}

/*PublicTransferUserEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicTransferUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementTransferResult
}

func (o *PublicTransferUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer][%d] publicTransferUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicTransferUserEntitlementOK) ToJSONString() string {
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

func (o *PublicTransferUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementTransferResult {
	return o.Payload
}

func (o *PublicTransferUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementTransferResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicTransferUserEntitlementNotFound creates a PublicTransferUserEntitlementNotFound with default headers values
func NewPublicTransferUserEntitlementNotFound() *PublicTransferUserEntitlementNotFound {
	return &PublicTransferUserEntitlementNotFound{}
}

/*PublicTransferUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicTransferUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicTransferUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer][%d] publicTransferUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicTransferUserEntitlementNotFound) ToJSONString() string {
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

func (o *PublicTransferUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicTransferUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicTransferUserEntitlementConflict creates a PublicTransferUserEntitlementConflict with default headers values
func NewPublicTransferUserEntitlementConflict() *PublicTransferUserEntitlementConflict {
	return &PublicTransferUserEntitlementConflict{}
}

/*PublicTransferUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31182</td><td>Entitlement [{entitlementId}] already sold</td></tr><tr><td>31183</td><td>Entitlement [{entitlementId}] origin [{origin}] not allowed be operated at [{platform}]</td></tr><tr><td>31184</td><td>Source entitlement [{sourceEntitlementId}] and target entitlement [{targetEntitlementId}] should have same collectionId, timeRange, origin and itemId</td></tr><tr><td>31185</td><td>Transferred source entitlement [{sourceEntitlementId}] and target entitlement [{targetEntitlementId}] can not be set to same</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicTransferUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicTransferUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer][%d] publicTransferUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicTransferUserEntitlementConflict) ToJSONString() string {
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

func (o *PublicTransferUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicTransferUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
