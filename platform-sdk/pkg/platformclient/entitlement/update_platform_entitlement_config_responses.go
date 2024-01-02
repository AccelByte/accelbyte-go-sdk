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

// UpdatePlatformEntitlementConfigReader is a Reader for the UpdatePlatformEntitlementConfig structure.
type UpdatePlatformEntitlementConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePlatformEntitlementConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePlatformEntitlementConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePlatformEntitlementConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePlatformEntitlementConfigOK creates a UpdatePlatformEntitlementConfigOK with default headers values
func NewUpdatePlatformEntitlementConfigOK() *UpdatePlatformEntitlementConfigOK {
	return &UpdatePlatformEntitlementConfigOK{}
}

/*UpdatePlatformEntitlementConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePlatformEntitlementConfigOK struct {
	Payload *platformclientmodels.EntitlementPlatformConfigInfo
}

func (o *UpdatePlatformEntitlementConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config][%d] updatePlatformEntitlementConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePlatformEntitlementConfigOK) ToJSONString() string {
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

func (o *UpdatePlatformEntitlementConfigOK) GetPayload() *platformclientmodels.EntitlementPlatformConfigInfo {
	return o.Payload
}

func (o *UpdatePlatformEntitlementConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementPlatformConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePlatformEntitlementConfigNotFound creates a UpdatePlatformEntitlementConfigNotFound with default headers values
func NewUpdatePlatformEntitlementConfigNotFound() *UpdatePlatformEntitlementConfigNotFound {
	return &UpdatePlatformEntitlementConfigNotFound{}
}

/*UpdatePlatformEntitlementConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31147</td><td>Origin [Steam] and System need exist in allowPlatformOrigin</td></tr></table>
*/
type UpdatePlatformEntitlementConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePlatformEntitlementConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config][%d] updatePlatformEntitlementConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePlatformEntitlementConfigNotFound) ToJSONString() string {
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

func (o *UpdatePlatformEntitlementConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePlatformEntitlementConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
