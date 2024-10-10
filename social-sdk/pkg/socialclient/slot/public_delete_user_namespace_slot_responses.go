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

// PublicDeleteUserNamespaceSlotReader is a Reader for the PublicDeleteUserNamespaceSlot structure.
type PublicDeleteUserNamespaceSlotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeleteUserNamespaceSlotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeleteUserNamespaceSlotNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeleteUserNamespaceSlotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeleteUserNamespaceSlotNoContent creates a PublicDeleteUserNamespaceSlotNoContent with default headers values
func NewPublicDeleteUserNamespaceSlotNoContent() *PublicDeleteUserNamespaceSlotNoContent {
	return &PublicDeleteUserNamespaceSlotNoContent{}
}

/*PublicDeleteUserNamespaceSlotNoContent handles this case with default header values.

  Successful delete of a slot
*/
type PublicDeleteUserNamespaceSlotNoContent struct {
}

func (o *PublicDeleteUserNamespaceSlotNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicDeleteUserNamespaceSlotNoContent ", 204)
}

func (o *PublicDeleteUserNamespaceSlotNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeleteUserNamespaceSlotNotFound creates a PublicDeleteUserNamespaceSlotNotFound with default headers values
func NewPublicDeleteUserNamespaceSlotNotFound() *PublicDeleteUserNamespaceSlotNotFound {
	return &PublicDeleteUserNamespaceSlotNotFound{}
}

/*PublicDeleteUserNamespaceSlotNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicDeleteUserNamespaceSlotNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicDeleteUserNamespaceSlotNotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicDeleteUserNamespaceSlotNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeleteUserNamespaceSlotNotFound) ToJSONString() string {
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

func (o *PublicDeleteUserNamespaceSlotNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicDeleteUserNamespaceSlotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
