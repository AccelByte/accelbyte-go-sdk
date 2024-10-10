// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_member

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// GetUserGroupInformationPublicV1Reader is a Reader for the GetUserGroupInformationPublicV1 structure.
type GetUserGroupInformationPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserGroupInformationPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserGroupInformationPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserGroupInformationPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserGroupInformationPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserGroupInformationPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserGroupInformationPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserGroupInformationPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/public/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserGroupInformationPublicV1OK creates a GetUserGroupInformationPublicV1OK with default headers values
func NewGetUserGroupInformationPublicV1OK() *GetUserGroupInformationPublicV1OK {
	return &GetUserGroupInformationPublicV1OK{}
}

/*GetUserGroupInformationPublicV1OK handles this case with default header values.

  OK
*/
type GetUserGroupInformationPublicV1OK struct {
	Payload *groupclientmodels.ModelsGetUserGroupInformationResponseV1
}

func (o *GetUserGroupInformationPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1OK) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1OK) GetPayload() *groupclientmodels.ModelsGetUserGroupInformationResponseV1 {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetUserGroupInformationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV1BadRequest creates a GetUserGroupInformationPublicV1BadRequest with default headers values
func NewGetUserGroupInformationPublicV1BadRequest() *GetUserGroupInformationPublicV1BadRequest {
	return &GetUserGroupInformationPublicV1BadRequest{}
}

/*GetUserGroupInformationPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserGroupInformationPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1BadRequest) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV1Unauthorized creates a GetUserGroupInformationPublicV1Unauthorized with default headers values
func NewGetUserGroupInformationPublicV1Unauthorized() *GetUserGroupInformationPublicV1Unauthorized {
	return &GetUserGroupInformationPublicV1Unauthorized{}
}

/*GetUserGroupInformationPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserGroupInformationPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1Unauthorized) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV1Forbidden creates a GetUserGroupInformationPublicV1Forbidden with default headers values
func NewGetUserGroupInformationPublicV1Forbidden() *GetUserGroupInformationPublicV1Forbidden {
	return &GetUserGroupInformationPublicV1Forbidden{}
}

/*GetUserGroupInformationPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetUserGroupInformationPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1Forbidden) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV1NotFound creates a GetUserGroupInformationPublicV1NotFound with default headers values
func NewGetUserGroupInformationPublicV1NotFound() *GetUserGroupInformationPublicV1NotFound {
	return &GetUserGroupInformationPublicV1NotFound{}
}

/*GetUserGroupInformationPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type GetUserGroupInformationPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV1NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1NotFound) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV1InternalServerError creates a GetUserGroupInformationPublicV1InternalServerError with default headers values
func NewGetUserGroupInformationPublicV1InternalServerError() *GetUserGroupInformationPublicV1InternalServerError {
	return &GetUserGroupInformationPublicV1InternalServerError{}
}

/*GetUserGroupInformationPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserGroupInformationPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/{userId}][%d] getUserGroupInformationPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
