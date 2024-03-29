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

// GetBannedUsersReader is a Reader for the GetBannedUsers structure.
type GetBannedUsersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetBannedUsersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetBannedUsersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetBannedUsersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetBannedUsersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGetBannedUsersUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetBannedUsersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/actions/banned returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetBannedUsersOK creates a GetBannedUsersOK with default headers values
func NewGetBannedUsersOK() *GetBannedUsersOK {
	return &GetBannedUsersOK{}
}

/*GetBannedUsersOK handles this case with default header values.

  successful operation
*/
type GetBannedUsersOK struct {
	Payload []*basicclientmodels.ADTOObjectForEQU8UserBanStatus
}

func (o *GetBannedUsersOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/banned][%d] getBannedUsersOK  %+v", 200, o.ToJSONString())
}

func (o *GetBannedUsersOK) ToJSONString() string {
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

func (o *GetBannedUsersOK) GetPayload() []*basicclientmodels.ADTOObjectForEQU8UserBanStatus {
	return o.Payload
}

func (o *GetBannedUsersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetBannedUsersBadRequest creates a GetBannedUsersBadRequest with default headers values
func NewGetBannedUsersBadRequest() *GetBannedUsersBadRequest {
	return &GetBannedUsersBadRequest{}
}

/*GetBannedUsersBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type GetBannedUsersBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetBannedUsersBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/banned][%d] getBannedUsersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetBannedUsersBadRequest) ToJSONString() string {
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

func (o *GetBannedUsersBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetBannedUsersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetBannedUsersNotFound creates a GetBannedUsersNotFound with default headers values
func NewGetBannedUsersNotFound() *GetBannedUsersNotFound {
	return &GetBannedUsersNotFound{}
}

/*GetBannedUsersNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11641</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type GetBannedUsersNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetBannedUsersNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/banned][%d] getBannedUsersNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetBannedUsersNotFound) ToJSONString() string {
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

func (o *GetBannedUsersNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetBannedUsersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetBannedUsersUnprocessableEntity creates a GetBannedUsersUnprocessableEntity with default headers values
func NewGetBannedUsersUnprocessableEntity() *GetBannedUsersUnprocessableEntity {
	return &GetBannedUsersUnprocessableEntity{}
}

/*GetBannedUsersUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetBannedUsersUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetBannedUsersUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/banned][%d] getBannedUsersUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GetBannedUsersUnprocessableEntity) ToJSONString() string {
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

func (o *GetBannedUsersUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetBannedUsersUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetBannedUsersInternalServerError creates a GetBannedUsersInternalServerError with default headers values
func NewGetBannedUsersInternalServerError() *GetBannedUsersInternalServerError {
	return &GetBannedUsersInternalServerError{}
}

/*GetBannedUsersInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetBannedUsersInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetBannedUsersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/actions/banned][%d] getBannedUsersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetBannedUsersInternalServerError) ToJSONString() string {
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

func (o *GetBannedUsersInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetBannedUsersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
