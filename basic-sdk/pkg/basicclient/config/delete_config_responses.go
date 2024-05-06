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

// DeleteConfigReader is a Reader for the DeleteConfig structure.
type DeleteConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteConfigNoContent creates a DeleteConfigNoContent with default headers values
func NewDeleteConfigNoContent() *DeleteConfigNoContent {
	return &DeleteConfigNoContent{}
}

/*DeleteConfigNoContent handles this case with default header values.

  Successful operation
*/
type DeleteConfigNoContent struct {
}

func (o *DeleteConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfigNoContent ", 204)
}

func (o *DeleteConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteConfigBadRequest creates a DeleteConfigBadRequest with default headers values
func NewDeleteConfigBadRequest() *DeleteConfigBadRequest {
	return &DeleteConfigBadRequest{}
}

/*DeleteConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteConfigBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *DeleteConfigBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteConfigBadRequest) ToJSONString() string {
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

func (o *DeleteConfigBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfigUnauthorized creates a DeleteConfigUnauthorized with default headers values
func NewDeleteConfigUnauthorized() *DeleteConfigUnauthorized {
	return &DeleteConfigUnauthorized{}
}

/*DeleteConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type DeleteConfigUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteConfigUnauthorized) ToJSONString() string {
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

func (o *DeleteConfigUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfigForbidden creates a DeleteConfigForbidden with default headers values
func NewDeleteConfigForbidden() *DeleteConfigForbidden {
	return &DeleteConfigForbidden{}
}

/*DeleteConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteConfigForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteConfigForbidden) ToJSONString() string {
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

func (o *DeleteConfigForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfigNotFound creates a DeleteConfigNotFound with default headers values
func NewDeleteConfigNotFound() *DeleteConfigNotFound {
	return &DeleteConfigNotFound{}
}

/*DeleteConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11741</td><td>Unable to {action}: Config not found</td></tr></table>
*/
type DeleteConfigNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteConfigNotFound) ToJSONString() string {
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

func (o *DeleteConfigNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
