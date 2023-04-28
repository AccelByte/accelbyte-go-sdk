// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

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

// UpdateMemberRolePublicV2Reader is a Reader for the UpdateMemberRolePublicV2 structure.
type UpdateMemberRolePublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMemberRolePublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMemberRolePublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMemberRolePublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMemberRolePublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMemberRolePublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMemberRolePublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMemberRolePublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMemberRolePublicV2OK creates a UpdateMemberRolePublicV2OK with default headers values
func NewUpdateMemberRolePublicV2OK() *UpdateMemberRolePublicV2OK {
	return &UpdateMemberRolePublicV2OK{}
}

/*UpdateMemberRolePublicV2OK handles this case with default header values.

  OK
*/
type UpdateMemberRolePublicV2OK struct {
	Payload *groupclientmodels.ModelsGetUserGroupInformationResponseV1
}

func (o *UpdateMemberRolePublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2OK) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2OK) GetPayload() *groupclientmodels.ModelsGetUserGroupInformationResponseV1 {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV2BadRequest creates a UpdateMemberRolePublicV2BadRequest with default headers values
func NewUpdateMemberRolePublicV2BadRequest() *UpdateMemberRolePublicV2BadRequest {
	return &UpdateMemberRolePublicV2BadRequest{}
}

/*UpdateMemberRolePublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMemberRolePublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2BadRequest) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV2Unauthorized creates a UpdateMemberRolePublicV2Unauthorized with default headers values
func NewUpdateMemberRolePublicV2Unauthorized() *UpdateMemberRolePublicV2Unauthorized {
	return &UpdateMemberRolePublicV2Unauthorized{}
}

/*UpdateMemberRolePublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateMemberRolePublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV2Forbidden creates a UpdateMemberRolePublicV2Forbidden with default headers values
func NewUpdateMemberRolePublicV2Forbidden() *UpdateMemberRolePublicV2Forbidden {
	return &UpdateMemberRolePublicV2Forbidden{}
}

/*UpdateMemberRolePublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateMemberRolePublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2Forbidden) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV2NotFound creates a UpdateMemberRolePublicV2NotFound with default headers values
func NewUpdateMemberRolePublicV2NotFound() *UpdateMemberRolePublicV2NotFound {
	return &UpdateMemberRolePublicV2NotFound{}
}

/*UpdateMemberRolePublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type UpdateMemberRolePublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2NotFound) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV2InternalServerError creates a UpdateMemberRolePublicV2InternalServerError with default headers values
func NewUpdateMemberRolePublicV2InternalServerError() *UpdateMemberRolePublicV2InternalServerError {
	return &UpdateMemberRolePublicV2InternalServerError{}
}

/*UpdateMemberRolePublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMemberRolePublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] updateMemberRolePublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
