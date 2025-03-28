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

// PublicGetUserAppEntitlementByAppIDReader is a Reader for the PublicGetUserAppEntitlementByAppID structure.
type PublicGetUserAppEntitlementByAppIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserAppEntitlementByAppIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserAppEntitlementByAppIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserAppEntitlementByAppIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserAppEntitlementByAppIDOK creates a PublicGetUserAppEntitlementByAppIDOK with default headers values
func NewPublicGetUserAppEntitlementByAppIDOK() *PublicGetUserAppEntitlementByAppIDOK {
	return &PublicGetUserAppEntitlementByAppIDOK{}
}

/*PublicGetUserAppEntitlementByAppIDOK handles this case with default header values.

  successful operation
*/
type PublicGetUserAppEntitlementByAppIDOK struct {
	Payload *platformclientmodels.AppEntitlementInfo
}

func (o *PublicGetUserAppEntitlementByAppIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId][%d] publicGetUserAppEntitlementByAppIdOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserAppEntitlementByAppIDOK) ToJSONString() string {
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

func (o *PublicGetUserAppEntitlementByAppIDOK) GetPayload() *platformclientmodels.AppEntitlementInfo {
	return o.Payload
}

func (o *PublicGetUserAppEntitlementByAppIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.AppEntitlementInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserAppEntitlementByAppIDNotFound creates a PublicGetUserAppEntitlementByAppIDNotFound with default headers values
func NewPublicGetUserAppEntitlementByAppIDNotFound() *PublicGetUserAppEntitlementByAppIDNotFound {
	return &PublicGetUserAppEntitlementByAppIDNotFound{}
}

/*PublicGetUserAppEntitlementByAppIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31142</td><td>Entitlement with appId [{appId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserAppEntitlementByAppIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUserAppEntitlementByAppIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId][%d] publicGetUserAppEntitlementByAppIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserAppEntitlementByAppIDNotFound) ToJSONString() string {
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

func (o *PublicGetUserAppEntitlementByAppIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserAppEntitlementByAppIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
