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

// RollbackPublishedStoreReader is a Reader for the RollbackPublishedStore structure.
type RollbackPublishedStoreReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RollbackPublishedStoreReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRollbackPublishedStoreOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRollbackPublishedStoreNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/published/rollback returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRollbackPublishedStoreOK creates a RollbackPublishedStoreOK with default headers values
func NewRollbackPublishedStoreOK() *RollbackPublishedStoreOK {
	return &RollbackPublishedStoreOK{}
}

/*RollbackPublishedStoreOK handles this case with default header values.

  successful operation
*/
type RollbackPublishedStoreOK struct {
	Payload *platformclientmodels.StoreInfo
}

func (o *RollbackPublishedStoreOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/published/rollback][%d] rollbackPublishedStoreOK  %+v", 200, o.ToJSONString())
}

func (o *RollbackPublishedStoreOK) ToJSONString() string {
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

func (o *RollbackPublishedStoreOK) GetPayload() *platformclientmodels.StoreInfo {
	return o.Payload
}

func (o *RollbackPublishedStoreOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.StoreInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackPublishedStoreNotFound creates a RollbackPublishedStoreNotFound with default headers values
func NewRollbackPublishedStoreNotFound() *RollbackPublishedStoreNotFound {
	return &RollbackPublishedStoreNotFound{}
}

/*RollbackPublishedStoreNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30143</td><td>Published store [{storeId}] backup doest not exist in namespace [{namespace}]</td></tr></table>
*/
type RollbackPublishedStoreNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RollbackPublishedStoreNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/published/rollback][%d] rollbackPublishedStoreNotFound  %+v", 404, o.ToJSONString())
}

func (o *RollbackPublishedStoreNotFound) ToJSONString() string {
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

func (o *RollbackPublishedStoreNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RollbackPublishedStoreNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
