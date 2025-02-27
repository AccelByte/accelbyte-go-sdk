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

// AcceptGroupJoinRequestPublicV1Reader is a Reader for the AcceptGroupJoinRequestPublicV1 structure.
type AcceptGroupJoinRequestPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcceptGroupJoinRequestPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcceptGroupJoinRequestPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAcceptGroupJoinRequestPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAcceptGroupJoinRequestPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAcceptGroupJoinRequestPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcceptGroupJoinRequestPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAcceptGroupJoinRequestPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAcceptGroupJoinRequestPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcceptGroupJoinRequestPublicV1OK creates a AcceptGroupJoinRequestPublicV1OK with default headers values
func NewAcceptGroupJoinRequestPublicV1OK() *AcceptGroupJoinRequestPublicV1OK {
	return &AcceptGroupJoinRequestPublicV1OK{}
}

/*AcceptGroupJoinRequestPublicV1OK handles this case with default header values.

  OK
*/
type AcceptGroupJoinRequestPublicV1OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *AcceptGroupJoinRequestPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1OK) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1BadRequest creates a AcceptGroupJoinRequestPublicV1BadRequest with default headers values
func NewAcceptGroupJoinRequestPublicV1BadRequest() *AcceptGroupJoinRequestPublicV1BadRequest {
	return &AcceptGroupJoinRequestPublicV1BadRequest{}
}

/*AcceptGroupJoinRequestPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1BadRequest) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1Unauthorized creates a AcceptGroupJoinRequestPublicV1Unauthorized with default headers values
func NewAcceptGroupJoinRequestPublicV1Unauthorized() *AcceptGroupJoinRequestPublicV1Unauthorized {
	return &AcceptGroupJoinRequestPublicV1Unauthorized{}
}

/*AcceptGroupJoinRequestPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1Unauthorized) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1Forbidden creates a AcceptGroupJoinRequestPublicV1Forbidden with default headers values
func NewAcceptGroupJoinRequestPublicV1Forbidden() *AcceptGroupJoinRequestPublicV1Forbidden {
	return &AcceptGroupJoinRequestPublicV1Forbidden{}
}

/*AcceptGroupJoinRequestPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1Forbidden) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1NotFound creates a AcceptGroupJoinRequestPublicV1NotFound with default headers values
func NewAcceptGroupJoinRequestPublicV1NotFound() *AcceptGroupJoinRequestPublicV1NotFound {
	return &AcceptGroupJoinRequestPublicV1NotFound{}
}

/*AcceptGroupJoinRequestPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1NotFound) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1Conflict creates a AcceptGroupJoinRequestPublicV1Conflict with default headers values
func NewAcceptGroupJoinRequestPublicV1Conflict() *AcceptGroupJoinRequestPublicV1Conflict {
	return &AcceptGroupJoinRequestPublicV1Conflict{}
}

/*AcceptGroupJoinRequestPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type AcceptGroupJoinRequestPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1Conflict) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcceptGroupJoinRequestPublicV1InternalServerError creates a AcceptGroupJoinRequestPublicV1InternalServerError with default headers values
func NewAcceptGroupJoinRequestPublicV1InternalServerError() *AcceptGroupJoinRequestPublicV1InternalServerError {
	return &AcceptGroupJoinRequestPublicV1InternalServerError{}
}

/*AcceptGroupJoinRequestPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AcceptGroupJoinRequestPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AcceptGroupJoinRequestPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept][%d] acceptGroupJoinRequestPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AcceptGroupJoinRequestPublicV1InternalServerError) ToJSONString() string {
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

func (o *AcceptGroupJoinRequestPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AcceptGroupJoinRequestPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
