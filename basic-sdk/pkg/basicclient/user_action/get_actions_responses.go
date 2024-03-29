// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

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

// GetActionsReader is a Reader for the GetActions structure.
type GetActionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetActionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetActionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetActionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetActionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetActionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/actions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetActionsOK creates a GetActionsOK with default headers values
func NewGetActionsOK() *GetActionsOK {
	return &GetActionsOK{}
}

/*GetActionsOK handles this case with default header values.

  successful operation
*/
type GetActionsOK struct {
	Payload []*basicclientmodels.Action
}

func (o *GetActionsOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions][%d] getActionsOK  %+v", 200, o.ToJSONString())
}

func (o *GetActionsOK) ToJSONString() string {
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

func (o *GetActionsOK) GetPayload() []*basicclientmodels.Action {
	return o.Payload
}

func (o *GetActionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetActionsBadRequest creates a GetActionsBadRequest with default headers values
func NewGetActionsBadRequest() *GetActionsBadRequest {
	return &GetActionsBadRequest{}
}

/*GetActionsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type GetActionsBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetActionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions][%d] getActionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetActionsBadRequest) ToJSONString() string {
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

func (o *GetActionsBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetActionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetActionsNotFound creates a GetActionsNotFound with default headers values
func NewGetActionsNotFound() *GetActionsNotFound {
	return &GetActionsNotFound{}
}

/*GetActionsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11041</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type GetActionsNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetActionsNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions][%d] getActionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetActionsNotFound) ToJSONString() string {
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

func (o *GetActionsNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetActionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetActionsInternalServerError creates a GetActionsInternalServerError with default headers values
func NewGetActionsInternalServerError() *GetActionsInternalServerError {
	return &GetActionsInternalServerError{}
}

/*GetActionsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetActionsInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetActionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions][%d] getActionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetActionsInternalServerError) ToJSONString() string {
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

func (o *GetActionsInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetActionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
