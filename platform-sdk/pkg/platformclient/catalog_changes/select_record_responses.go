// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// SelectRecordReader is a Reader for the SelectRecord structure.
type SelectRecordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SelectRecordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSelectRecordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSelectRecordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSelectRecordNoContent creates a SelectRecordNoContent with default headers values
func NewSelectRecordNoContent() *SelectRecordNoContent {
	return &SelectRecordNoContent{}
}

/*SelectRecordNoContent handles this case with default header values.

  No Content
*/
type SelectRecordNoContent struct {
}

func (o *SelectRecordNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select][%d] selectRecordNoContent ", 204)
}

func (o *SelectRecordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSelectRecordNotFound creates a SelectRecordNotFound with default headers values
func NewSelectRecordNotFound() *SelectRecordNotFound {
	return &SelectRecordNotFound{}
}

/*SelectRecordNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30041</td><td>Changelog [{changelogId}] doest not exist in namespace [{namespace}]</td></tr></table>
*/
type SelectRecordNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SelectRecordNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select][%d] selectRecordNotFound  %+v", 404, o.ToJSONString())
}

func (o *SelectRecordNotFound) ToJSONString() string {
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

func (o *SelectRecordNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SelectRecordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
