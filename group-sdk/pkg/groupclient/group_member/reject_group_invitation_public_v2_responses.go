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

// RejectGroupInvitationPublicV2Reader is a Reader for the RejectGroupInvitationPublicV2 structure.
type RejectGroupInvitationPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RejectGroupInvitationPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRejectGroupInvitationPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRejectGroupInvitationPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRejectGroupInvitationPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRejectGroupInvitationPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRejectGroupInvitationPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRejectGroupInvitationPublicV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRejectGroupInvitationPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRejectGroupInvitationPublicV2OK creates a RejectGroupInvitationPublicV2OK with default headers values
func NewRejectGroupInvitationPublicV2OK() *RejectGroupInvitationPublicV2OK {
	return &RejectGroupInvitationPublicV2OK{}
}

/*RejectGroupInvitationPublicV2OK handles this case with default header values.

  OK
*/
type RejectGroupInvitationPublicV2OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *RejectGroupInvitationPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2OK) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2BadRequest creates a RejectGroupInvitationPublicV2BadRequest with default headers values
func NewRejectGroupInvitationPublicV2BadRequest() *RejectGroupInvitationPublicV2BadRequest {
	return &RejectGroupInvitationPublicV2BadRequest{}
}

/*RejectGroupInvitationPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RejectGroupInvitationPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2BadRequest) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2Unauthorized creates a RejectGroupInvitationPublicV2Unauthorized with default headers values
func NewRejectGroupInvitationPublicV2Unauthorized() *RejectGroupInvitationPublicV2Unauthorized {
	return &RejectGroupInvitationPublicV2Unauthorized{}
}

/*RejectGroupInvitationPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RejectGroupInvitationPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2Unauthorized) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2Forbidden creates a RejectGroupInvitationPublicV2Forbidden with default headers values
func NewRejectGroupInvitationPublicV2Forbidden() *RejectGroupInvitationPublicV2Forbidden {
	return &RejectGroupInvitationPublicV2Forbidden{}
}

/*RejectGroupInvitationPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type RejectGroupInvitationPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2Forbidden) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2NotFound creates a RejectGroupInvitationPublicV2NotFound with default headers values
func NewRejectGroupInvitationPublicV2NotFound() *RejectGroupInvitationPublicV2NotFound {
	return &RejectGroupInvitationPublicV2NotFound{}
}

/*RejectGroupInvitationPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type RejectGroupInvitationPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2NotFound) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2Conflict creates a RejectGroupInvitationPublicV2Conflict with default headers values
func NewRejectGroupInvitationPublicV2Conflict() *RejectGroupInvitationPublicV2Conflict {
	return &RejectGroupInvitationPublicV2Conflict{}
}

/*RejectGroupInvitationPublicV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type RejectGroupInvitationPublicV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2Conflict) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupInvitationPublicV2InternalServerError creates a RejectGroupInvitationPublicV2InternalServerError with default headers values
func NewRejectGroupInvitationPublicV2InternalServerError() *RejectGroupInvitationPublicV2InternalServerError {
	return &RejectGroupInvitationPublicV2InternalServerError{}
}

/*RejectGroupInvitationPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RejectGroupInvitationPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupInvitationPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject][%d] rejectGroupInvitationPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RejectGroupInvitationPublicV2InternalServerError) ToJSONString() string {
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

func (o *RejectGroupInvitationPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupInvitationPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
