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

// RejectGroupInvitationPublicV1Reader is a Reader for the RejectGroupInvitationPublicV1 structure.
type RejectGroupInvitationPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RejectGroupInvitationPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRejectGroupInvitationPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRejectGroupInvitationPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRejectGroupInvitationPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRejectGroupInvitationPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRejectGroupInvitationPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRejectGroupInvitationPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRejectGroupInvitationPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRejectGroupInvitationPublicV1OK creates a RejectGroupInvitationPublicV1OK with default headers values
func NewRejectGroupInvitationPublicV1OK() *RejectGroupInvitationPublicV1OK {
	return &RejectGroupInvitationPublicV1OK{}
}

/*RejectGroupInvitationPublicV1OK handles this case with default header values.

  OK
*/
type RejectGroupInvitationPublicV1OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *RejectGroupInvitationPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1OK) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsMemberRequestGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRejectGroupInvitationPublicV1BadRequest creates a RejectGroupInvitationPublicV1BadRequest with default headers values
func NewRejectGroupInvitationPublicV1BadRequest() *RejectGroupInvitationPublicV1BadRequest {
	return &RejectGroupInvitationPublicV1BadRequest{}
}

/*RejectGroupInvitationPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RejectGroupInvitationPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1BadRequest) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRejectGroupInvitationPublicV1Unauthorized creates a RejectGroupInvitationPublicV1Unauthorized with default headers values
func NewRejectGroupInvitationPublicV1Unauthorized() *RejectGroupInvitationPublicV1Unauthorized {
	return &RejectGroupInvitationPublicV1Unauthorized{}
}

/*RejectGroupInvitationPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RejectGroupInvitationPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1Unauthorized) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRejectGroupInvitationPublicV1Forbidden creates a RejectGroupInvitationPublicV1Forbidden with default headers values
func NewRejectGroupInvitationPublicV1Forbidden() *RejectGroupInvitationPublicV1Forbidden {
	return &RejectGroupInvitationPublicV1Forbidden{}
}

/*RejectGroupInvitationPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type RejectGroupInvitationPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1Forbidden) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRejectGroupInvitationPublicV1NotFound creates a RejectGroupInvitationPublicV1NotFound with default headers values
func NewRejectGroupInvitationPublicV1NotFound() *RejectGroupInvitationPublicV1NotFound {
	return &RejectGroupInvitationPublicV1NotFound{}
}

/*RejectGroupInvitationPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type RejectGroupInvitationPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1NotFound) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRejectGroupInvitationPublicV1Conflict creates a RejectGroupInvitationPublicV1Conflict with default headers values
func NewRejectGroupInvitationPublicV1Conflict() *RejectGroupInvitationPublicV1Conflict {
	return &RejectGroupInvitationPublicV1Conflict{}
}

/*RejectGroupInvitationPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type RejectGroupInvitationPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1Conflict) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRejectGroupInvitationPublicV1InternalServerError creates a RejectGroupInvitationPublicV1InternalServerError with default headers values
func NewRejectGroupInvitationPublicV1InternalServerError() *RejectGroupInvitationPublicV1InternalServerError {
	return &RejectGroupInvitationPublicV1InternalServerError{}
}

/*RejectGroupInvitationPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RejectGroupInvitationPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV1InternalServerError) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
