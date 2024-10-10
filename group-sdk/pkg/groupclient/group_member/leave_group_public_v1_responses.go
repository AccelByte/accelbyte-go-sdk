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

// LeaveGroupPublicV1Reader is a Reader for the LeaveGroupPublicV1 structure.
type LeaveGroupPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LeaveGroupPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewLeaveGroupPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewLeaveGroupPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewLeaveGroupPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewLeaveGroupPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewLeaveGroupPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewLeaveGroupPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/leave returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLeaveGroupPublicV1OK creates a LeaveGroupPublicV1OK with default headers values
func NewLeaveGroupPublicV1OK() *LeaveGroupPublicV1OK {
	return &LeaveGroupPublicV1OK{}
}

/*LeaveGroupPublicV1OK handles this case with default header values.

  OK
*/
type LeaveGroupPublicV1OK struct {
	Payload *groupclientmodels.ModelsLeaveGroupResponseV1
}

func (o *LeaveGroupPublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *LeaveGroupPublicV1OK) ToJSONString() string {
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

func (o *LeaveGroupPublicV1OK) GetPayload() *groupclientmodels.ModelsLeaveGroupResponseV1 {
	return o.Payload
}

func (o *LeaveGroupPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV1BadRequest creates a LeaveGroupPublicV1BadRequest with default headers values
func NewLeaveGroupPublicV1BadRequest() *LeaveGroupPublicV1BadRequest {
	return &LeaveGroupPublicV1BadRequest{}
}

/*LeaveGroupPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>73440</td><td>group admin cannot leave group</td></tr></table>
*/
type LeaveGroupPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *LeaveGroupPublicV1BadRequest) ToJSONString() string {
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

func (o *LeaveGroupPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV1Unauthorized creates a LeaveGroupPublicV1Unauthorized with default headers values
func NewLeaveGroupPublicV1Unauthorized() *LeaveGroupPublicV1Unauthorized {
	return &LeaveGroupPublicV1Unauthorized{}
}

/*LeaveGroupPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type LeaveGroupPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *LeaveGroupPublicV1Unauthorized) ToJSONString() string {
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

func (o *LeaveGroupPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV1Forbidden creates a LeaveGroupPublicV1Forbidden with default headers values
func NewLeaveGroupPublicV1Forbidden() *LeaveGroupPublicV1Forbidden {
	return &LeaveGroupPublicV1Forbidden{}
}

/*LeaveGroupPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type LeaveGroupPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *LeaveGroupPublicV1Forbidden) ToJSONString() string {
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

func (o *LeaveGroupPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV1NotFound creates a LeaveGroupPublicV1NotFound with default headers values
func NewLeaveGroupPublicV1NotFound() *LeaveGroupPublicV1NotFound {
	return &LeaveGroupPublicV1NotFound{}
}

/*LeaveGroupPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type LeaveGroupPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *LeaveGroupPublicV1NotFound) ToJSONString() string {
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

func (o *LeaveGroupPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewLeaveGroupPublicV1InternalServerError creates a LeaveGroupPublicV1InternalServerError with default headers values
func NewLeaveGroupPublicV1InternalServerError() *LeaveGroupPublicV1InternalServerError {
	return &LeaveGroupPublicV1InternalServerError{}
}

/*LeaveGroupPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type LeaveGroupPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *LeaveGroupPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/leave][%d] leaveGroupPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *LeaveGroupPublicV1InternalServerError) ToJSONString() string {
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

func (o *LeaveGroupPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *LeaveGroupPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
