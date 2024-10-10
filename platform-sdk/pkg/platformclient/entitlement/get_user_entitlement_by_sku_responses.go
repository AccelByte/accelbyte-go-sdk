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

// GetUserEntitlementBySkuReader is a Reader for the GetUserEntitlementBySku structure.
type GetUserEntitlementBySkuReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserEntitlementBySkuReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserEntitlementBySkuOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserEntitlementBySkuNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserEntitlementBySkuOK creates a GetUserEntitlementBySkuOK with default headers values
func NewGetUserEntitlementBySkuOK() *GetUserEntitlementBySkuOK {
	return &GetUserEntitlementBySkuOK{}
}

/*GetUserEntitlementBySkuOK handles this case with default header values.

  successful operation
*/
type GetUserEntitlementBySkuOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *GetUserEntitlementBySkuOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku][%d] getUserEntitlementBySkuOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserEntitlementBySkuOK) ToJSONString() string {
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

func (o *GetUserEntitlementBySkuOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *GetUserEntitlementBySkuOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserEntitlementBySkuNotFound creates a GetUserEntitlementBySkuNotFound with default headers values
func NewGetUserEntitlementBySkuNotFound() *GetUserEntitlementBySkuNotFound {
	return &GetUserEntitlementBySkuNotFound{}
}

/*GetUserEntitlementBySkuNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31143</td><td>Entitlement with sku [{sku}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetUserEntitlementBySkuNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetUserEntitlementBySkuNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku][%d] getUserEntitlementBySkuNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserEntitlementBySkuNotFound) ToJSONString() string {
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

func (o *GetUserEntitlementBySkuNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserEntitlementBySkuNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
