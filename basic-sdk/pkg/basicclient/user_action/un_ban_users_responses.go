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

// UnBanUsersReader is a Reader for the UnBanUsers structure.
type UnBanUsersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnBanUsersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUnBanUsersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUnBanUsersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnBanUsersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUnBanUsersUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUnBanUsersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/actions/unban returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnBanUsersOK creates a UnBanUsersOK with default headers values
func NewUnBanUsersOK() *UnBanUsersOK {
	return &UnBanUsersOK{}
}

/*UnBanUsersOK handles this case with default header values.

  successful operation
*/
type UnBanUsersOK struct {
}

func (o *UnBanUsersOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/unban][%d] unBanUsersOK ", 200)
}

func (o *UnBanUsersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnBanUsersBadRequest creates a UnBanUsersBadRequest with default headers values
func NewUnBanUsersBadRequest() *UnBanUsersBadRequest {
	return &UnBanUsersBadRequest{}
}

/*UnBanUsersBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type UnBanUsersBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UnBanUsersBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/unban][%d] unBanUsersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UnBanUsersBadRequest) ToJSONString() string {
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

func (o *UnBanUsersBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnBanUsersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnBanUsersNotFound creates a UnBanUsersNotFound with default headers values
func NewUnBanUsersNotFound() *UnBanUsersNotFound {
	return &UnBanUsersNotFound{}
}

/*UnBanUsersNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11041</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type UnBanUsersNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UnBanUsersNotFound) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/unban][%d] unBanUsersNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnBanUsersNotFound) ToJSONString() string {
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

func (o *UnBanUsersNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnBanUsersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnBanUsersUnprocessableEntity creates a UnBanUsersUnprocessableEntity with default headers values
func NewUnBanUsersUnprocessableEntity() *UnBanUsersUnprocessableEntity {
	return &UnBanUsersUnprocessableEntity{}
}

/*UnBanUsersUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UnBanUsersUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UnBanUsersUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/unban][%d] unBanUsersUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UnBanUsersUnprocessableEntity) ToJSONString() string {
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

func (o *UnBanUsersUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UnBanUsersUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnBanUsersInternalServerError creates a UnBanUsersInternalServerError with default headers values
func NewUnBanUsersInternalServerError() *UnBanUsersInternalServerError {
	return &UnBanUsersInternalServerError{}
}

/*UnBanUsersInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UnBanUsersInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UnBanUsersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/unban][%d] unBanUsersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UnBanUsersInternalServerError) ToJSONString() string {
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

func (o *UnBanUsersInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnBanUsersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
