// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// CreateSeasonReader is a Reader for the CreateSeason structure.
type CreateSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateSeasonCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateSeasonUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/seasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateSeasonCreated creates a CreateSeasonCreated with default headers values
func NewCreateSeasonCreated() *CreateSeasonCreated {
	return &CreateSeasonCreated{}
}

/*CreateSeasonCreated handles this case with default header values.

  successful operation
*/
type CreateSeasonCreated struct {
	Payload *seasonpassclientmodels.SeasonInfo
}

func (o *CreateSeasonCreated) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons][%d] createSeasonCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateSeasonCreated) ToJSONString() string {
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

func (o *CreateSeasonCreated) GetPayload() *seasonpassclientmodels.SeasonInfo {
	return o.Payload
}

func (o *CreateSeasonCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.SeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSeasonBadRequest creates a CreateSeasonBadRequest with default headers values
func NewCreateSeasonBadRequest() *CreateSeasonBadRequest {
	return &CreateSeasonBadRequest{}
}

/*CreateSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49121</td><td>Default language [{language}] required in localizations</td></tr><tr><td>49122</td><td>Invalid time range</td></tr></table>
*/
type CreateSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreateSeasonBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons][%d] createSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateSeasonBadRequest) ToJSONString() string {
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

func (o *CreateSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSeasonNotFound creates a CreateSeasonNotFound with default headers values
func NewCreateSeasonNotFound() *CreateSeasonNotFound {
	return &CreateSeasonNotFound{}
}

/*CreateSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49141</td><td>Tier item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreateSeasonNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons][%d] createSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateSeasonNotFound) ToJSONString() string {
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

func (o *CreateSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSeasonUnprocessableEntity creates a CreateSeasonUnprocessableEntity with default headers values
func NewCreateSeasonUnprocessableEntity() *CreateSeasonUnprocessableEntity {
	return &CreateSeasonUnprocessableEntity{}
}

/*CreateSeasonUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateSeasonUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *CreateSeasonUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons][%d] createSeasonUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateSeasonUnprocessableEntity) ToJSONString() string {
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

func (o *CreateSeasonUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateSeasonUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
