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

// CancelGroupJoinRequestV1Reader is a Reader for the CancelGroupJoinRequestV1 structure.
type CancelGroupJoinRequestV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CancelGroupJoinRequestV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCancelGroupJoinRequestV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCancelGroupJoinRequestV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCancelGroupJoinRequestV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCancelGroupJoinRequestV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCancelGroupJoinRequestV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCancelGroupJoinRequestV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCancelGroupJoinRequestV1OK creates a CancelGroupJoinRequestV1OK with default headers values
func NewCancelGroupJoinRequestV1OK() *CancelGroupJoinRequestV1OK {
	return &CancelGroupJoinRequestV1OK{}
}

/*CancelGroupJoinRequestV1OK handles this case with default header values.

  OK
*/
type CancelGroupJoinRequestV1OK struct {
	Payload *groupclientmodels.ModelsMemberRequestGroupResponseV1
}

func (o *CancelGroupJoinRequestV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1OK  %+v", 200, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1OK) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1OK) GetPayload() *groupclientmodels.ModelsMemberRequestGroupResponseV1 {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelGroupJoinRequestV1BadRequest creates a CancelGroupJoinRequestV1BadRequest with default headers values
func NewCancelGroupJoinRequestV1BadRequest() *CancelGroupJoinRequestV1BadRequest {
	return &CancelGroupJoinRequestV1BadRequest{}
}

/*CancelGroupJoinRequestV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CancelGroupJoinRequestV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelGroupJoinRequestV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1BadRequest) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelGroupJoinRequestV1Unauthorized creates a CancelGroupJoinRequestV1Unauthorized with default headers values
func NewCancelGroupJoinRequestV1Unauthorized() *CancelGroupJoinRequestV1Unauthorized {
	return &CancelGroupJoinRequestV1Unauthorized{}
}

/*CancelGroupJoinRequestV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CancelGroupJoinRequestV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelGroupJoinRequestV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1Unauthorized) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelGroupJoinRequestV1Forbidden creates a CancelGroupJoinRequestV1Forbidden with default headers values
func NewCancelGroupJoinRequestV1Forbidden() *CancelGroupJoinRequestV1Forbidden {
	return &CancelGroupJoinRequestV1Forbidden{}
}

/*CancelGroupJoinRequestV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type CancelGroupJoinRequestV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelGroupJoinRequestV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1Forbidden) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelGroupJoinRequestV1NotFound creates a CancelGroupJoinRequestV1NotFound with default headers values
func NewCancelGroupJoinRequestV1NotFound() *CancelGroupJoinRequestV1NotFound {
	return &CancelGroupJoinRequestV1NotFound{}
}

/*CancelGroupJoinRequestV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73443</td><td>member request not found</td></tr></table>
*/
type CancelGroupJoinRequestV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelGroupJoinRequestV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1NotFound) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCancelGroupJoinRequestV1InternalServerError creates a CancelGroupJoinRequestV1InternalServerError with default headers values
func NewCancelGroupJoinRequestV1InternalServerError() *CancelGroupJoinRequestV1InternalServerError {
	return &CancelGroupJoinRequestV1InternalServerError{}
}

/*CancelGroupJoinRequestV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CancelGroupJoinRequestV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelGroupJoinRequestV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel][%d] cancelGroupJoinRequestV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CancelGroupJoinRequestV1InternalServerError) ToJSONString() string {
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

func (o *CancelGroupJoinRequestV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelGroupJoinRequestV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
