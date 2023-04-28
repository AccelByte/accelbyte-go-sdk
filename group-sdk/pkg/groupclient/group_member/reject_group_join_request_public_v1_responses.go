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

// RejectGroupJoinRequestPublicV1Reader is a Reader for the RejectGroupJoinRequestPublicV1 structure.
type RejectGroupJoinRequestPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RejectGroupJoinRequestPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRejectGroupJoinRequestPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRejectGroupJoinRequestPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRejectGroupJoinRequestPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRejectGroupJoinRequestPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRejectGroupJoinRequestPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRejectGroupJoinRequestPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRejectGroupJoinRequestPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRejectGroupJoinRequestPublicV1OK creates a RejectGroupJoinRequestPublicV1OK with default headers values
func NewRejectGroupJoinRequestPublicV1OK() *RejectGroupJoinRequestPublicV1OK {
	return &RejectGroupJoinRequestPublicV1OK{}
}

/*RejectGroupJoinRequestPublicV1OK handles this case with default header values.

  OK
*/
type RejectGroupJoinRequestPublicV1OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *RejectGroupJoinRequestPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1OK) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1BadRequest creates a RejectGroupJoinRequestPublicV1BadRequest with default headers values
func NewRejectGroupJoinRequestPublicV1BadRequest() *RejectGroupJoinRequestPublicV1BadRequest {
	return &RejectGroupJoinRequestPublicV1BadRequest{}
}

/*RejectGroupJoinRequestPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RejectGroupJoinRequestPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1BadRequest) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1Unauthorized creates a RejectGroupJoinRequestPublicV1Unauthorized with default headers values
func NewRejectGroupJoinRequestPublicV1Unauthorized() *RejectGroupJoinRequestPublicV1Unauthorized {
	return &RejectGroupJoinRequestPublicV1Unauthorized{}
}

/*RejectGroupJoinRequestPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RejectGroupJoinRequestPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1Unauthorized) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1Forbidden creates a RejectGroupJoinRequestPublicV1Forbidden with default headers values
func NewRejectGroupJoinRequestPublicV1Forbidden() *RejectGroupJoinRequestPublicV1Forbidden {
	return &RejectGroupJoinRequestPublicV1Forbidden{}
}

/*RejectGroupJoinRequestPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type RejectGroupJoinRequestPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1Forbidden) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1NotFound creates a RejectGroupJoinRequestPublicV1NotFound with default headers values
func NewRejectGroupJoinRequestPublicV1NotFound() *RejectGroupJoinRequestPublicV1NotFound {
	return &RejectGroupJoinRequestPublicV1NotFound{}
}

/*RejectGroupJoinRequestPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type RejectGroupJoinRequestPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1NotFound) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1Conflict creates a RejectGroupJoinRequestPublicV1Conflict with default headers values
func NewRejectGroupJoinRequestPublicV1Conflict() *RejectGroupJoinRequestPublicV1Conflict {
	return &RejectGroupJoinRequestPublicV1Conflict{}
}

/*RejectGroupJoinRequestPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type RejectGroupJoinRequestPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1Conflict) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRejectGroupJoinRequestPublicV1InternalServerError creates a RejectGroupJoinRequestPublicV1InternalServerError with default headers values
func NewRejectGroupJoinRequestPublicV1InternalServerError() *RejectGroupJoinRequestPublicV1InternalServerError {
	return &RejectGroupJoinRequestPublicV1InternalServerError{}
}

/*RejectGroupJoinRequestPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RejectGroupJoinRequestPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *RejectGroupJoinRequestPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject][%d] rejectGroupJoinRequestPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RejectGroupJoinRequestPublicV1InternalServerError) ToJSONString() string {
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

func (o *RejectGroupJoinRequestPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RejectGroupJoinRequestPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
