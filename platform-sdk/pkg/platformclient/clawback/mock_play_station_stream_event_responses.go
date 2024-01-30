// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clawback

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

// MockPlayStationStreamEventReader is a Reader for the MockPlayStationStreamEvent structure.
type MockPlayStationStreamEventReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MockPlayStationStreamEventReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMockPlayStationStreamEventOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMockPlayStationStreamEventOK creates a MockPlayStationStreamEventOK with default headers values
func NewMockPlayStationStreamEventOK() *MockPlayStationStreamEventOK {
	return &MockPlayStationStreamEventOK{}
}

/*MockPlayStationStreamEventOK handles this case with default header values.

  successful operation
*/
type MockPlayStationStreamEventOK struct {
	Payload *platformclientmodels.ClawbackInfo
}

func (o *MockPlayStationStreamEventOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock][%d] mockPlayStationStreamEventOK  %+v", 200, o.ToJSONString())
}

func (o *MockPlayStationStreamEventOK) ToJSONString() string {
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

func (o *MockPlayStationStreamEventOK) GetPayload() *platformclientmodels.ClawbackInfo {
	return o.Payload
}

func (o *MockPlayStationStreamEventOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ClawbackInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
