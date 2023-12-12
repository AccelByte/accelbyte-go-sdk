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

// ExportConfigReader is a Reader for the ExportConfig structure.
type ExportConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ExportConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewExportConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewExportConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewExportConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/config/namespaces/{namespace}/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportConfigOK creates a ExportConfigOK with default headers values
func NewExportConfigOK() *ExportConfigOK {
	return &ExportConfigOK{}
}

/*ExportConfigOK handles this case with default header values.

  OK
*/
type ExportConfigOK struct {
	Payload []*chatclientmodels.ModelsConfigExport
}

func (o *ExportConfigOK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config/namespaces/{namespace}/export][%d] exportConfigOK  %+v", 200, o.ToJSONString())
}

func (o *ExportConfigOK) ToJSONString() string {
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

func (o *ExportConfigOK) GetPayload() []*chatclientmodels.ModelsConfigExport {
	return o.Payload
}

func (o *ExportConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportConfigUnauthorized creates a ExportConfigUnauthorized with default headers values
func NewExportConfigUnauthorized() *ExportConfigUnauthorized {
	return &ExportConfigUnauthorized{}
}

/*ExportConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type ExportConfigUnauthorized struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ExportConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config/namespaces/{namespace}/export][%d] exportConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ExportConfigUnauthorized) ToJSONString() string {
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

func (o *ExportConfigUnauthorized) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportConfigForbidden creates a ExportConfigForbidden with default headers values
func NewExportConfigForbidden() *ExportConfigForbidden {
	return &ExportConfigForbidden{}
}

/*ExportConfigForbidden handles this case with default header values.

  Forbidden
*/
type ExportConfigForbidden struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ExportConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config/namespaces/{namespace}/export][%d] exportConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *ExportConfigForbidden) ToJSONString() string {
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

func (o *ExportConfigForbidden) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportConfigInternalServerError creates a ExportConfigInternalServerError with default headers values
func NewExportConfigInternalServerError() *ExportConfigInternalServerError {
	return &ExportConfigInternalServerError{}
}

/*ExportConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ExportConfigInternalServerError struct {
	Payload *chatclientmodels.ResponseError
}

func (o *ExportConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config/namespaces/{namespace}/export][%d] exportConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ExportConfigInternalServerError) ToJSONString() string {
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

func (o *ExportConfigInternalServerError) GetPayload() *chatclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
