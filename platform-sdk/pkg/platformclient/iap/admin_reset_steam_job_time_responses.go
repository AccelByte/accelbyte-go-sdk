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

// AdminResetSteamJobTimeReader is a Reader for the AdminResetSteamJobTime structure.
type AdminResetSteamJobTimeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetSteamJobTimeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminResetSteamJobTimeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/steam/job/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetSteamJobTimeOK creates a AdminResetSteamJobTimeOK with default headers values
func NewAdminResetSteamJobTimeOK() *AdminResetSteamJobTimeOK {
	return &AdminResetSteamJobTimeOK{}
}

/*AdminResetSteamJobTimeOK handles this case with default header values.

  successful operation
*/
type AdminResetSteamJobTimeOK struct {
	Payload *platformclientmodels.SteamReportJobInfo
}

func (o *AdminResetSteamJobTimeOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/job/reset][%d] adminResetSteamJobTimeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminResetSteamJobTimeOK) ToJSONString() string {
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

func (o *AdminResetSteamJobTimeOK) GetPayload() *platformclientmodels.SteamReportJobInfo {
	return o.Payload
}

func (o *AdminResetSteamJobTimeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SteamReportJobInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
