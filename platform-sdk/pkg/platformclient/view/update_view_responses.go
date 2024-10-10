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

// UpdateViewReader is a Reader for the UpdateView structure.
type UpdateViewReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateViewReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateViewOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateViewBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateViewNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateViewConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateViewUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/views/{viewId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateViewOK creates a UpdateViewOK with default headers values
func NewUpdateViewOK() *UpdateViewOK {
	return &UpdateViewOK{}
}

/*UpdateViewOK handles this case with default header values.

  successful operation
*/
type UpdateViewOK struct {
	Payload *platformclientmodels.FullViewInfo
}

func (o *UpdateViewOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/views/{viewId}][%d] updateViewOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateViewOK) ToJSONString() string {
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

func (o *UpdateViewOK) GetPayload() *platformclientmodels.FullViewInfo {
	return o.Payload
}

func (o *UpdateViewOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullViewInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateViewBadRequest creates a UpdateViewBadRequest with default headers values
func NewUpdateViewBadRequest() *UpdateViewBadRequest {
	return &UpdateViewBadRequest{}
}

/*UpdateViewBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr></table>
*/
type UpdateViewBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateViewBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/views/{viewId}][%d] updateViewBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateViewBadRequest) ToJSONString() string {
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

func (o *UpdateViewBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateViewBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateViewNotFound creates a UpdateViewNotFound with default headers values
func NewUpdateViewNotFound() *UpdateViewNotFound {
	return &UpdateViewNotFound{}
}

/*UpdateViewNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30641</td><td>View [{viewId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateViewNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateViewNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/views/{viewId}][%d] updateViewNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateViewNotFound) ToJSONString() string {
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

func (o *UpdateViewNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateViewNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateViewConflict creates a UpdateViewConflict with default headers values
func NewUpdateViewConflict() *UpdateViewConflict {
	return &UpdateViewConflict{}
}

/*UpdateViewConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type UpdateViewConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateViewConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/views/{viewId}][%d] updateViewConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateViewConflict) ToJSONString() string {
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

func (o *UpdateViewConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateViewConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateViewUnprocessableEntity creates a UpdateViewUnprocessableEntity with default headers values
func NewUpdateViewUnprocessableEntity() *UpdateViewUnprocessableEntity {
	return &UpdateViewUnprocessableEntity{}
}

/*UpdateViewUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateViewUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateViewUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/views/{viewId}][%d] updateViewUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateViewUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateViewUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateViewUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
