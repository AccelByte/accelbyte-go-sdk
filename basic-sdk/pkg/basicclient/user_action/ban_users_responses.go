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

// BanUsersReader is a Reader for the BanUsers structure.
type BanUsersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BanUsersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBanUsersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBanUsersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBanUsersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBanUsersUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBanUsersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/actions/ban returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBanUsersOK creates a BanUsersOK with default headers values
func NewBanUsersOK() *BanUsersOK {
	return &BanUsersOK{}
}

/*BanUsersOK handles this case with default header values.

  successful operation
*/
type BanUsersOK struct {
}

func (o *BanUsersOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/ban][%d] banUsersOK ", 200)
}

func (o *BanUsersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewBanUsersBadRequest creates a BanUsersBadRequest with default headers values
func NewBanUsersBadRequest() *BanUsersBadRequest {
	return &BanUsersBadRequest{}
}

/*BanUsersBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11621</td><td>Invalid EQU8 api key in namespace [{namespace}]</td></tr></table>
*/
type BanUsersBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *BanUsersBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/ban][%d] banUsersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BanUsersBadRequest) ToJSONString() string {
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

func (o *BanUsersBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BanUsersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBanUsersNotFound creates a BanUsersNotFound with default headers values
func NewBanUsersNotFound() *BanUsersNotFound {
	return &BanUsersNotFound{}
}

/*BanUsersNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11041</td><td>Equ8 config not found in namespace [{namespace}]</td></tr></table>
*/
type BanUsersNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *BanUsersNotFound) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/ban][%d] banUsersNotFound  %+v", 404, o.ToJSONString())
}

func (o *BanUsersNotFound) ToJSONString() string {
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

func (o *BanUsersNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BanUsersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBanUsersUnprocessableEntity creates a BanUsersUnprocessableEntity with default headers values
func NewBanUsersUnprocessableEntity() *BanUsersUnprocessableEntity {
	return &BanUsersUnprocessableEntity{}
}

/*BanUsersUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BanUsersUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *BanUsersUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/ban][%d] banUsersUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BanUsersUnprocessableEntity) ToJSONString() string {
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

func (o *BanUsersUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BanUsersUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBanUsersInternalServerError creates a BanUsersInternalServerError with default headers values
func NewBanUsersInternalServerError() *BanUsersInternalServerError {
	return &BanUsersInternalServerError{}
}

/*BanUsersInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type BanUsersInternalServerError struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *BanUsersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/ban][%d] banUsersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BanUsersInternalServerError) ToJSONString() string {
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

func (o *BanUsersInternalServerError) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BanUsersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
