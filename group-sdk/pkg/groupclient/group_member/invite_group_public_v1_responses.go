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

// InviteGroupPublicV1Reader is a Reader for the InviteGroupPublicV1 structure.
type InviteGroupPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InviteGroupPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewInviteGroupPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewInviteGroupPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewInviteGroupPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewInviteGroupPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewInviteGroupPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewInviteGroupPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewInviteGroupPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInviteGroupPublicV1OK creates a InviteGroupPublicV1OK with default headers values
func NewInviteGroupPublicV1OK() *InviteGroupPublicV1OK {
	return &InviteGroupPublicV1OK{}
}

/*InviteGroupPublicV1OK handles this case with default header values.

  OK
*/
type InviteGroupPublicV1OK struct {
	Payload *groupclientmodels.ModelsUserInvitationResponseV1
}

func (o *InviteGroupPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *InviteGroupPublicV1OK) ToJSONString() string {
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

func (o *InviteGroupPublicV1OK) GetPayload() *groupclientmodels.ModelsUserInvitationResponseV1 {
	return o.Payload
}

func (o *InviteGroupPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1BadRequest creates a InviteGroupPublicV1BadRequest with default headers values
func NewInviteGroupPublicV1BadRequest() *InviteGroupPublicV1BadRequest {
	return &InviteGroupPublicV1BadRequest{}
}

/*InviteGroupPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type InviteGroupPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *InviteGroupPublicV1BadRequest) ToJSONString() string {
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

func (o *InviteGroupPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1Unauthorized creates a InviteGroupPublicV1Unauthorized with default headers values
func NewInviteGroupPublicV1Unauthorized() *InviteGroupPublicV1Unauthorized {
	return &InviteGroupPublicV1Unauthorized{}
}

/*InviteGroupPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type InviteGroupPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *InviteGroupPublicV1Unauthorized) ToJSONString() string {
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

func (o *InviteGroupPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1Forbidden creates a InviteGroupPublicV1Forbidden with default headers values
func NewInviteGroupPublicV1Forbidden() *InviteGroupPublicV1Forbidden {
	return &InviteGroupPublicV1Forbidden{}
}

/*InviteGroupPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type InviteGroupPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *InviteGroupPublicV1Forbidden) ToJSONString() string {
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

func (o *InviteGroupPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1NotFound creates a InviteGroupPublicV1NotFound with default headers values
func NewInviteGroupPublicV1NotFound() *InviteGroupPublicV1NotFound {
	return &InviteGroupPublicV1NotFound{}
}

/*InviteGroupPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type InviteGroupPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *InviteGroupPublicV1NotFound) ToJSONString() string {
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

func (o *InviteGroupPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1Conflict creates a InviteGroupPublicV1Conflict with default headers values
func NewInviteGroupPublicV1Conflict() *InviteGroupPublicV1Conflict {
	return &InviteGroupPublicV1Conflict{}
}

/*InviteGroupPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr><tr><td>73437</td><td>user already invited</td></tr><tr><td>73438</td><td>user already requested to join</td></tr></table>
*/
type InviteGroupPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *InviteGroupPublicV1Conflict) ToJSONString() string {
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

func (o *InviteGroupPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInviteGroupPublicV1InternalServerError creates a InviteGroupPublicV1InternalServerError with default headers values
func NewInviteGroupPublicV1InternalServerError() *InviteGroupPublicV1InternalServerError {
	return &InviteGroupPublicV1InternalServerError{}
}

/*InviteGroupPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type InviteGroupPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InviteGroupPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/invite][%d] inviteGroupPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *InviteGroupPublicV1InternalServerError) ToJSONString() string {
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

func (o *InviteGroupPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InviteGroupPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
