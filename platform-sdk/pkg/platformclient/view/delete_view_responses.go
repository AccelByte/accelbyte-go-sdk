// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

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

// DeleteViewReader is a Reader for the DeleteView structure.
type DeleteViewReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteViewReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteViewNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteViewNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteViewConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/views/{viewId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteViewNoContent creates a DeleteViewNoContent with default headers values
func NewDeleteViewNoContent() *DeleteViewNoContent {
	return &DeleteViewNoContent{}
}

/*DeleteViewNoContent handles this case with default header values.

  Delete view successfully
*/
type DeleteViewNoContent struct {
}

func (o *DeleteViewNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/views/{viewId}][%d] deleteViewNoContent ", 204)
}

func (o *DeleteViewNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteViewNotFound creates a DeleteViewNotFound with default headers values
func NewDeleteViewNotFound() *DeleteViewNotFound {
	return &DeleteViewNotFound{}
}

/*DeleteViewNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30641</td><td>View [{viewId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteViewNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteViewNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/views/{viewId}][%d] deleteViewNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteViewNotFound) ToJSONString() string {
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

func (o *DeleteViewNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteViewNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteViewConflict creates a DeleteViewConflict with default headers values
func NewDeleteViewConflict() *DeleteViewConflict {
	return &DeleteViewConflict{}
}

/*DeleteViewConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type DeleteViewConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteViewConflict) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/views/{viewId}][%d] deleteViewConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteViewConflict) ToJSONString() string {
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

func (o *DeleteViewConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteViewConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
