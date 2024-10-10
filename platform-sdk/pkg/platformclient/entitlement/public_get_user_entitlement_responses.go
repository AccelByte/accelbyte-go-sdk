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

// PublicGetUserEntitlementReader is a Reader for the PublicGetUserEntitlement structure.
type PublicGetUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserEntitlementOK creates a PublicGetUserEntitlementOK with default headers values
func NewPublicGetUserEntitlementOK() *PublicGetUserEntitlementOK {
	return &PublicGetUserEntitlementOK{}
}

/*PublicGetUserEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicGetUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *PublicGetUserEntitlementOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] publicGetUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserEntitlementOK) ToJSONString() string {
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

func (o *PublicGetUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *PublicGetUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserEntitlementNotFound creates a PublicGetUserEntitlementNotFound with default headers values
func NewPublicGetUserEntitlementNotFound() *PublicGetUserEntitlementNotFound {
	return &PublicGetUserEntitlementNotFound{}
}

/*PublicGetUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] publicGetUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserEntitlementNotFound) ToJSONString() string {
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

func (o *PublicGetUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
