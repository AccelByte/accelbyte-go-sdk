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

// DeleteConfig1Reader is a Reader for the DeleteConfig1 structure.
type DeleteConfig1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteConfig1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteConfig1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteConfig1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteConfig1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteConfig1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteConfig1NotFound()
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

// NewDeleteConfig1NoContent creates a DeleteConfig1NoContent with default headers values
func NewDeleteConfig1NoContent() *DeleteConfig1NoContent {
	return &DeleteConfig1NoContent{}
}

/*DeleteConfig1NoContent handles this case with default header values.

  Successful operation
*/
type DeleteConfig1NoContent struct {
}

func (o *DeleteConfig1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfig1NoContent ", 204)
}

func (o *DeleteConfig1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteConfig1BadRequest creates a DeleteConfig1BadRequest with default headers values
func NewDeleteConfig1BadRequest() *DeleteConfig1BadRequest {
	return &DeleteConfig1BadRequest{}
}

/*DeleteConfig1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteConfig1BadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *DeleteConfig1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfig1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteConfig1BadRequest) ToJSONString() string {
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

func (o *DeleteConfig1BadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteConfig1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfig1Unauthorized creates a DeleteConfig1Unauthorized with default headers values
func NewDeleteConfig1Unauthorized() *DeleteConfig1Unauthorized {
	return &DeleteConfig1Unauthorized{}
}

/*DeleteConfig1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type DeleteConfig1Unauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfig1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfig1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteConfig1Unauthorized) ToJSONString() string {
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

func (o *DeleteConfig1Unauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfig1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfig1Forbidden creates a DeleteConfig1Forbidden with default headers values
func NewDeleteConfig1Forbidden() *DeleteConfig1Forbidden {
	return &DeleteConfig1Forbidden{}
}

/*DeleteConfig1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteConfig1Forbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfig1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfig1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteConfig1Forbidden) ToJSONString() string {
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

func (o *DeleteConfig1Forbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfig1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteConfig1NotFound creates a DeleteConfig1NotFound with default headers values
func NewDeleteConfig1NotFound() *DeleteConfig1NotFound {
	return &DeleteConfig1NotFound{}
}

/*DeleteConfig1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11741</td><td>Unable to {action}: Config not found</td></tr></table>
*/
type DeleteConfig1NotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteConfig1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] deleteConfig1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteConfig1NotFound) ToJSONString() string {
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

func (o *DeleteConfig1NotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteConfig1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
