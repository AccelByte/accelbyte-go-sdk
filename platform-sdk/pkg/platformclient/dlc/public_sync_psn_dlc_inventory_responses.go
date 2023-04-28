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

// PublicSyncPsnDLCInventoryReader is a Reader for the PublicSyncPsnDLCInventory structure.
type PublicSyncPsnDLCInventoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSyncPsnDLCInventoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSyncPsnDLCInventoryNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSyncPsnDLCInventoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSyncPsnDLCInventoryNoContent creates a PublicSyncPsnDLCInventoryNoContent with default headers values
func NewPublicSyncPsnDLCInventoryNoContent() *PublicSyncPsnDLCInventoryNoContent {
	return &PublicSyncPsnDLCInventoryNoContent{}
}

/*PublicSyncPsnDLCInventoryNoContent handles this case with default header values.

  Successful operation
*/
type PublicSyncPsnDLCInventoryNoContent struct {
}

func (o *PublicSyncPsnDLCInventoryNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync][%d] publicSyncPsnDlcInventoryNoContent ", 204)
}

func (o *PublicSyncPsnDLCInventoryNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSyncPsnDLCInventoryBadRequest creates a PublicSyncPsnDLCInventoryBadRequest with default headers values
func NewPublicSyncPsnDLCInventoryBadRequest() *PublicSyncPsnDLCInventoryBadRequest {
	return &PublicSyncPsnDLCInventoryBadRequest{}
}

/*PublicSyncPsnDLCInventoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39127</td><td>Invalid service label [{serviceLabel}]</td></tr>
*/
type PublicSyncPsnDLCInventoryBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSyncPsnDLCInventoryBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync][%d] publicSyncPsnDlcInventoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSyncPsnDLCInventoryBadRequest) ToJSONString() string {
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

func (o *PublicSyncPsnDLCInventoryBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSyncPsnDLCInventoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
