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

// AdminCreateTopicReader is a Reader for the AdminCreateTopic structure.
type AdminCreateTopicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateTopicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminCreateTopicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/admin/namespaces/{namespace}/topic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateTopicOK creates a AdminCreateTopicOK with default headers values
func NewAdminCreateTopicOK() *AdminCreateTopicOK {
	return &AdminCreateTopicOK{}
}

/*AdminCreateTopicOK handles this case with default header values.


 */
type AdminCreateTopicOK struct {
	Payload *chatclientmodels.APICreateTopicResponse
}

func (o *AdminCreateTopicOK) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic][%d] adminCreateTopicOK  %+v", 200, o.ToJSONString())
}

func (o *AdminCreateTopicOK) ToJSONString() string {
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

func (o *AdminCreateTopicOK) GetPayload() *chatclientmodels.APICreateTopicResponse {
	return o.Payload
}

func (o *AdminCreateTopicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
