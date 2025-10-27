// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// CreateOculusSubscriptionGroupReader is a Reader for the CreateOculusSubscriptionGroup structure.
type CreateOculusSubscriptionGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateOculusSubscriptionGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateOculusSubscriptionGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateOculusSubscriptionGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateOculusSubscriptionGroupOK creates a CreateOculusSubscriptionGroupOK with default headers values
func NewCreateOculusSubscriptionGroupOK() *CreateOculusSubscriptionGroupOK {
	return &CreateOculusSubscriptionGroupOK{}
}

/*CreateOculusSubscriptionGroupOK handles this case with default header values.

  successful operation
*/
type CreateOculusSubscriptionGroupOK struct {
	Payload *platformclientmodels.ThirdPartySubscriptionGroupInfo
}

func (o *CreateOculusSubscriptionGroupOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group][%d] createOculusSubscriptionGroupOK  %+v", 200, o.ToJSONString())
}

func (o *CreateOculusSubscriptionGroupOK) ToJSONString() string {
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

func (o *CreateOculusSubscriptionGroupOK) GetPayload() *platformclientmodels.ThirdPartySubscriptionGroupInfo {
	return o.Payload
}

func (o *CreateOculusSubscriptionGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartySubscriptionGroupInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateOculusSubscriptionGroupConflict creates a CreateOculusSubscriptionGroupConflict with default headers values
func NewCreateOculusSubscriptionGroupConflict() *CreateOculusSubscriptionGroupConflict {
	return &CreateOculusSubscriptionGroupConflict{}
}

/*CreateOculusSubscriptionGroupConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39187</td><td>Duplicated group sku [{sku}] platform [{platform}] in namespace [{namespace}]</td></tr></table>
*/
type CreateOculusSubscriptionGroupConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateOculusSubscriptionGroupConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group][%d] createOculusSubscriptionGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateOculusSubscriptionGroupConflict) ToJSONString() string {
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

func (o *CreateOculusSubscriptionGroupConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateOculusSubscriptionGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
