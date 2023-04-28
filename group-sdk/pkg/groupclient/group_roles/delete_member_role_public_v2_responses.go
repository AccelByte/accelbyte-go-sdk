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

// DeleteMemberRolePublicV2Reader is a Reader for the DeleteMemberRolePublicV2 structure.
type DeleteMemberRolePublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMemberRolePublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteMemberRolePublicV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteMemberRolePublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMemberRolePublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMemberRolePublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMemberRolePublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDeleteMemberRolePublicV2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMemberRolePublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMemberRolePublicV2NoContent creates a DeleteMemberRolePublicV2NoContent with default headers values
func NewDeleteMemberRolePublicV2NoContent() *DeleteMemberRolePublicV2NoContent {
	return &DeleteMemberRolePublicV2NoContent{}
}

/*DeleteMemberRolePublicV2NoContent handles this case with default header values.

  No Content
*/
type DeleteMemberRolePublicV2NoContent struct {
}

func (o *DeleteMemberRolePublicV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2NoContent ", 204)
}

func (o *DeleteMemberRolePublicV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMemberRolePublicV2BadRequest creates a DeleteMemberRolePublicV2BadRequest with default headers values
func NewDeleteMemberRolePublicV2BadRequest() *DeleteMemberRolePublicV2BadRequest {
	return &DeleteMemberRolePublicV2BadRequest{}
}

/*DeleteMemberRolePublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteMemberRolePublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2BadRequest) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteMemberRolePublicV2Unauthorized creates a DeleteMemberRolePublicV2Unauthorized with default headers values
func NewDeleteMemberRolePublicV2Unauthorized() *DeleteMemberRolePublicV2Unauthorized {
	return &DeleteMemberRolePublicV2Unauthorized{}
}

/*DeleteMemberRolePublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteMemberRolePublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2Unauthorized) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteMemberRolePublicV2Forbidden creates a DeleteMemberRolePublicV2Forbidden with default headers values
func NewDeleteMemberRolePublicV2Forbidden() *DeleteMemberRolePublicV2Forbidden {
	return &DeleteMemberRolePublicV2Forbidden{}
}

/*DeleteMemberRolePublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteMemberRolePublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2Forbidden) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteMemberRolePublicV2NotFound creates a DeleteMemberRolePublicV2NotFound with default headers values
func NewDeleteMemberRolePublicV2NotFound() *DeleteMemberRolePublicV2NotFound {
	return &DeleteMemberRolePublicV2NotFound{}
}

/*DeleteMemberRolePublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type DeleteMemberRolePublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2NotFound) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteMemberRolePublicV2UnprocessableEntity creates a DeleteMemberRolePublicV2UnprocessableEntity with default headers values
func NewDeleteMemberRolePublicV2UnprocessableEntity() *DeleteMemberRolePublicV2UnprocessableEntity {
	return &DeleteMemberRolePublicV2UnprocessableEntity{}
}

/*DeleteMemberRolePublicV2UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73444</td><td>member must have role</td></tr></table>
*/
type DeleteMemberRolePublicV2UnprocessableEntity struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2UnprocessableEntity) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2UnprocessableEntity) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteMemberRolePublicV2InternalServerError creates a DeleteMemberRolePublicV2InternalServerError with default headers values
func NewDeleteMemberRolePublicV2InternalServerError() *DeleteMemberRolePublicV2InternalServerError {
	return &DeleteMemberRolePublicV2InternalServerError{}
}

/*DeleteMemberRolePublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMemberRolePublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members][%d] deleteMemberRolePublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV2InternalServerError) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
