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

// AcceptGroupJoinRequestPublicV2Reader is a Reader for the AcceptGroupJoinRequestPublicV2 structure.
type AcceptGroupJoinRequestPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptGroupJoinRequestPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcceptGroupJoinRequestPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptGroupJoinRequestPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAcceptGroupJoinRequestPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAcceptGroupJoinRequestPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcceptGroupJoinRequestPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAcceptGroupJoinRequestPublicV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAcceptGroupJoinRequestPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptGroupJoinRequestPublicV2OK creates a AcceptGroupJoinRequestPublicV2OK with default headers values
func NewAcceptGroupJoinRequestPublicV2OK() *AcceptGroupJoinRequestPublicV2OK {
	return &AcceptGroupJoinRequestPublicV2OK{}
}

/*AcceptGroupJoinRequestPublicV2OK handles this case with default header values.

  OK
*/
type AcceptGroupJoinRequestPublicV2OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *AcceptGroupJoinRequestPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2OK) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2BadRequest creates a AcceptGroupJoinRequestPublicV2BadRequest with default headers values
func NewAcceptGroupJoinRequestPublicV2BadRequest() *AcceptGroupJoinRequestPublicV2BadRequest {
	return &AcceptGroupJoinRequestPublicV2BadRequest{}
}

/*AcceptGroupJoinRequestPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2BadRequest) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2Unauthorized creates a AcceptGroupJoinRequestPublicV2Unauthorized with default headers values
func NewAcceptGroupJoinRequestPublicV2Unauthorized() *AcceptGroupJoinRequestPublicV2Unauthorized {
	return &AcceptGroupJoinRequestPublicV2Unauthorized{}
}

/*AcceptGroupJoinRequestPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2Unauthorized) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2Forbidden creates a AcceptGroupJoinRequestPublicV2Forbidden with default headers values
func NewAcceptGroupJoinRequestPublicV2Forbidden() *AcceptGroupJoinRequestPublicV2Forbidden {
	return &AcceptGroupJoinRequestPublicV2Forbidden{}
}

/*AcceptGroupJoinRequestPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2Forbidden) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2NotFound creates a AcceptGroupJoinRequestPublicV2NotFound with default headers values
func NewAcceptGroupJoinRequestPublicV2NotFound() *AcceptGroupJoinRequestPublicV2NotFound {
	return &AcceptGroupJoinRequestPublicV2NotFound{}
}

/*AcceptGroupJoinRequestPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2NotFound) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2Conflict creates a AcceptGroupJoinRequestPublicV2Conflict with default headers values
func NewAcceptGroupJoinRequestPublicV2Conflict() *AcceptGroupJoinRequestPublicV2Conflict {
	return &AcceptGroupJoinRequestPublicV2Conflict{}
}

/*AcceptGroupJoinRequestPublicV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2Conflict) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV2InternalServerError creates a AcceptGroupJoinRequestPublicV2InternalServerError with default headers values
func NewAcceptGroupJoinRequestPublicV2InternalServerError() *AcceptGroupJoinRequestPublicV2InternalServerError {
	return &AcceptGroupJoinRequestPublicV2InternalServerError{}
}

/*AcceptGroupJoinRequestPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AcceptGroupJoinRequestPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept][%d] acceptGroupJoinRequestPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV2InternalServerError) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
