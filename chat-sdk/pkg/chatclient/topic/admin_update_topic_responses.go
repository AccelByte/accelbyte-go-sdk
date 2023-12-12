// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// AdminUpdateTopicReader is a Reader for the AdminUpdateTopic structure.
type AdminUpdateTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /chat/admin/namespaces/{namespace}/topic/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateTopicOK creates a AdminUpdateTopicOK with default headers values
func NewAdminUpdateTopicOK() *AdminUpdateTopicOK {
	return &AdminUpdateTopicOK{}
}

/*AdminUpdateTopicOK handles this case with default header values.


 */
type AdminUpdateTopicOK struct {
	Payload *chatclientmodels.APICreateTopicResponse
}

func (o *AdminUpdateTopicOK) Error() string {
	return fmt.Sprintf("[PUT /chat/admin/namespaces/{namespace}/topic/{topic}][%d] adminUpdateTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateTopicOK) ToJSONString() string {
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

func (o *AdminUpdateTopicOK) GetPayload() *chatclientmodels.APICreateTopicResponse {
	return o.Payload
}

func (o *AdminUpdateTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.APICreateTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
