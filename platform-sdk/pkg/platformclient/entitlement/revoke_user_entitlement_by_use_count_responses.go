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

// RevokeUserEntitlementByUseCountReader is a Reader for the RevokeUserEntitlementByUseCount structure.
type RevokeUserEntitlementByUseCountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeUserEntitlementByUseCountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeUserEntitlementByUseCountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRevokeUserEntitlementByUseCountNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeUserEntitlementByUseCountOK creates a RevokeUserEntitlementByUseCountOK with default headers values
func NewRevokeUserEntitlementByUseCountOK() *RevokeUserEntitlementByUseCountOK {
	return &RevokeUserEntitlementByUseCountOK{}
}

/*RevokeUserEntitlementByUseCountOK handles this case with default header values.

  successful operation
*/
type RevokeUserEntitlementByUseCountOK struct {
	Payload *platformclientmodels.EntitlementIfc
}

func (o *RevokeUserEntitlementByUseCountOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount][%d] revokeUserEntitlementByUseCountOK  %+v", 200, o.ToJSONString())
}

func (o *RevokeUserEntitlementByUseCountOK) ToJSONString() string {
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

func (o *RevokeUserEntitlementByUseCountOK) GetPayload() *platformclientmodels.EntitlementIfc {
	return o.Payload
}

func (o *RevokeUserEntitlementByUseCountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementIfc)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRevokeUserEntitlementByUseCountNotFound creates a RevokeUserEntitlementByUseCountNotFound with default headers values
func NewRevokeUserEntitlementByUseCountNotFound() *RevokeUserEntitlementByUseCountNotFound {
	return &RevokeUserEntitlementByUseCountNotFound{}
}

/*RevokeUserEntitlementByUseCountNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type RevokeUserEntitlementByUseCountNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RevokeUserEntitlementByUseCountNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount][%d] revokeUserEntitlementByUseCountNotFound  %+v", 404, o.ToJSONString())
}

func (o *RevokeUserEntitlementByUseCountNotFound) ToJSONString() string {
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

func (o *RevokeUserEntitlementByUseCountNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RevokeUserEntitlementByUseCountNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
