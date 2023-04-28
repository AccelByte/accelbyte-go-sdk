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

// SellUserEntitlementReader is a Reader for the SellUserEntitlement structure.
type SellUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SellUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSellUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSellUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSellUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSellUserEntitlementOK creates a SellUserEntitlementOK with default headers values
func NewSellUserEntitlementOK() *SellUserEntitlementOK {
	return &SellUserEntitlementOK{}
}

/*SellUserEntitlementOK handles this case with default header values.

  successful operation
*/
type SellUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementSoldResult
}

func (o *SellUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] sellUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *SellUserEntitlementOK) ToJSONString() string {
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

func (o *SellUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementSoldResult {
	return o.Payload
}

func (o *SellUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSellUserEntitlementNotFound creates a SellUserEntitlementNotFound with default headers values
func NewSellUserEntitlementNotFound() *SellUserEntitlementNotFound {
	return &SellUserEntitlementNotFound{}
}

/*SellUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type SellUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SellUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] sellUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *SellUserEntitlementNotFound) ToJSONString() string {
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

func (o *SellUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SellUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSellUserEntitlementConflict creates a SellUserEntitlementConflict with default headers values
func NewSellUserEntitlementConflict() *SellUserEntitlementConflict {
	return &SellUserEntitlementConflict{}
}

/*SellUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31172</td><td>Entitlement [{entitlementId}] not active</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31176</td><td>Entitlement [{entitlementId}] use count is insufficient</td></tr><tr><td>31178</td><td>Entitlement [{entitlementId}] out of time range</td></tr><tr><td>31180</td><td>Duplicate request id: [{requestId}]</td></tr><tr><td>31181</td><td>Entitlement [{entitlementId}] is not sellable</td></tr><tr><td>31182</td><td>Entitlement [{entitlementId}] already sold</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type SellUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SellUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell][%d] sellUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *SellUserEntitlementConflict) ToJSONString() string {
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

func (o *SellUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SellUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
