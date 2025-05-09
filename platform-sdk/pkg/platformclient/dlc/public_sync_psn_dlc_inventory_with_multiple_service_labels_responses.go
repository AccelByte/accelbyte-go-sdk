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

// PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader is a Reader for the PublicSyncPsnDLCInventoryWithMultipleServiceLabels structure.
type PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent creates a PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent with default headers values
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent() *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent {
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent{}
}

/*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent handles this case with default header values.

  Successful operation
*/
type PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent struct {
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels][%d] publicSyncPsnDlcInventoryWithMultipleServiceLabelsNoContent ", 204)
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest creates a PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest with default headers values
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest() *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest {
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest{}
}

/*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39127</td><td>Invalid service label [{serviceLabel}]</td></tr><tr><td>39132</td><td>Bad request for playstation under namespace [{namespace}], reason: [{reason}].</td></tr></table>
*/
type PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels][%d] publicSyncPsnDlcInventoryWithMultipleServiceLabelsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest) ToJSONString() string {
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

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound creates a PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound with default headers values
func NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound() *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound {
	return &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound{}
}

/*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39143</td><td>PlayStation IAP config not found in namespace [{namespace}]</td></tr></table>
*/
type PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels][%d] publicSyncPsnDlcInventoryWithMultipleServiceLabelsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound) ToJSONString() string {
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

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
