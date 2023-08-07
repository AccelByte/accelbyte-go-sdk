// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// SyncOculusDLCReader is a Reader for the SyncOculusDLC structure.
type SyncOculusDLCReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SyncOculusDLCReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSyncOculusDLCNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSyncOculusDLCBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSyncOculusDLCNoContent creates a SyncOculusDLCNoContent with default headers values
func NewSyncOculusDLCNoContent() *SyncOculusDLCNoContent {
	return &SyncOculusDLCNoContent{}
}

/*SyncOculusDLCNoContent handles this case with default header values.

  Successful operation
*/
type SyncOculusDLCNoContent struct {
}

func (o *SyncOculusDLCNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync][%d] syncOculusDlcNoContent ", 204)
}

func (o *SyncOculusDLCNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSyncOculusDLCBadRequest creates a SyncOculusDLCBadRequest with default headers values
func NewSyncOculusDLCBadRequest() *SyncOculusDLCBadRequest {
	return &SyncOculusDLCBadRequest{}
}

/*SyncOculusDLCBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr>
*/
type SyncOculusDLCBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SyncOculusDLCBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync][%d] syncOculusDlcBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SyncOculusDLCBadRequest) ToJSONString() string {
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

func (o *SyncOculusDLCBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SyncOculusDLCBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
