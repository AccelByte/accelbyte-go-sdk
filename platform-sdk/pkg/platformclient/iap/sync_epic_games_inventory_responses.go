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

// SyncEpicGamesInventoryReader is a Reader for the SyncEpicGamesInventory structure.
type SyncEpicGamesInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncEpicGamesInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSyncEpicGamesInventoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncEpicGamesInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSyncEpicGamesInventoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncEpicGamesInventoryOK creates a SyncEpicGamesInventoryOK with default headers values
func NewSyncEpicGamesInventoryOK() *SyncEpicGamesInventoryOK {
	return &SyncEpicGamesInventoryOK{}
}

/*SyncEpicGamesInventoryOK handles this case with default header values.

  successful operation
*/
type SyncEpicGamesInventoryOK struct {
	Payload []*platformclientmodels.EpicGamesReconcileResult
}

func (o *SyncEpicGamesInventoryOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync][%d] syncEpicGamesInventoryOK  %+v", 200, o.ToJSONString())
}

func (o *SyncEpicGamesInventoryOK) ToJSONString() string {
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

func (o *SyncEpicGamesInventoryOK) GetPayload() []*platformclientmodels.EpicGamesReconcileResult {
	return o.Payload
}

func (o *SyncEpicGamesInventoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncEpicGamesInventoryBadRequest creates a SyncEpicGamesInventoryBadRequest with default headers values
func NewSyncEpicGamesInventoryBadRequest() *SyncEpicGamesInventoryBadRequest {
	return &SyncEpicGamesInventoryBadRequest{}
}

/*SyncEpicGamesInventoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr></table>
*/
type SyncEpicGamesInventoryBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncEpicGamesInventoryBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync][%d] syncEpicGamesInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncEpicGamesInventoryBadRequest) ToJSONString() string {
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

func (o *SyncEpicGamesInventoryBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncEpicGamesInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSyncEpicGamesInventoryNotFound creates a SyncEpicGamesInventoryNotFound with default headers values
func NewSyncEpicGamesInventoryNotFound() *SyncEpicGamesInventoryNotFound {
	return &SyncEpicGamesInventoryNotFound{}
}

/*SyncEpicGamesInventoryNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39147</td><td>Epic IAP config not found in namespace [{namespace}].</td></tr></table>
*/
type SyncEpicGamesInventoryNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncEpicGamesInventoryNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync][%d] syncEpicGamesInventoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *SyncEpicGamesInventoryNotFound) ToJSONString() string {
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

func (o *SyncEpicGamesInventoryNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncEpicGamesInventoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
