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

// SyncOculusConsumableEntitlementsReader is a Reader for the SyncOculusConsumableEntitlements structure.
type SyncOculusConsumableEntitlementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncOculusConsumableEntitlementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncOculusConsumableEntitlementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncOculusConsumableEntitlementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncOculusConsumableEntitlementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncOculusConsumableEntitlementsOK creates a SyncOculusConsumableEntitlementsOK with default headers values
func NewSyncOculusConsumableEntitlementsOK() *SyncOculusConsumableEntitlementsOK {
	return &SyncOculusConsumableEntitlementsOK{}
}

/*SyncOculusConsumableEntitlementsOK handles this case with default header values.

  successful operation
*/
type SyncOculusConsumableEntitlementsOK struct {
	Payload []*platformclientmodels.OculusReconcileResult
}

func (o *SyncOculusConsumableEntitlementsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync][%d] syncOculusConsumableEntitlementsOK  %+v", 200, o.ToJSONString())
}

func (o *SyncOculusConsumableEntitlementsOK) ToJSONString() string {
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

func (o *SyncOculusConsumableEntitlementsOK) GetPayload() []*platformclientmodels.OculusReconcileResult {
	return o.Payload
}

func (o *SyncOculusConsumableEntitlementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncOculusConsumableEntitlementsBadRequest creates a SyncOculusConsumableEntitlementsBadRequest with default headers values
func NewSyncOculusConsumableEntitlementsBadRequest() *SyncOculusConsumableEntitlementsBadRequest {
	return &SyncOculusConsumableEntitlementsBadRequest{}
}

/*SyncOculusConsumableEntitlementsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39134</td><td>Invalid Oculus IAP config under namespace [{namespace}]: [{message}]</td></tr><tr><td>39133</td><td>Bad request for Oculus: [{reason}]</td></tr></table>
*/
type SyncOculusConsumableEntitlementsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncOculusConsumableEntitlementsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync][%d] syncOculusConsumableEntitlementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncOculusConsumableEntitlementsBadRequest) ToJSONString() string {
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

func (o *SyncOculusConsumableEntitlementsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncOculusConsumableEntitlementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSyncOculusConsumableEntitlementsNotFound creates a SyncOculusConsumableEntitlementsNotFound with default headers values
func NewSyncOculusConsumableEntitlementsNotFound() *SyncOculusConsumableEntitlementsNotFound {
	return &SyncOculusConsumableEntitlementsNotFound{}
}

/*SyncOculusConsumableEntitlementsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39146</td><td>Oculus IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncOculusConsumableEntitlementsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncOculusConsumableEntitlementsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync][%d] syncOculusConsumableEntitlementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncOculusConsumableEntitlementsNotFound) ToJSONString() string {
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

func (o *SyncOculusConsumableEntitlementsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncOculusConsumableEntitlementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
