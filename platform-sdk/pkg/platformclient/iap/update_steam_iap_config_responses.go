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

// UpdateSteamIAPConfigReader is a Reader for the UpdateSteamIAPConfig structure.
type UpdateSteamIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSteamIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSteamIAPConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSteamIAPConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSteamIAPConfigOK creates a UpdateSteamIAPConfigOK with default headers values
func NewUpdateSteamIAPConfigOK() *UpdateSteamIAPConfigOK {
	return &UpdateSteamIAPConfigOK{}
}

/*UpdateSteamIAPConfigOK handles this case with default header values.

  successful operation
*/
type UpdateSteamIAPConfigOK struct {
	Payload *platformclientmodels.SteamIAPConfigInfo
}

func (o *UpdateSteamIAPConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/steam][%d] updateSteamIapConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSteamIAPConfigOK) ToJSONString() string {
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

func (o *UpdateSteamIAPConfigOK) GetPayload() *platformclientmodels.SteamIAPConfigInfo {
	return o.Payload
}

func (o *UpdateSteamIAPConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SteamIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSteamIAPConfigBadRequest creates a UpdateSteamIAPConfigBadRequest with default headers values
func NewUpdateSteamIAPConfigBadRequest() *UpdateSteamIAPConfigBadRequest {
	return &UpdateSteamIAPConfigBadRequest{}
}

/*UpdateSteamIAPConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39128</td><td>Steam publisher key is invalid</td></tr><tr><td>39129</td><td>Steam app id is invalid</td></tr></table>
*/
type UpdateSteamIAPConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateSteamIAPConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/steam][%d] updateSteamIapConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSteamIAPConfigBadRequest) ToJSONString() string {
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

func (o *UpdateSteamIAPConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateSteamIAPConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
