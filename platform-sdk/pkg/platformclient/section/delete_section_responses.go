// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

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

// DeleteSectionReader is a Reader for the DeleteSection structure.
type DeleteSectionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSectionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSectionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSectionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteSectionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/sections/{sectionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSectionNoContent creates a DeleteSectionNoContent with default headers values
func NewDeleteSectionNoContent() *DeleteSectionNoContent {
	return &DeleteSectionNoContent{}
}

/*DeleteSectionNoContent handles this case with default header values.

  Delete section successfully
*/
type DeleteSectionNoContent struct {
}

func (o *DeleteSectionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/sections/{sectionId}][%d] deleteSectionNoContent ", 204)
}

func (o *DeleteSectionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSectionNotFound creates a DeleteSectionNotFound with default headers values
func NewDeleteSectionNotFound() *DeleteSectionNotFound {
	return &DeleteSectionNotFound{}
}

/*DeleteSectionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30741</td><td>Section [{sectionId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteSectionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteSectionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/sections/{sectionId}][%d] deleteSectionNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSectionNotFound) ToJSONString() string {
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

func (o *DeleteSectionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteSectionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSectionConflict creates a DeleteSectionConflict with default headers values
func NewDeleteSectionConflict() *DeleteSectionConflict {
	return &DeleteSectionConflict{}
}

/*DeleteSectionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type DeleteSectionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteSectionConflict) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/sections/{sectionId}][%d] deleteSectionConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteSectionConflict) ToJSONString() string {
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

func (o *DeleteSectionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteSectionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
