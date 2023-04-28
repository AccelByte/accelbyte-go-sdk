// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package equ8_config

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

// UpdateConfigReader is a Reader for the UpdateConfig structure.
type UpdateConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/admin/namespaces/{namespace}/equ8/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateConfigOK creates a UpdateConfigOK with default headers values
func NewUpdateConfigOK() *UpdateConfigOK {
	return &UpdateConfigOK{}
}

/*UpdateConfigOK handles this case with default header values.

  successful operation
*/
type UpdateConfigOK struct {
	Payload *basicclientmodels.EQU8Config
}

func (o *UpdateConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/equ8/config][%d] updateConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateConfigOK) ToJSONString() string {
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

func (o *UpdateConfigOK) GetPayload() *basicclientmodels.EQU8Config {
	return o.Payload
}

func (o *UpdateConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.EQU8Config)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateConfigBadRequest creates a UpdateConfigBadRequest with default headers values
func NewUpdateConfigBadRequest() *UpdateConfigBadRequest {
	return &UpdateConfigBadRequest{}
}

/*UpdateConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type UpdateConfigBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/equ8/config][%d] updateConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateConfigBadRequest) ToJSONString() string {
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

func (o *UpdateConfigBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateConfigInternalServerError creates a UpdateConfigInternalServerError with default headers values
func NewUpdateConfigInternalServerError() *UpdateConfigInternalServerError {
	return &UpdateConfigInternalServerError{}
}

/*UpdateConfigInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateConfigInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/equ8/config][%d] updateConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateConfigInternalServerError) ToJSONString() string {
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

func (o *UpdateConfigInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
