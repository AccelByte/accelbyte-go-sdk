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

// EnableUserEntitlementReader is a Reader for the EnableUserEntitlement structure.
type EnableUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnableUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEnableUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewEnableUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewEnableUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnableUserEntitlementOK creates a EnableUserEntitlementOK with default headers values
func NewEnableUserEntitlementOK() *EnableUserEntitlementOK {
	return &EnableUserEntitlementOK{}
}

/*EnableUserEntitlementOK handles this case with default header values.

  successful operation
*/
type EnableUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *EnableUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable][%d] enableUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *EnableUserEntitlementOK) ToJSONString() string {
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

func (o *EnableUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *EnableUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnableUserEntitlementNotFound creates a EnableUserEntitlementNotFound with default headers values
func NewEnableUserEntitlementNotFound() *EnableUserEntitlementNotFound {
	return &EnableUserEntitlementNotFound{}
}

/*EnableUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type EnableUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *EnableUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable][%d] enableUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *EnableUserEntitlementNotFound) ToJSONString() string {
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

func (o *EnableUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *EnableUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewEnableUserEntitlementConflict creates a EnableUserEntitlementConflict with default headers values
func NewEnableUserEntitlementConflict() *EnableUserEntitlementConflict {
	return &EnableUserEntitlementConflict{}
}

/*EnableUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>31174</td><td>Entitlement [{entitlementId}] already consumed</td></tr><tr><td>31177</td><td>Permanent item already owned</td></tr><tr><td>31179</td><td>Duplicate entitlement exists</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type EnableUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *EnableUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable][%d] enableUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *EnableUserEntitlementConflict) ToJSONString() string {
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

func (o *EnableUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *EnableUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
