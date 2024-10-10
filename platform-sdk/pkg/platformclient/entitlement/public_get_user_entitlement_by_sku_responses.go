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

// PublicGetUserEntitlementBySkuReader is a Reader for the PublicGetUserEntitlementBySku structure.
type PublicGetUserEntitlementBySkuReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserEntitlementBySkuReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserEntitlementBySkuOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserEntitlementBySkuNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserEntitlementBySkuOK creates a PublicGetUserEntitlementBySkuOK with default headers values
func NewPublicGetUserEntitlementBySkuOK() *PublicGetUserEntitlementBySkuOK {
	return &PublicGetUserEntitlementBySkuOK{}
}

/*PublicGetUserEntitlementBySkuOK handles this case with default header values.

  successful operation
*/
type PublicGetUserEntitlementBySkuOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *PublicGetUserEntitlementBySkuOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku][%d] publicGetUserEntitlementBySkuOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserEntitlementBySkuOK) ToJSONString() string {
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

func (o *PublicGetUserEntitlementBySkuOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *PublicGetUserEntitlementBySkuOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserEntitlementBySkuNotFound creates a PublicGetUserEntitlementBySkuNotFound with default headers values
func NewPublicGetUserEntitlementBySkuNotFound() *PublicGetUserEntitlementBySkuNotFound {
	return &PublicGetUserEntitlementBySkuNotFound{}
}

/*PublicGetUserEntitlementBySkuNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31143</td><td>Entitlement with sku [{sku}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserEntitlementBySkuNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUserEntitlementBySkuNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku][%d] publicGetUserEntitlementBySkuNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserEntitlementBySkuNotFound) ToJSONString() string {
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

func (o *PublicGetUserEntitlementBySkuNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserEntitlementBySkuNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
