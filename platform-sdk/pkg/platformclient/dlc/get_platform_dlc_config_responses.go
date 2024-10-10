// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

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

// GetPlatformDLCConfigReader is a Reader for the GetPlatformDLCConfig structure.
type GetPlatformDLCConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlatformDLCConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlatformDLCConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPlatformDLCConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/dlc/config/platformMap returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlatformDLCConfigOK creates a GetPlatformDLCConfigOK with default headers values
func NewGetPlatformDLCConfigOK() *GetPlatformDLCConfigOK {
	return &GetPlatformDLCConfigOK{}
}

/*GetPlatformDLCConfigOK handles this case with default header values.

  successful operation
*/
type GetPlatformDLCConfigOK struct {
	Payload *platformclientmodels.PlatformDLCConfigInfo
}

func (o *GetPlatformDLCConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/platformMap][%d] getPlatformDlcConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetPlatformDLCConfigOK) ToJSONString() string {
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

func (o *GetPlatformDLCConfigOK) GetPayload() *platformclientmodels.PlatformDLCConfigInfo {
	return o.Payload
}

func (o *GetPlatformDLCConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformDLCConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPlatformDLCConfigNotFound creates a GetPlatformDLCConfigNotFound with default headers values
func NewGetPlatformDLCConfigNotFound() *GetPlatformDLCConfigNotFound {
	return &GetPlatformDLCConfigNotFound{}
}

/*GetPlatformDLCConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39341</td><td>Platform DLC config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetPlatformDLCConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPlatformDLCConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/platformMap][%d] getPlatformDlcConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPlatformDLCConfigNotFound) ToJSONString() string {
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

func (o *GetPlatformDLCConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPlatformDLCConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
