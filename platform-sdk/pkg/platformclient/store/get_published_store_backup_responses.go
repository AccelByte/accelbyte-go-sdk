// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// GetPublishedStoreBackupReader is a Reader for the GetPublishedStoreBackup structure.
type GetPublishedStoreBackupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPublishedStoreBackupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPublishedStoreBackupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPublishedStoreBackupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/stores/published/backup returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPublishedStoreBackupOK creates a GetPublishedStoreBackupOK with default headers values
func NewGetPublishedStoreBackupOK() *GetPublishedStoreBackupOK {
	return &GetPublishedStoreBackupOK{}
}

/*GetPublishedStoreBackupOK handles this case with default header values.

  successful operation
*/
type GetPublishedStoreBackupOK struct {
	Payload *platformclientmodels.StoreBackupInfo
}

func (o *GetPublishedStoreBackupOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/stores/published/backup][%d] getPublishedStoreBackupOK  %+v", 200, o.ToJSONString())
}

func (o *GetPublishedStoreBackupOK) ToJSONString() string {
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

func (o *GetPublishedStoreBackupOK) GetPayload() *platformclientmodels.StoreBackupInfo {
	return o.Payload
}

func (o *GetPublishedStoreBackupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.StoreBackupInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublishedStoreBackupNotFound creates a GetPublishedStoreBackupNotFound with default headers values
func NewGetPublishedStoreBackupNotFound() *GetPublishedStoreBackupNotFound {
	return &GetPublishedStoreBackupNotFound{}
}

/*GetPublishedStoreBackupNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30143</td><td>Published store [{storeId}] backup does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetPublishedStoreBackupNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPublishedStoreBackupNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/stores/published/backup][%d] getPublishedStoreBackupNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPublishedStoreBackupNotFound) ToJSONString() string {
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

func (o *GetPublishedStoreBackupNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPublishedStoreBackupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
