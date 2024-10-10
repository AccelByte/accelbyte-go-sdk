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

// PublicGetSlotDataReader is a Reader for the PublicGetSlotData structure.
type PublicGetSlotDataReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetSlotDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetSlotDataOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetSlotDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetSlotDataOK creates a PublicGetSlotDataOK with default headers values
func NewPublicGetSlotDataOK(writer io.Writer) *PublicGetSlotDataOK {
	return &PublicGetSlotDataOK{
		Payload: writer,
	}
}

/*PublicGetSlotDataOK handles this case with default header values.

  Successful operation
*/
type PublicGetSlotDataOK struct {
	Payload io.Writer
}

func (o *PublicGetSlotDataOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicGetSlotDataOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetSlotDataOK) ToJSONString() string {
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

func (o *PublicGetSlotDataOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *PublicGetSlotDataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetSlotDataNotFound creates a PublicGetSlotDataNotFound with default headers values
func NewPublicGetSlotDataNotFound() *PublicGetSlotDataNotFound {
	return &PublicGetSlotDataNotFound{}
}

/*PublicGetSlotDataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicGetSlotDataNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetSlotDataNotFound) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicGetSlotDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetSlotDataNotFound) ToJSONString() string {
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

func (o *PublicGetSlotDataNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetSlotDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
