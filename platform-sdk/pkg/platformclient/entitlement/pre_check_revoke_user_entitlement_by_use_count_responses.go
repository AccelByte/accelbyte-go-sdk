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

// PreCheckRevokeUserEntitlementByUseCountReader is a Reader for the PreCheckRevokeUserEntitlementByUseCount structure.
type PreCheckRevokeUserEntitlementByUseCountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PreCheckRevokeUserEntitlementByUseCountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPreCheckRevokeUserEntitlementByUseCountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPreCheckRevokeUserEntitlementByUseCountNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPreCheckRevokeUserEntitlementByUseCountOK creates a PreCheckRevokeUserEntitlementByUseCountOK with default headers values
func NewPreCheckRevokeUserEntitlementByUseCountOK() *PreCheckRevokeUserEntitlementByUseCountOK {
	return &PreCheckRevokeUserEntitlementByUseCountOK{}
}

/*PreCheckRevokeUserEntitlementByUseCountOK handles this case with default header values.

  successful operation
*/
type PreCheckRevokeUserEntitlementByUseCountOK struct {
	Payload *platformclientmodels.EntitlementPrechekResult
}

func (o *PreCheckRevokeUserEntitlementByUseCountOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck][%d] preCheckRevokeUserEntitlementByUseCountOK  %+v", 200, o.ToJSONString())
}

func (o *PreCheckRevokeUserEntitlementByUseCountOK) ToJSONString() string {
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

func (o *PreCheckRevokeUserEntitlementByUseCountOK) GetPayload() *platformclientmodels.EntitlementPrechekResult {
	return o.Payload
}

func (o *PreCheckRevokeUserEntitlementByUseCountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementPrechekResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPreCheckRevokeUserEntitlementByUseCountNotFound creates a PreCheckRevokeUserEntitlementByUseCountNotFound with default headers values
func NewPreCheckRevokeUserEntitlementByUseCountNotFound() *PreCheckRevokeUserEntitlementByUseCountNotFound {
	return &PreCheckRevokeUserEntitlementByUseCountNotFound{}
}

/*PreCheckRevokeUserEntitlementByUseCountNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PreCheckRevokeUserEntitlementByUseCountNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PreCheckRevokeUserEntitlementByUseCountNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck][%d] preCheckRevokeUserEntitlementByUseCountNotFound  %+v", 404, o.ToJSONString())
}

func (o *PreCheckRevokeUserEntitlementByUseCountNotFound) ToJSONString() string {
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

func (o *PreCheckRevokeUserEntitlementByUseCountNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PreCheckRevokeUserEntitlementByUseCountNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
