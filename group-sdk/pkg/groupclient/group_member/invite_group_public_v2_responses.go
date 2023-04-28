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

// InviteGroupPublicV2Reader is a Reader for the InviteGroupPublicV2 structure.
type InviteGroupPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InviteGroupPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewInviteGroupPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewInviteGroupPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewInviteGroupPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewInviteGroupPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewInviteGroupPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewInviteGroupPublicV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewInviteGroupPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInviteGroupPublicV2OK creates a InviteGroupPublicV2OK with default headers values
func NewInviteGroupPublicV2OK() *InviteGroupPublicV2OK {
	return &InviteGroupPublicV2OK{}
}

/*InviteGroupPublicV2OK handles this case with default header values.

  OK
*/
type InviteGroupPublicV2OK struct {
	Payload *groupclientmodels.ModelsUserInvitationResponseV1
}

func (o *InviteGroupPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *InviteGroupPublicV2OK) ToJSONString() string {
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

func (o *InviteGroupPublicV2OK) GetPayload() *groupclientmodels.ModelsUserInvitationResponseV1 {
	return o.Payload
}

func (o *InviteGroupPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsUserInvitationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInviteGroupPublicV2BadRequest creates a InviteGroupPublicV2BadRequest with default headers values
func NewInviteGroupPublicV2BadRequest() *InviteGroupPublicV2BadRequest {
	return &InviteGroupPublicV2BadRequest{}
}

/*InviteGroupPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type InviteGroupPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *InviteGroupPublicV2BadRequest) ToJSONString() string {
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

func (o *InviteGroupPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewInviteGroupPublicV2Unauthorized creates a InviteGroupPublicV2Unauthorized with default headers values
func NewInviteGroupPublicV2Unauthorized() *InviteGroupPublicV2Unauthorized {
	return &InviteGroupPublicV2Unauthorized{}
}

/*InviteGroupPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type InviteGroupPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *InviteGroupPublicV2Unauthorized) ToJSONString() string {
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

func (o *InviteGroupPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewInviteGroupPublicV2Forbidden creates a InviteGroupPublicV2Forbidden with default headers values
func NewInviteGroupPublicV2Forbidden() *InviteGroupPublicV2Forbidden {
	return &InviteGroupPublicV2Forbidden{}
}

/*InviteGroupPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type InviteGroupPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *InviteGroupPublicV2Forbidden) ToJSONString() string {
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

func (o *InviteGroupPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewInviteGroupPublicV2NotFound creates a InviteGroupPublicV2NotFound with default headers values
func NewInviteGroupPublicV2NotFound() *InviteGroupPublicV2NotFound {
	return &InviteGroupPublicV2NotFound{}
}

/*InviteGroupPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type InviteGroupPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *InviteGroupPublicV2NotFound) ToJSONString() string {
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

func (o *InviteGroupPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewInviteGroupPublicV2Conflict creates a InviteGroupPublicV2Conflict with default headers values
func NewInviteGroupPublicV2Conflict() *InviteGroupPublicV2Conflict {
	return &InviteGroupPublicV2Conflict{}
}

/*InviteGroupPublicV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr><tr><td>73437</td><td>user already invited</td></tr><tr><td>73438</td><td>user already requested to join</td></tr></table>
*/
type InviteGroupPublicV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *InviteGroupPublicV2Conflict) ToJSONString() string {
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

func (o *InviteGroupPublicV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewInviteGroupPublicV2InternalServerError creates a InviteGroupPublicV2InternalServerError with default headers values
func NewInviteGroupPublicV2InternalServerError() *InviteGroupPublicV2InternalServerError {
	return &InviteGroupPublicV2InternalServerError{}
}

/*InviteGroupPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type InviteGroupPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite][%d] inviteGroupPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *InviteGroupPublicV2InternalServerError) ToJSONString() string {
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

func (o *InviteGroupPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
