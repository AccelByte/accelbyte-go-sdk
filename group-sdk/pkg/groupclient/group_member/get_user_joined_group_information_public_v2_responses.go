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

// GetUserJoinedGroupInformationPublicV2Reader is a Reader for the GetUserJoinedGroupInformationPublicV2 structure.
type GetUserJoinedGroupInformationPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserJoinedGroupInformationPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserJoinedGroupInformationPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserJoinedGroupInformationPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserJoinedGroupInformationPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserJoinedGroupInformationPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserJoinedGroupInformationPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserJoinedGroupInformationPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserJoinedGroupInformationPublicV2OK creates a GetUserJoinedGroupInformationPublicV2OK with default headers values
func NewGetUserJoinedGroupInformationPublicV2OK() *GetUserJoinedGroupInformationPublicV2OK {
	return &GetUserJoinedGroupInformationPublicV2OK{}
}

/*GetUserJoinedGroupInformationPublicV2OK handles this case with default header values.

  OK
*/
type GetUserJoinedGroupInformationPublicV2OK struct {
	Payload *groupclientmodels.ModelsGetGroupMemberListResponseV1
}

func (o *GetUserJoinedGroupInformationPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2OK) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2OK) GetPayload() *groupclientmodels.ModelsGetGroupMemberListResponseV1 {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserJoinedGroupInformationPublicV2BadRequest creates a GetUserJoinedGroupInformationPublicV2BadRequest with default headers values
func NewGetUserJoinedGroupInformationPublicV2BadRequest() *GetUserJoinedGroupInformationPublicV2BadRequest {
	return &GetUserJoinedGroupInformationPublicV2BadRequest{}
}

/*GetUserJoinedGroupInformationPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserJoinedGroupInformationPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserJoinedGroupInformationPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2BadRequest) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserJoinedGroupInformationPublicV2Unauthorized creates a GetUserJoinedGroupInformationPublicV2Unauthorized with default headers values
func NewGetUserJoinedGroupInformationPublicV2Unauthorized() *GetUserJoinedGroupInformationPublicV2Unauthorized {
	return &GetUserJoinedGroupInformationPublicV2Unauthorized{}
}

/*GetUserJoinedGroupInformationPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserJoinedGroupInformationPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserJoinedGroupInformationPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserJoinedGroupInformationPublicV2Forbidden creates a GetUserJoinedGroupInformationPublicV2Forbidden with default headers values
func NewGetUserJoinedGroupInformationPublicV2Forbidden() *GetUserJoinedGroupInformationPublicV2Forbidden {
	return &GetUserJoinedGroupInformationPublicV2Forbidden{}
}

/*GetUserJoinedGroupInformationPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetUserJoinedGroupInformationPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserJoinedGroupInformationPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2Forbidden) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserJoinedGroupInformationPublicV2NotFound creates a GetUserJoinedGroupInformationPublicV2NotFound with default headers values
func NewGetUserJoinedGroupInformationPublicV2NotFound() *GetUserJoinedGroupInformationPublicV2NotFound {
	return &GetUserJoinedGroupInformationPublicV2NotFound{}
}

/*GetUserJoinedGroupInformationPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type GetUserJoinedGroupInformationPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserJoinedGroupInformationPublicV2NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2NotFound) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserJoinedGroupInformationPublicV2InternalServerError creates a GetUserJoinedGroupInformationPublicV2InternalServerError with default headers values
func NewGetUserJoinedGroupInformationPublicV2InternalServerError() *GetUserJoinedGroupInformationPublicV2InternalServerError {
	return &GetUserJoinedGroupInformationPublicV2InternalServerError{}
}

/*GetUserJoinedGroupInformationPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserJoinedGroupInformationPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetUserJoinedGroupInformationPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups][%d] getUserJoinedGroupInformationPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserJoinedGroupInformationPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetUserJoinedGroupInformationPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserJoinedGroupInformationPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
