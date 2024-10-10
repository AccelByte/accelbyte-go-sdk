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

// CloneStoreReader is a Reader for the CloneStore structure.
type CloneStoreReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CloneStoreReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCloneStoreOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCloneStoreBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCloneStoreNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/clone returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCloneStoreOK creates a CloneStoreOK with default headers values
func NewCloneStoreOK() *CloneStoreOK {
	return &CloneStoreOK{}
}

/*CloneStoreOK handles this case with default header values.

  successful operation
*/
type CloneStoreOK struct {
	Payload *platformclientmodels.StoreInfo
}

func (o *CloneStoreOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/clone][%d] cloneStoreOK  %+v", 200, o.ToJSONString())
}

func (o *CloneStoreOK) ToJSONString() string {
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

func (o *CloneStoreOK) GetPayload() *platformclientmodels.StoreInfo {
	return o.Payload
}

func (o *CloneStoreOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCloneStoreBadRequest creates a CloneStoreBadRequest with default headers values
func NewCloneStoreBadRequest() *CloneStoreBadRequest {
	return &CloneStoreBadRequest{}
}

/*CloneStoreBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30122</td><td>Store's meta mismatch</td></tr></table>
*/
type CloneStoreBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CloneStoreBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/clone][%d] cloneStoreBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CloneStoreBadRequest) ToJSONString() string {
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

func (o *CloneStoreBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CloneStoreBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCloneStoreNotFound creates a CloneStoreNotFound with default headers values
func NewCloneStoreNotFound() *CloneStoreNotFound {
	return &CloneStoreNotFound{}
}

/*CloneStoreNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CloneStoreNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CloneStoreNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/clone][%d] cloneStoreNotFound  %+v", 404, o.ToJSONString())
}

func (o *CloneStoreNotFound) ToJSONString() string {
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

func (o *CloneStoreNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CloneStoreNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
