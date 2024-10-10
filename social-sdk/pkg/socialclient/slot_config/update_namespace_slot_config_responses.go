// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot_config

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

// UpdateNamespaceSlotConfigReader is a Reader for the UpdateNamespaceSlotConfig structure.
type UpdateNamespaceSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateNamespaceSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateNamespaceSlotConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/admin/namespaces/{namespace}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateNamespaceSlotConfigOK creates a UpdateNamespaceSlotConfigOK with default headers values
func NewUpdateNamespaceSlotConfigOK() *UpdateNamespaceSlotConfigOK {
	return &UpdateNamespaceSlotConfigOK{}
}

/*UpdateNamespaceSlotConfigOK handles this case with default header values.

  successful operation
*/
type UpdateNamespaceSlotConfigOK struct {
	Payload *socialclientmodels.NamespaceSlotConfigInfo
}

func (o *UpdateNamespaceSlotConfigOK) Error() string {
	return fmt.Sprintf("[PUT /social/admin/namespaces/{namespace}/config][%d] updateNamespaceSlotConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateNamespaceSlotConfigOK) ToJSONString() string {
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

func (o *UpdateNamespaceSlotConfigOK) GetPayload() *socialclientmodels.NamespaceSlotConfigInfo {
	return o.Payload
}

func (o *UpdateNamespaceSlotConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.NamespaceSlotConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
