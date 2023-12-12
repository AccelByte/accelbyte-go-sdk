// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// ImportConfigReader is a Reader for the ImportConfig structure.
type ImportConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/v1/admin/config/namespaces/{namespace}/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportConfigOK creates a ImportConfigOK with default headers values
func NewImportConfigOK() *ImportConfigOK {
	return &ImportConfigOK{}
}

/*ImportConfigOK handles this case with default header values.

  OK
*/
type ImportConfigOK struct {
	Payload *chatclientmodels.ModelsImportConfigResponse
}

func (o *ImportConfigOK) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/config/namespaces/{namespace}/import][%d] importConfigOK  %+v", 200, o.ToJSONString())
}

func (o *ImportConfigOK) ToJSONString() string {
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

func (o *ImportConfigOK) GetPayload() *chatclientmodels.ModelsImportConfigResponse {
	return o.Payload
}

func (o *ImportConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsImportConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportConfigUnauthorized creates a ImportConfigUnauthorized with default headers values
func NewImportConfigUnauthorized() *ImportConfigUnauthorized {
	return &ImportConfigUnauthorized{}
}

/*ImportConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type ImportConfigUnauthorized struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ImportConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/config/namespaces/{namespace}/import][%d] importConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportConfigUnauthorized) ToJSONString() string {
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

func (o *ImportConfigUnauthorized) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportConfigForbidden creates a ImportConfigForbidden with default headers values
func NewImportConfigForbidden() *ImportConfigForbidden {
	return &ImportConfigForbidden{}
}

/*ImportConfigForbidden handles this case with default header values.

  Forbidden
*/
type ImportConfigForbidden struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ImportConfigForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/config/namespaces/{namespace}/import][%d] importConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportConfigForbidden) ToJSONString() string {
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

func (o *ImportConfigForbidden) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportConfigInternalServerError creates a ImportConfigInternalServerError with default headers values
func NewImportConfigInternalServerError() *ImportConfigInternalServerError {
	return &ImportConfigInternalServerError{}
}

/*ImportConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImportConfigInternalServerError struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ImportConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/v1/admin/config/namespaces/{namespace}/import][%d] importConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportConfigInternalServerError) ToJSONString() string {
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

func (o *ImportConfigInternalServerError) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
