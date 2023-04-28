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

// PublicSellUserEntitlementReader is a Reader for the PublicSellUserEntitlement structure.
type PublicSellUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSellUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSellUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSellUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSellUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSellUserEntitlementOK creates a PublicSellUserEntitlementOK with default headers values
func NewPublicSellUserEntitlementOK() *PublicSellUserEntitlementOK {
	return &PublicSellUserEntitlementOK{}
}

/*PublicSellUserEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicSellUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementSoldResult
}

func (o *PublicSellUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] publicSellUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicSellUserEntitlementOK) ToJSONString() string {
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

func (o *PublicSellUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementSoldResult {
	return o.Payload
}

func (o *PublicSellUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementSoldResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSellUserEntitlementNotFound creates a PublicSellUserEntitlementNotFound with default headers values
func NewPublicSellUserEntitlementNotFound() *PublicSellUserEntitlementNotFound {
	return &PublicSellUserEntitlementNotFound{}
}

/*PublicSellUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicSellUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSellUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] publicSellUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSellUserEntitlementNotFound) ToJSONString() string {
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

func (o *PublicSellUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSellUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSellUserEntitlementConflict creates a PublicSellUserEntitlementConflict with default headers values
func NewPublicSellUserEntitlementConflict() *PublicSellUserEntitlementConflict {
	return &PublicSellUserEntitlementConflict{}
}

/*PublicSellUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31180</td><td>Duplicate request id: [{requestId}]</td></tr><tr><td>31181</td><td>Entitlement [{entitlementId}] is not sellable</td></tr><tr><td>31182</td><td>Entitlement [{entitlementId}] already sold</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type PublicSellUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSellUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] publicSellUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSellUserEntitlementConflict) ToJSONString() string {
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

func (o *PublicSellUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSellUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
