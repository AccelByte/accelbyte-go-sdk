// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// RenameBatchReader is a Reader for the RenameBatch structure.
type RenameBatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RenameBatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRenameBatchNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRenameBatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRenameBatchNoContent creates a RenameBatchNoContent with default headers values
func NewRenameBatchNoContent() *RenameBatchNoContent {
	return &RenameBatchNoContent{}
}

/*RenameBatchNoContent handles this case with default header values.

  Batch was renamed successfully
*/
type RenameBatchNoContent struct {
}

func (o *RenameBatchNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName][%d] renameBatchNoContent ", 204)
}

func (o *RenameBatchNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRenameBatchNotFound creates a RenameBatchNotFound with default headers values
func NewRenameBatchNotFound() *RenameBatchNotFound {
	return &RenameBatchNotFound{}
}

/*RenameBatchNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37141</td><td>Campaign [{campaignId}] does not exist in namespace [{namespace}]</td></tr><tr><td>37143</td><td>Batch name [{batchName}] does not exist for campaign [{campaignId}] in namespace [{namespace}].</td></tr></table>
*/
type RenameBatchNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RenameBatchNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName][%d] renameBatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *RenameBatchNotFound) ToJSONString() string {
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

func (o *RenameBatchNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RenameBatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
