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

// LeaveGroupPublicV2Reader is a Reader for the LeaveGroupPublicV2 structure.
type LeaveGroupPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LeaveGroupPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewLeaveGroupPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewLeaveGroupPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewLeaveGroupPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewLeaveGroupPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewLeaveGroupPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewLeaveGroupPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLeaveGroupPublicV2OK creates a LeaveGroupPublicV2OK with default headers values
func NewLeaveGroupPublicV2OK() *LeaveGroupPublicV2OK {
	return &LeaveGroupPublicV2OK{}
}

/*LeaveGroupPublicV2OK handles this case with default header values.

  OK
*/
type LeaveGroupPublicV2OK struct {
	Payload *groupclientmodels.ModelsLeaveGroupResponseV1
}

func (o *LeaveGroupPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *LeaveGroupPublicV2OK) ToJSONString() string {
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

func (o *LeaveGroupPublicV2OK) GetPayload() *groupclientmodels.ModelsLeaveGroupResponseV1 {
	return o.Payload
}

func (o *LeaveGroupPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsLeaveGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLeaveGroupPublicV2BadRequest creates a LeaveGroupPublicV2BadRequest with default headers values
func NewLeaveGroupPublicV2BadRequest() *LeaveGroupPublicV2BadRequest {
	return &LeaveGroupPublicV2BadRequest{}
}

/*LeaveGroupPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>73440</td><td>group admin cannot leave group</td></tr></table>
*/
type LeaveGroupPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *LeaveGroupPublicV2BadRequest) ToJSONString() string {
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

func (o *LeaveGroupPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV2Unauthorized creates a LeaveGroupPublicV2Unauthorized with default headers values
func NewLeaveGroupPublicV2Unauthorized() *LeaveGroupPublicV2Unauthorized {
	return &LeaveGroupPublicV2Unauthorized{}
}

/*LeaveGroupPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type LeaveGroupPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *LeaveGroupPublicV2Unauthorized) ToJSONString() string {
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

func (o *LeaveGroupPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV2Forbidden creates a LeaveGroupPublicV2Forbidden with default headers values
func NewLeaveGroupPublicV2Forbidden() *LeaveGroupPublicV2Forbidden {
	return &LeaveGroupPublicV2Forbidden{}
}

/*LeaveGroupPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type LeaveGroupPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *LeaveGroupPublicV2Forbidden) ToJSONString() string {
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

func (o *LeaveGroupPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV2NotFound creates a LeaveGroupPublicV2NotFound with default headers values
func NewLeaveGroupPublicV2NotFound() *LeaveGroupPublicV2NotFound {
	return &LeaveGroupPublicV2NotFound{}
}

/*LeaveGroupPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type LeaveGroupPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *LeaveGroupPublicV2NotFound) ToJSONString() string {
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

func (o *LeaveGroupPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV2InternalServerError creates a LeaveGroupPublicV2InternalServerError with default headers values
func NewLeaveGroupPublicV2InternalServerError() *LeaveGroupPublicV2InternalServerError {
	return &LeaveGroupPublicV2InternalServerError{}
}

/*LeaveGroupPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type LeaveGroupPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave][%d] leaveGroupPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *LeaveGroupPublicV2InternalServerError) ToJSONString() string {
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

func (o *LeaveGroupPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
