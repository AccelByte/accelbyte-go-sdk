// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// AdminSyncOculusSubscriptionsReader is a Reader for the AdminSyncOculusSubscriptions structure.
type AdminSyncOculusSubscriptionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncOculusSubscriptionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncOculusSubscriptionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncOculusSubscriptionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncOculusSubscriptionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncOculusSubscriptionsOK creates a AdminSyncOculusSubscriptionsOK with default headers values
func NewAdminSyncOculusSubscriptionsOK() *AdminSyncOculusSubscriptionsOK {
	return &AdminSyncOculusSubscriptionsOK{}
}

/*AdminSyncOculusSubscriptionsOK handles this case with default header values.

  successful operation
*/
type AdminSyncOculusSubscriptionsOK struct {
	Payload []*platformclientmodels.ThirdPartySubscriptionTransactionInfo
}

func (o *AdminSyncOculusSubscriptionsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] adminSyncOculusSubscriptionsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSyncOculusSubscriptionsOK) ToJSONString() string {
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

func (o *AdminSyncOculusSubscriptionsOK) GetPayload() []*platformclientmodels.ThirdPartySubscriptionTransactionInfo {
	return o.Payload
}

func (o *AdminSyncOculusSubscriptionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSyncOculusSubscriptionsBadRequest creates a AdminSyncOculusSubscriptionsBadRequest with default headers values
func NewAdminSyncOculusSubscriptionsBadRequest() *AdminSyncOculusSubscriptionsBadRequest {
	return &AdminSyncOculusSubscriptionsBadRequest{}
}

/*AdminSyncOculusSubscriptionsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39134</td><td>Invalid Oculus IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39133</td><td>Bad request for Oculus: [{reason}]</td></tr></table>
*/
type AdminSyncOculusSubscriptionsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncOculusSubscriptionsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] adminSyncOculusSubscriptionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncOculusSubscriptionsBadRequest) ToJSONString() string {
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

func (o *AdminSyncOculusSubscriptionsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncOculusSubscriptionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncOculusSubscriptionsNotFound creates a AdminSyncOculusSubscriptionsNotFound with default headers values
func NewAdminSyncOculusSubscriptionsNotFound() *AdminSyncOculusSubscriptionsNotFound {
	return &AdminSyncOculusSubscriptionsNotFound{}
}

/*AdminSyncOculusSubscriptionsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39146</td><td>Oculus IAP config not found in namespace [{namespace}].</td></tr><tr><td>39154</td><td>Meta Quest Subscription Sku [{sku}] not found in namespace [{namespace}] config, please config this Subscription sku in subscription group.</td></tr></table>
*/
type AdminSyncOculusSubscriptionsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminSyncOculusSubscriptionsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/oculus/subscription/sync][%d] adminSyncOculusSubscriptionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncOculusSubscriptionsNotFound) ToJSONString() string {
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

func (o *AdminSyncOculusSubscriptionsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminSyncOculusSubscriptionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
