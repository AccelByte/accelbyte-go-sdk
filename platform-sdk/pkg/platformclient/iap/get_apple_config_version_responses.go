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

// GetAppleConfigVersionReader is a Reader for the GetAppleConfigVersion structure.
type GetAppleConfigVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAppleConfigVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAppleConfigVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAppleConfigVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/iap/apple/config/version returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAppleConfigVersionOK creates a GetAppleConfigVersionOK with default headers values
func NewGetAppleConfigVersionOK() *GetAppleConfigVersionOK {
	return &GetAppleConfigVersionOK{}
}

/*GetAppleConfigVersionOK handles this case with default header values.

  successful operation
*/
type GetAppleConfigVersionOK struct {
	Payload *platformclientmodels.AppleIAPConfigVersionInfo
}

func (o *GetAppleConfigVersionOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/iap/apple/config/version][%d] getAppleConfigVersionOK  %+v", 200, o.ToJSONString())
}

func (o *GetAppleConfigVersionOK) ToJSONString() string {
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

func (o *GetAppleConfigVersionOK) GetPayload() *platformclientmodels.AppleIAPConfigVersionInfo {
	return o.Payload
}

func (o *GetAppleConfigVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.AppleIAPConfigVersionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAppleConfigVersionNotFound creates a GetAppleConfigVersionNotFound with default headers values
func NewGetAppleConfigVersionNotFound() *GetAppleConfigVersionNotFound {
	return &GetAppleConfigVersionNotFound{}
}

/*GetAppleConfigVersionNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39142</td><td>Apple IAP config not found in namespace [{namespace}]</td></tr></table>
*/
type GetAppleConfigVersionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetAppleConfigVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/iap/apple/config/version][%d] getAppleConfigVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAppleConfigVersionNotFound) ToJSONString() string {
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

func (o *GetAppleConfigVersionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetAppleConfigVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
