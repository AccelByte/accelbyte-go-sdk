// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// UpdateTwitchIAPConfigReader is a Reader for the UpdateTwitchIAPConfig structure.
type UpdateTwitchIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateTwitchIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateTwitchIAPConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/config/twitch returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateTwitchIAPConfigOK creates a UpdateTwitchIAPConfigOK with default headers values
func NewUpdateTwitchIAPConfigOK() *UpdateTwitchIAPConfigOK {
	return &UpdateTwitchIAPConfigOK{}
}

/*UpdateTwitchIAPConfigOK handles this case with default header values.

  successful operation
*/
type UpdateTwitchIAPConfigOK struct {
	Payload *platformclientmodels.TwitchIAPConfigInfo
}

func (o *UpdateTwitchIAPConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/twitch][%d] updateTwitchIapConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateTwitchIAPConfigOK) ToJSONString() string {
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

func (o *UpdateTwitchIAPConfigOK) GetPayload() *platformclientmodels.TwitchIAPConfigInfo {
	return o.Payload
}

func (o *UpdateTwitchIAPConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TwitchIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
