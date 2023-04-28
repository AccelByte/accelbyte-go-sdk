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

// GetUserGroupInformationPublicV2Reader is a Reader for the GetUserGroupInformationPublicV2 structure.
type GetUserGroupInformationPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserGroupInformationPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserGroupInformationPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserGroupInformationPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserGroupInformationPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserGroupInformationPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserGroupInformationPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserGroupInformationPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/public/namespaces/{namespace}/users/me/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserGroupInformationPublicV2OK creates a GetUserGroupInformationPublicV2OK with default headers values
func NewGetUserGroupInformationPublicV2OK() *GetUserGroupInformationPublicV2OK {
	return &GetUserGroupInformationPublicV2OK{}
}

/*GetUserGroupInformationPublicV2OK handles this case with default header values.

  OK
*/
type GetUserGroupInformationPublicV2OK struct {
	Payload *groupclientmodels.ModelsGetGroupMemberListResponseV1
}

func (o *GetUserGroupInformationPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2OK) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2OK) GetPayload() *groupclientmodels.ModelsGetGroupMemberListResponseV1 {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetGroupMemberListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserGroupInformationPublicV2BadRequest creates a GetUserGroupInformationPublicV2BadRequest with default headers values
func NewGetUserGroupInformationPublicV2BadRequest() *GetUserGroupInformationPublicV2BadRequest {
	return &GetUserGroupInformationPublicV2BadRequest{}
}

/*GetUserGroupInformationPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserGroupInformationPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2BadRequest) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupInformationPublicV2Unauthorized creates a GetUserGroupInformationPublicV2Unauthorized with default headers values
func NewGetUserGroupInformationPublicV2Unauthorized() *GetUserGroupInformationPublicV2Unauthorized {
	return &GetUserGroupInformationPublicV2Unauthorized{}
}

/*GetUserGroupInformationPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserGroupInformationPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupInformationPublicV2Forbidden creates a GetUserGroupInformationPublicV2Forbidden with default headers values
func NewGetUserGroupInformationPublicV2Forbidden() *GetUserGroupInformationPublicV2Forbidden {
	return &GetUserGroupInformationPublicV2Forbidden{}
}

/*GetUserGroupInformationPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetUserGroupInformationPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2Forbidden) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupInformationPublicV2NotFound creates a GetUserGroupInformationPublicV2NotFound with default headers values
func NewGetUserGroupInformationPublicV2NotFound() *GetUserGroupInformationPublicV2NotFound {
	return &GetUserGroupInformationPublicV2NotFound{}
}

/*GetUserGroupInformationPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type GetUserGroupInformationPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV2NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2NotFound) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupInformationPublicV2InternalServerError creates a GetUserGroupInformationPublicV2InternalServerError with default headers values
func NewGetUserGroupInformationPublicV2InternalServerError() *GetUserGroupInformationPublicV2InternalServerError {
	return &GetUserGroupInformationPublicV2InternalServerError{}
}

/*GetUserGroupInformationPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserGroupInformationPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupInformationPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/groups][%d] getUserGroupInformationPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserGroupInformationPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetUserGroupInformationPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupInformationPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
