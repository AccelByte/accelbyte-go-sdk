// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package category

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

// CreateCategoryReader is a Reader for the CreateCategory structure.
type CreateCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateCategoryCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateCategoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateCategoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateCategoryConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateCategoryUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/categories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateCategoryCreated creates a CreateCategoryCreated with default headers values
func NewCreateCategoryCreated() *CreateCategoryCreated {
	return &CreateCategoryCreated{}
}

/*CreateCategoryCreated handles this case with default header values.

  successful operation
*/
type CreateCategoryCreated struct {
	Payload *platformclientmodels.FullCategoryInfo
}

func (o *CreateCategoryCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/categories][%d] createCategoryCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateCategoryCreated) ToJSONString() string {
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

func (o *CreateCategoryCreated) GetPayload() *platformclientmodels.FullCategoryInfo {
	return o.Payload
}

func (o *CreateCategoryCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullCategoryInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateCategoryBadRequest creates a CreateCategoryBadRequest with default headers values
func NewCreateCategoryBadRequest() *CreateCategoryBadRequest {
	return &CreateCategoryBadRequest{}
}

/*CreateCategoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr></table>
*/
type CreateCategoryBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateCategoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/categories][%d] createCategoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateCategoryBadRequest) ToJSONString() string {
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

func (o *CreateCategoryBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateCategoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateCategoryNotFound creates a CreateCategoryNotFound with default headers values
func NewCreateCategoryNotFound() *CreateCategoryNotFound {
	return &CreateCategoryNotFound{}
}

/*CreateCategoryNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30241</td><td>Category [{categoryPath}] does not exist in namespace [{namespace}]</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateCategoryNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateCategoryNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/categories][%d] createCategoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateCategoryNotFound) ToJSONString() string {
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

func (o *CreateCategoryNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateCategoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateCategoryConflict creates a CreateCategoryConflict with default headers values
func NewCreateCategoryConflict() *CreateCategoryConflict {
	return &CreateCategoryConflict{}
}

/*CreateCategoryConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30271</td><td>Category [{categoryPath}] already exists in namespace [{namespace}]</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type CreateCategoryConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateCategoryConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/categories][%d] createCategoryConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateCategoryConflict) ToJSONString() string {
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

func (o *CreateCategoryConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateCategoryConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateCategoryUnprocessableEntity creates a CreateCategoryUnprocessableEntity with default headers values
func NewCreateCategoryUnprocessableEntity() *CreateCategoryUnprocessableEntity {
	return &CreateCategoryUnprocessableEntity{}
}

/*CreateCategoryUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateCategoryUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateCategoryUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/categories][%d] createCategoryUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateCategoryUnprocessableEntity) ToJSONString() string {
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

func (o *CreateCategoryUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateCategoryUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
