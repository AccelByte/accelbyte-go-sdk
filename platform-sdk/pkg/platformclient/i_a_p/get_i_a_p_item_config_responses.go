// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// GetIAPItemConfigReader is a Reader for the GetIAPItemConfig structure.
type GetIAPItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetIAPItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetIAPItemConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetIAPItemConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/iap/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetIAPItemConfigOK creates a GetIAPItemConfigOK with default headers values
func NewGetIAPItemConfigOK() *GetIAPItemConfigOK {
	return &GetIAPItemConfigOK{}
}

/*GetIAPItemConfigOK handles this case with default header values.

  successful operation
*/
type GetIAPItemConfigOK struct {
	Payload *platformclientmodels.IAPItemConfigInfo
}

func (o *GetIAPItemConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/config/item][%d] getIAPItemConfigOK  %+v", 200, o.Payload)
}

func (o *GetIAPItemConfigOK) GetPayload() *platformclientmodels.IAPItemConfigInfo {
	return o.Payload
}

func (o *GetIAPItemConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.IAPItemConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetIAPItemConfigNotFound creates a GetIAPItemConfigNotFound with default headers values
func NewGetIAPItemConfigNotFound() *GetIAPItemConfigNotFound {
	return &GetIAPItemConfigNotFound{}
}

/*GetIAPItemConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39341</td><td>IAP item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetIAPItemConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetIAPItemConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/iap/config/item][%d] getIAPItemConfigNotFound  %+v", 404, o.Payload)
}

func (o *GetIAPItemConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetIAPItemConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
