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

// GetNamespaceSlotConfigReader is a Reader for the GetNamespaceSlotConfig structure.
type GetNamespaceSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNamespaceSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNamespaceSlotConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/admin/namespaces/{namespace}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNamespaceSlotConfigOK creates a GetNamespaceSlotConfigOK with default headers values
func NewGetNamespaceSlotConfigOK() *GetNamespaceSlotConfigOK {
	return &GetNamespaceSlotConfigOK{}
}

/*GetNamespaceSlotConfigOK handles this case with default header values.

  successful operation
*/
type GetNamespaceSlotConfigOK struct {
	Payload *socialclientmodels.NamespaceSlotConfigInfo
}

func (o *GetNamespaceSlotConfigOK) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/config][%d] getNamespaceSlotConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetNamespaceSlotConfigOK) ToJSONString() string {
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

func (o *GetNamespaceSlotConfigOK) GetPayload() *socialclientmodels.NamespaceSlotConfigInfo {
	return o.Payload
}

func (o *GetNamespaceSlotConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
