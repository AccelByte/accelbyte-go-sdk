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

// PublicSplitUserEntitlementReader is a Reader for the PublicSplitUserEntitlement structure.
type PublicSplitUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSplitUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSplitUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSplitUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSplitUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSplitUserEntitlementOK creates a PublicSplitUserEntitlementOK with default headers values
func NewPublicSplitUserEntitlementOK() *PublicSplitUserEntitlementOK {
	return &PublicSplitUserEntitlementOK{}
}

/*PublicSplitUserEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicSplitUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementSplitResult
}

func (o *PublicSplitUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split][%d] publicSplitUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicSplitUserEntitlementOK) ToJSONString() string {
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

func (o *PublicSplitUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementSplitResult {
	return o.Payload
}

func (o *PublicSplitUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementSplitResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSplitUserEntitlementNotFound creates a PublicSplitUserEntitlementNotFound with default headers values
func NewPublicSplitUserEntitlementNotFound() *PublicSplitUserEntitlementNotFound {
	return &PublicSplitUserEntitlementNotFound{}
}

/*PublicSplitUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicSplitUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSplitUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split][%d] publicSplitUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSplitUserEntitlementNotFound) ToJSONString() string {
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

func (o *PublicSplitUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSplitUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSplitUserEntitlementConflict creates a PublicSplitUserEntitlementConflict with default headers values
func NewPublicSplitUserEntitlementConflict() *PublicSplitUserEntitlementConflict {
	return &PublicSplitUserEntitlementConflict{}
}

/*PublicSplitUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31182</td><td>Entitlement [{entitlementId}] already sold</td></tr><tr><td>31183</td><td>Entitlement [{entitlementId}] origin [{origin}] not allowed be operated at [{platform}]</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicSplitUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSplitUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split][%d] publicSplitUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSplitUserEntitlementConflict) ToJSONString() string {
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

func (o *PublicSplitUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSplitUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
