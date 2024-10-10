// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// PublicUpdateUserNamespaceSlotMetadataReader is a Reader for the PublicUpdateUserNamespaceSlotMetadata structure.
type PublicUpdateUserNamespaceSlotMetadataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserNamespaceSlotMetadataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserNamespaceSlotMetadataOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserNamespaceSlotMetadataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserNamespaceSlotMetadataOK creates a PublicUpdateUserNamespaceSlotMetadataOK with default headers values
func NewPublicUpdateUserNamespaceSlotMetadataOK() *PublicUpdateUserNamespaceSlotMetadataOK {
	return &PublicUpdateUserNamespaceSlotMetadataOK{}
}

/*PublicUpdateUserNamespaceSlotMetadataOK handles this case with default header values.

  successful operation
*/
type PublicUpdateUserNamespaceSlotMetadataOK struct {
	Payload *socialclientmodels.SlotInfo
}

func (o *PublicUpdateUserNamespaceSlotMetadataOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata][%d] publicUpdateUserNamespaceSlotMetadataOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateUserNamespaceSlotMetadataOK) ToJSONString() string {
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

func (o *PublicUpdateUserNamespaceSlotMetadataOK) GetPayload() *socialclientmodels.SlotInfo {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotMetadataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.SlotInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserNamespaceSlotMetadataNotFound creates a PublicUpdateUserNamespaceSlotMetadataNotFound with default headers values
func NewPublicUpdateUserNamespaceSlotMetadataNotFound() *PublicUpdateUserNamespaceSlotMetadataNotFound {
	return &PublicUpdateUserNamespaceSlotMetadataNotFound{}
}

/*PublicUpdateUserNamespaceSlotMetadataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateUserNamespaceSlotMetadataNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateUserNamespaceSlotMetadataNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata][%d] publicUpdateUserNamespaceSlotMetadataNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateUserNamespaceSlotMetadataNotFound) ToJSONString() string {
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

func (o *PublicUpdateUserNamespaceSlotMetadataNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotMetadataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
