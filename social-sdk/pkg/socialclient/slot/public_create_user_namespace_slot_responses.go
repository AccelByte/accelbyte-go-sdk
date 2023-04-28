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

// PublicCreateUserNamespaceSlotReader is a Reader for the PublicCreateUserNamespaceSlot structure.
type PublicCreateUserNamespaceSlotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserNamespaceSlotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserNamespaceSlotCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateUserNamespaceSlotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserNamespaceSlotConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/public/namespaces/{namespace}/users/{userId}/slots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserNamespaceSlotCreated creates a PublicCreateUserNamespaceSlotCreated with default headers values
func NewPublicCreateUserNamespaceSlotCreated() *PublicCreateUserNamespaceSlotCreated {
	return &PublicCreateUserNamespaceSlotCreated{}
}

/*PublicCreateUserNamespaceSlotCreated handles this case with default header values.

  Successful create of a slot
*/
type PublicCreateUserNamespaceSlotCreated struct {
}

func (o *PublicCreateUserNamespaceSlotCreated) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/slots][%d] publicCreateUserNamespaceSlotCreated ", 201)
}

func (o *PublicCreateUserNamespaceSlotCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCreateUserNamespaceSlotBadRequest creates a PublicCreateUserNamespaceSlotBadRequest with default headers values
func NewPublicCreateUserNamespaceSlotBadRequest() *PublicCreateUserNamespaceSlotBadRequest {
	return &PublicCreateUserNamespaceSlotBadRequest{}
}

/*PublicCreateUserNamespaceSlotBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12121</td><td>Checksum mismatch for [{filename}]</td></tr><tr><td>12122</td><td>[{filename}] exceeds the upload limit size of [{sizeLimit}] bytes</td></tr></table>
*/
type PublicCreateUserNamespaceSlotBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserNamespaceSlotBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/slots][%d] publicCreateUserNamespaceSlotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateUserNamespaceSlotBadRequest) ToJSONString() string {
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

func (o *PublicCreateUserNamespaceSlotBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserNamespaceSlotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserNamespaceSlotConflict creates a PublicCreateUserNamespaceSlotConflict with default headers values
func NewPublicCreateUserNamespaceSlotConflict() *PublicCreateUserNamespaceSlotConflict {
	return &PublicCreateUserNamespaceSlotConflict{}
}

/*PublicCreateUserNamespaceSlotConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12171</td><td>User [{userId}] exceed max slot count [{maxCount}] in namespace [{namespace}]</td></tr></table>
*/
type PublicCreateUserNamespaceSlotConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicCreateUserNamespaceSlotConflict) Error() string {
	return fmt.Sprintf("[POST /social/public/namespaces/{namespace}/users/{userId}/slots][%d] publicCreateUserNamespaceSlotConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCreateUserNamespaceSlotConflict) ToJSONString() string {
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

func (o *PublicCreateUserNamespaceSlotConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserNamespaceSlotConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
