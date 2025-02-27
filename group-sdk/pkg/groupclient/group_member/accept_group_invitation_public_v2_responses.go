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

// AcceptGroupInvitationPublicV2Reader is a Reader for the AcceptGroupInvitationPublicV2 structure.
type AcceptGroupInvitationPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptGroupInvitationPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcceptGroupInvitationPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptGroupInvitationPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAcceptGroupInvitationPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAcceptGroupInvitationPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcceptGroupInvitationPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAcceptGroupInvitationPublicV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAcceptGroupInvitationPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptGroupInvitationPublicV2OK creates a AcceptGroupInvitationPublicV2OK with default headers values
func NewAcceptGroupInvitationPublicV2OK() *AcceptGroupInvitationPublicV2OK {
	return &AcceptGroupInvitationPublicV2OK{}
}

/*AcceptGroupInvitationPublicV2OK handles this case with default header values.

  OK
*/
type AcceptGroupInvitationPublicV2OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *AcceptGroupInvitationPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2OK) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2BadRequest creates a AcceptGroupInvitationPublicV2BadRequest with default headers values
func NewAcceptGroupInvitationPublicV2BadRequest() *AcceptGroupInvitationPublicV2BadRequest {
	return &AcceptGroupInvitationPublicV2BadRequest{}
}

/*AcceptGroupInvitationPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AcceptGroupInvitationPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2BadRequest) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2Unauthorized creates a AcceptGroupInvitationPublicV2Unauthorized with default headers values
func NewAcceptGroupInvitationPublicV2Unauthorized() *AcceptGroupInvitationPublicV2Unauthorized {
	return &AcceptGroupInvitationPublicV2Unauthorized{}
}

/*AcceptGroupInvitationPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AcceptGroupInvitationPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2Unauthorized) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2Forbidden creates a AcceptGroupInvitationPublicV2Forbidden with default headers values
func NewAcceptGroupInvitationPublicV2Forbidden() *AcceptGroupInvitationPublicV2Forbidden {
	return &AcceptGroupInvitationPublicV2Forbidden{}
}

/*AcceptGroupInvitationPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AcceptGroupInvitationPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2Forbidden) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2NotFound creates a AcceptGroupInvitationPublicV2NotFound with default headers values
func NewAcceptGroupInvitationPublicV2NotFound() *AcceptGroupInvitationPublicV2NotFound {
	return &AcceptGroupInvitationPublicV2NotFound{}
}

/*AcceptGroupInvitationPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type AcceptGroupInvitationPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2NotFound) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2Conflict creates a AcceptGroupInvitationPublicV2Conflict with default headers values
func NewAcceptGroupInvitationPublicV2Conflict() *AcceptGroupInvitationPublicV2Conflict {
	return &AcceptGroupInvitationPublicV2Conflict{}
}

/*AcceptGroupInvitationPublicV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type AcceptGroupInvitationPublicV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2Conflict) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupInvitationPublicV2InternalServerError creates a AcceptGroupInvitationPublicV2InternalServerError with default headers values
func NewAcceptGroupInvitationPublicV2InternalServerError() *AcceptGroupInvitationPublicV2InternalServerError {
	return &AcceptGroupInvitationPublicV2InternalServerError{}
}

/*AcceptGroupInvitationPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AcceptGroupInvitationPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV2InternalServerError) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
