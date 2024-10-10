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

// UpdateAppleP8FileReader is a Reader for the UpdateAppleP8File structure.
type UpdateAppleP8FileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAppleP8FileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateAppleP8FileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/config/apple/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAppleP8FileOK creates a UpdateAppleP8FileOK with default headers values
func NewUpdateAppleP8FileOK() *UpdateAppleP8FileOK {
	return &UpdateAppleP8FileOK{}
}

/*UpdateAppleP8FileOK handles this case with default header values.

  successful operation
*/
type UpdateAppleP8FileOK struct {
	Payload *platformclientmodels.AppleIAPConfigInfo
}

func (o *UpdateAppleP8FileOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/apple/cert][%d] updateAppleP8FileOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateAppleP8FileOK) ToJSONString() string {
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

func (o *UpdateAppleP8FileOK) GetPayload() *platformclientmodels.AppleIAPConfigInfo {
	return o.Payload
}

func (o *UpdateAppleP8FileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.AppleIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
