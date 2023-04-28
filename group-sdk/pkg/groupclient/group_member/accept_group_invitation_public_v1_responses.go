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

// AcceptGroupInvitationPublicV1Reader is a Reader for the AcceptGroupInvitationPublicV1 structure.
type AcceptGroupInvitationPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptGroupInvitationPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcceptGroupInvitationPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptGroupInvitationPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAcceptGroupInvitationPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAcceptGroupInvitationPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcceptGroupInvitationPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAcceptGroupInvitationPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAcceptGroupInvitationPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptGroupInvitationPublicV1OK creates a AcceptGroupInvitationPublicV1OK with default headers values
func NewAcceptGroupInvitationPublicV1OK() *AcceptGroupInvitationPublicV1OK {
	return &AcceptGroupInvitationPublicV1OK{}
}

/*AcceptGroupInvitationPublicV1OK handles this case with default header values.

  OK
*/
type AcceptGroupInvitationPublicV1OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *AcceptGroupInvitationPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1OK) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1BadRequest creates a AcceptGroupInvitationPublicV1BadRequest with default headers values
func NewAcceptGroupInvitationPublicV1BadRequest() *AcceptGroupInvitationPublicV1BadRequest {
	return &AcceptGroupInvitationPublicV1BadRequest{}
}

/*AcceptGroupInvitationPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AcceptGroupInvitationPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1BadRequest) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1Unauthorized creates a AcceptGroupInvitationPublicV1Unauthorized with default headers values
func NewAcceptGroupInvitationPublicV1Unauthorized() *AcceptGroupInvitationPublicV1Unauthorized {
	return &AcceptGroupInvitationPublicV1Unauthorized{}
}

/*AcceptGroupInvitationPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AcceptGroupInvitationPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1Unauthorized) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1Forbidden creates a AcceptGroupInvitationPublicV1Forbidden with default headers values
func NewAcceptGroupInvitationPublicV1Forbidden() *AcceptGroupInvitationPublicV1Forbidden {
	return &AcceptGroupInvitationPublicV1Forbidden{}
}

/*AcceptGroupInvitationPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AcceptGroupInvitationPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1Forbidden) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1NotFound creates a AcceptGroupInvitationPublicV1NotFound with default headers values
func NewAcceptGroupInvitationPublicV1NotFound() *AcceptGroupInvitationPublicV1NotFound {
	return &AcceptGroupInvitationPublicV1NotFound{}
}

/*AcceptGroupInvitationPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type AcceptGroupInvitationPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1NotFound) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1Conflict creates a AcceptGroupInvitationPublicV1Conflict with default headers values
func NewAcceptGroupInvitationPublicV1Conflict() *AcceptGroupInvitationPublicV1Conflict {
	return &AcceptGroupInvitationPublicV1Conflict{}
}

/*AcceptGroupInvitationPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type AcceptGroupInvitationPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1Conflict) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAcceptGroupInvitationPublicV1InternalServerError creates a AcceptGroupInvitationPublicV1InternalServerError with default headers values
func NewAcceptGroupInvitationPublicV1InternalServerError() *AcceptGroupInvitationPublicV1InternalServerError {
	return &AcceptGroupInvitationPublicV1InternalServerError{}
}

/*AcceptGroupInvitationPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AcceptGroupInvitationPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupInvitationPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept][%d] acceptGroupInvitationPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AcceptGroupInvitationPublicV1InternalServerError) ToJSONString() string {
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

func (o *AcceptGroupInvitationPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupInvitationPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
