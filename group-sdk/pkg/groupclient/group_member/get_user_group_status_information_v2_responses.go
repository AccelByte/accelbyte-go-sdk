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

// GetUserGroupStatusInformationV2Reader is a Reader for the GetUserGroupStatusInformationV2 structure.
type GetUserGroupStatusInformationV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserGroupStatusInformationV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserGroupStatusInformationV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserGroupStatusInformationV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserGroupStatusInformationV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserGroupStatusInformationV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserGroupStatusInformationV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserGroupStatusInformationV2OK creates a GetUserGroupStatusInformationV2OK with default headers values
func NewGetUserGroupStatusInformationV2OK() *GetUserGroupStatusInformationV2OK {
	return &GetUserGroupStatusInformationV2OK{}
}

/*GetUserGroupStatusInformationV2OK handles this case with default header values.

  OK
*/
type GetUserGroupStatusInformationV2OK struct {
	Payload *groupclientmodels.ModelsGetUserGroupInformationResponseV1
}

func (o *GetUserGroupStatusInformationV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] getUserGroupStatusInformationV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserGroupStatusInformationV2OK) ToJSONString() string {
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

func (o *GetUserGroupStatusInformationV2OK) GetPayload() *groupclientmodels.ModelsGetUserGroupInformationResponseV1 {
	return o.Payload
}

func (o *GetUserGroupStatusInformationV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupStatusInformationV2Unauthorized creates a GetUserGroupStatusInformationV2Unauthorized with default headers values
func NewGetUserGroupStatusInformationV2Unauthorized() *GetUserGroupStatusInformationV2Unauthorized {
	return &GetUserGroupStatusInformationV2Unauthorized{}
}

/*GetUserGroupStatusInformationV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserGroupStatusInformationV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupStatusInformationV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] getUserGroupStatusInformationV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserGroupStatusInformationV2Unauthorized) ToJSONString() string {
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

func (o *GetUserGroupStatusInformationV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupStatusInformationV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupStatusInformationV2Forbidden creates a GetUserGroupStatusInformationV2Forbidden with default headers values
func NewGetUserGroupStatusInformationV2Forbidden() *GetUserGroupStatusInformationV2Forbidden {
	return &GetUserGroupStatusInformationV2Forbidden{}
}

/*GetUserGroupStatusInformationV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type GetUserGroupStatusInformationV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupStatusInformationV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] getUserGroupStatusInformationV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserGroupStatusInformationV2Forbidden) ToJSONString() string {
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

func (o *GetUserGroupStatusInformationV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupStatusInformationV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupStatusInformationV2NotFound creates a GetUserGroupStatusInformationV2NotFound with default headers values
func NewGetUserGroupStatusInformationV2NotFound() *GetUserGroupStatusInformationV2NotFound {
	return &GetUserGroupStatusInformationV2NotFound{}
}

/*GetUserGroupStatusInformationV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73433</td><td>member group not found</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type GetUserGroupStatusInformationV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupStatusInformationV2NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] getUserGroupStatusInformationV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserGroupStatusInformationV2NotFound) ToJSONString() string {
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

func (o *GetUserGroupStatusInformationV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupStatusInformationV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserGroupStatusInformationV2InternalServerError creates a GetUserGroupStatusInformationV2InternalServerError with default headers values
func NewGetUserGroupStatusInformationV2InternalServerError() *GetUserGroupStatusInformationV2InternalServerError {
	return &GetUserGroupStatusInformationV2InternalServerError{}
}

/*GetUserGroupStatusInformationV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserGroupStatusInformationV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserGroupStatusInformationV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] getUserGroupStatusInformationV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserGroupStatusInformationV2InternalServerError) ToJSONString() string {
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

func (o *GetUserGroupStatusInformationV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserGroupStatusInformationV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
