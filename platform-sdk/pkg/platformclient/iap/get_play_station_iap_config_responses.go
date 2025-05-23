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

// GetPlayStationIAPConfigReader is a Reader for the GetPlayStationIAPConfig structure.
type GetPlayStationIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayStationIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayStationIAPConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/iap/config/playstation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayStationIAPConfigOK creates a GetPlayStationIAPConfigOK with default headers values
func NewGetPlayStationIAPConfigOK() *GetPlayStationIAPConfigOK {
	return &GetPlayStationIAPConfigOK{}
}

/*GetPlayStationIAPConfigOK handles this case with default header values.

  successful operation
*/
type GetPlayStationIAPConfigOK struct {
	Payload *platformclientmodels.PlayStationIAPConfigInfo
}

func (o *GetPlayStationIAPConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/config/playstation][%d] getPlayStationIapConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetPlayStationIAPConfigOK) ToJSONString() string {
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

func (o *GetPlayStationIAPConfigOK) GetPayload() *platformclientmodels.PlayStationIAPConfigInfo {
	return o.Payload
}

func (o *GetPlayStationIAPConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlayStationIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
