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

// CreateViewReader is a Reader for the CreateView structure.
type CreateViewReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateViewReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateViewCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateViewBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateViewNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateViewConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateViewUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/views returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateViewCreated creates a CreateViewCreated with default headers values
func NewCreateViewCreated() *CreateViewCreated {
	return &CreateViewCreated{}
}

/*CreateViewCreated handles this case with default header values.

  successful operation
*/
type CreateViewCreated struct {
	Payload *platformclientmodels.FullViewInfo
}

func (o *CreateViewCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/views][%d] createViewCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateViewCreated) ToJSONString() string {
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

func (o *CreateViewCreated) GetPayload() *platformclientmodels.FullViewInfo {
	return o.Payload
}

func (o *CreateViewCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateViewBadRequest creates a CreateViewBadRequest with default headers values
func NewCreateViewBadRequest() *CreateViewBadRequest {
	return &CreateViewBadRequest{}
}

/*CreateViewBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr></table>
*/
type CreateViewBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateViewBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/views][%d] createViewBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateViewBadRequest) ToJSONString() string {
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

func (o *CreateViewBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateViewBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateViewNotFound creates a CreateViewNotFound with default headers values
func NewCreateViewNotFound() *CreateViewNotFound {
	return &CreateViewNotFound{}
}

/*CreateViewNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateViewNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateViewNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/views][%d] createViewNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateViewNotFound) ToJSONString() string {
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

func (o *CreateViewNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateViewNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateViewConflict creates a CreateViewConflict with default headers values
func NewCreateViewConflict() *CreateViewConflict {
	return &CreateViewConflict{}
}

/*CreateViewConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type CreateViewConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateViewConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/views][%d] createViewConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateViewConflict) ToJSONString() string {
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

func (o *CreateViewConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateViewConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateViewUnprocessableEntity creates a CreateViewUnprocessableEntity with default headers values
func NewCreateViewUnprocessableEntity() *CreateViewUnprocessableEntity {
	return &CreateViewUnprocessableEntity{}
}

/*CreateViewUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateViewUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateViewUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/views][%d] createViewUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateViewUnprocessableEntity) ToJSONString() string {
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

func (o *CreateViewUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateViewUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
