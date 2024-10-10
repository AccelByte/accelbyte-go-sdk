// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// PublishSelectedReader is a Reader for the PublishSelected structure.
type PublishSelectedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublishSelectedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublishSelectedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublishSelectedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublishSelectedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublishSelectedConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublishSelectedOK creates a PublishSelectedOK with default headers values
func NewPublishSelectedOK() *PublishSelectedOK {
	return &PublishSelectedOK{}
}

/*PublishSelectedOK handles this case with default header values.

  successful operation
*/
type PublishSelectedOK struct {
	Payload *platformclientmodels.StoreInfo
}

func (o *PublishSelectedOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected][%d] publishSelectedOK  %+v", 200, o.ToJSONString())
}

func (o *PublishSelectedOK) ToJSONString() string {
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

func (o *PublishSelectedOK) GetPayload() *platformclientmodels.StoreInfo {
	return o.Payload
}

func (o *PublishSelectedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.StoreInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishSelectedBadRequest creates a PublishSelectedBadRequest with default headers values
func NewPublishSelectedBadRequest() *PublishSelectedBadRequest {
	return &PublishSelectedBadRequest{}
}

/*PublishSelectedBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30122</td><td>Store's meta mismatch</td></tr></table>
*/
type PublishSelectedBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublishSelectedBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected][%d] publishSelectedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublishSelectedBadRequest) ToJSONString() string {
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

func (o *PublishSelectedBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSelectedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublishSelectedNotFound creates a PublishSelectedNotFound with default headers values
func NewPublishSelectedNotFound() *PublishSelectedNotFound {
	return &PublishSelectedNotFound{}
}

/*PublishSelectedNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublishSelectedNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublishSelectedNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected][%d] publishSelectedNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublishSelectedNotFound) ToJSONString() string {
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

func (o *PublishSelectedNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSelectedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublishSelectedConflict creates a PublishSelectedConflict with default headers values
func NewPublishSelectedConflict() *PublishSelectedConflict {
	return &PublishSelectedConflict{}
}

/*PublishSelectedConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30375</td><td>Item id [{itemId}] of sku [{sku}] is duplicate with un-published deleted item in namespace [{namespace}]</td></tr></table>
*/
type PublishSelectedConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublishSelectedConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected][%d] publishSelectedConflict  %+v", 409, o.ToJSONString())
}

func (o *PublishSelectedConflict) ToJSONString() string {
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

func (o *PublishSelectedConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSelectedConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
