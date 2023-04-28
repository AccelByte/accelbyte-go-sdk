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

// RejectGroupJoinRequestPublicV2Reader is a Reader for the RejectGroupJoinRequestPublicV2 structure.
type RejectGroupJoinRequestPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RejectGroupJoinRequestPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRejectGroupJoinRequestPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRejectGroupJoinRequestPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRejectGroupJoinRequestPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRejectGroupJoinRequestPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRejectGroupJoinRequestPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRejectGroupJoinRequestPublicV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRejectGroupJoinRequestPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRejectGroupJoinRequestPublicV2OK creates a RejectGroupJoinRequestPublicV2OK with default headers values
func NewRejectGroupJoinRequestPublicV2OK() *RejectGroupJoinRequestPublicV2OK {
	return &RejectGroupJoinRequestPublicV2OK{}
}

/*RejectGroupJoinRequestPublicV2OK handles this case with default header values.

  OK
*/
type RejectGroupJoinRequestPublicV2OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *RejectGroupJoinRequestPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2OK) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2BadRequest creates a RejectGroupJoinRequestPublicV2BadRequest with default headers values
func NewRejectGroupJoinRequestPublicV2BadRequest() *RejectGroupJoinRequestPublicV2BadRequest {
	return &RejectGroupJoinRequestPublicV2BadRequest{}
}

/*RejectGroupJoinRequestPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RejectGroupJoinRequestPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2BadRequest) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2Unauthorized creates a RejectGroupJoinRequestPublicV2Unauthorized with default headers values
func NewRejectGroupJoinRequestPublicV2Unauthorized() *RejectGroupJoinRequestPublicV2Unauthorized {
	return &RejectGroupJoinRequestPublicV2Unauthorized{}
}

/*RejectGroupJoinRequestPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RejectGroupJoinRequestPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2Unauthorized) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2Forbidden creates a RejectGroupJoinRequestPublicV2Forbidden with default headers values
func NewRejectGroupJoinRequestPublicV2Forbidden() *RejectGroupJoinRequestPublicV2Forbidden {
	return &RejectGroupJoinRequestPublicV2Forbidden{}
}

/*RejectGroupJoinRequestPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type RejectGroupJoinRequestPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2Forbidden) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2NotFound creates a RejectGroupJoinRequestPublicV2NotFound with default headers values
func NewRejectGroupJoinRequestPublicV2NotFound() *RejectGroupJoinRequestPublicV2NotFound {
	return &RejectGroupJoinRequestPublicV2NotFound{}
}

/*RejectGroupJoinRequestPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type RejectGroupJoinRequestPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2NotFound) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2Conflict creates a RejectGroupJoinRequestPublicV2Conflict with default headers values
func NewRejectGroupJoinRequestPublicV2Conflict() *RejectGroupJoinRequestPublicV2Conflict {
	return &RejectGroupJoinRequestPublicV2Conflict{}
}

/*RejectGroupJoinRequestPublicV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type RejectGroupJoinRequestPublicV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2Conflict) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV2InternalServerError creates a RejectGroupJoinRequestPublicV2InternalServerError with default headers values
func NewRejectGroupJoinRequestPublicV2InternalServerError() *RejectGroupJoinRequestPublicV2InternalServerError {
	return &RejectGroupJoinRequestPublicV2InternalServerError{}
}

/*RejectGroupJoinRequestPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RejectGroupJoinRequestPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject][%d] rejectGroupJoinRequestPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV2InternalServerError) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
