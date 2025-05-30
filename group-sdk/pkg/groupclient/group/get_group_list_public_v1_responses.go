// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// GetGroupListPublicV1Reader is a Reader for the GetGroupListPublicV1 structure.
type GetGroupListPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupListPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupListPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGroupListPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupListPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGroupListPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupListPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/public/namespaces/{namespace}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupListPublicV1OK creates a GetGroupListPublicV1OK with default headers values
func NewGetGroupListPublicV1OK() *GetGroupListPublicV1OK {
	return &GetGroupListPublicV1OK{}
}

/*GetGroupListPublicV1OK handles this case with default header values.

  OK
*/
type GetGroupListPublicV1OK struct {
	Payload *groupclientmodels.ModelsGetGroupsListResponseV1
}

func (o *GetGroupListPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/groups][%d] getGroupListPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGroupListPublicV1OK) ToJSONString() string {
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

func (o *GetGroupListPublicV1OK) GetPayload() *groupclientmodels.ModelsGetGroupsListResponseV1 {
	return o.Payload
}

func (o *GetGroupListPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetGroupsListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupListPublicV1BadRequest creates a GetGroupListPublicV1BadRequest with default headers values
func NewGetGroupListPublicV1BadRequest() *GetGroupListPublicV1BadRequest {
	return &GetGroupListPublicV1BadRequest{}
}

/*GetGroupListPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGroupListPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/groups][%d] getGroupListPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGroupListPublicV1BadRequest) ToJSONString() string {
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

func (o *GetGroupListPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupListPublicV1Unauthorized creates a GetGroupListPublicV1Unauthorized with default headers values
func NewGetGroupListPublicV1Unauthorized() *GetGroupListPublicV1Unauthorized {
	return &GetGroupListPublicV1Unauthorized{}
}

/*GetGroupListPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGroupListPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/groups][%d] getGroupListPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGroupListPublicV1Unauthorized) ToJSONString() string {
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

func (o *GetGroupListPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupListPublicV1Forbidden creates a GetGroupListPublicV1Forbidden with default headers values
func NewGetGroupListPublicV1Forbidden() *GetGroupListPublicV1Forbidden {
	return &GetGroupListPublicV1Forbidden{}
}

/*GetGroupListPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetGroupListPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/groups][%d] getGroupListPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGroupListPublicV1Forbidden) ToJSONString() string {
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

func (o *GetGroupListPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupListPublicV1InternalServerError creates a GetGroupListPublicV1InternalServerError with default headers values
func NewGetGroupListPublicV1InternalServerError() *GetGroupListPublicV1InternalServerError {
	return &GetGroupListPublicV1InternalServerError{}
}

/*GetGroupListPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupListPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/groups][%d] getGroupListPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGroupListPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetGroupListPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
