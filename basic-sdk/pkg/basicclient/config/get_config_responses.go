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

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// GetConfigReader is a Reader for the GetConfig structure.
type GetConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetConfigOK creates a GetConfigOK with default headers values
func NewGetConfigOK() *GetConfigOK {
	return &GetConfigOK{}
}

/*GetConfigOK handles this case with default header values.

  Successful operation
*/
type GetConfigOK struct {
	Payload *basicclientmodels.ConfigInfo
}

func (o *GetConfigOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] getConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetConfigOK) ToJSONString() string {
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

func (o *GetConfigOK) GetPayload() *basicclientmodels.ConfigInfo {
	return o.Payload
}

func (o *GetConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigBadRequest creates a GetConfigBadRequest with default headers values
func NewGetConfigBadRequest() *GetConfigBadRequest {
	return &GetConfigBadRequest{}
}

/*GetConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetConfigBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetConfigBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] getConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetConfigBadRequest) ToJSONString() string {
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

func (o *GetConfigBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigUnauthorized creates a GetConfigUnauthorized with default headers values
func NewGetConfigUnauthorized() *GetConfigUnauthorized {
	return &GetConfigUnauthorized{}
}

/*GetConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetConfigUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] getConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetConfigUnauthorized) ToJSONString() string {
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

func (o *GetConfigUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigForbidden creates a GetConfigForbidden with default headers values
func NewGetConfigForbidden() *GetConfigForbidden {
	return &GetConfigForbidden{}
}

/*GetConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetConfigForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] getConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetConfigForbidden) ToJSONString() string {
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

func (o *GetConfigForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetConfigNotFound creates a GetConfigNotFound with default headers values
func NewGetConfigNotFound() *GetConfigNotFound {
	return &GetConfigNotFound{}
}

/*GetConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11741</td><td>Unable to {action}: Config not found</td></tr></table>
*/
type GetConfigNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] getConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetConfigNotFound) ToJSONString() string {
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

func (o *GetConfigNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
