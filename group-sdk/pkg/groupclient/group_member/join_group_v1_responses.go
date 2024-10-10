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

// JoinGroupV1Reader is a Reader for the JoinGroupV1 structure.
type JoinGroupV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *JoinGroupV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewJoinGroupV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewJoinGroupV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewJoinGroupV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewJoinGroupV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewJoinGroupV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewJoinGroupV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join returns an error %d: %s", response.Code(), string(data))
	}
}

// NewJoinGroupV1Created creates a JoinGroupV1Created with default headers values
func NewJoinGroupV1Created() *JoinGroupV1Created {
	return &JoinGroupV1Created{}
}

/*JoinGroupV1Created handles this case with default header values.

  Created
*/
type JoinGroupV1Created struct {
	Payload *groupclientmodels.ModelsJoinGroupResponseV1
}

func (o *JoinGroupV1Created) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1Created  %+v", 201, o.ToJSONString())
}

func (o *JoinGroupV1Created) ToJSONString() string {
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

func (o *JoinGroupV1Created) GetPayload() *groupclientmodels.ModelsJoinGroupResponseV1 {
	return o.Payload
}

func (o *JoinGroupV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsJoinGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewJoinGroupV1BadRequest creates a JoinGroupV1BadRequest with default headers values
func NewJoinGroupV1BadRequest() *JoinGroupV1BadRequest {
	return &JoinGroupV1BadRequest{}
}

/*JoinGroupV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type JoinGroupV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *JoinGroupV1BadRequest) ToJSONString() string {
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

func (o *JoinGroupV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV1Unauthorized creates a JoinGroupV1Unauthorized with default headers values
func NewJoinGroupV1Unauthorized() *JoinGroupV1Unauthorized {
	return &JoinGroupV1Unauthorized{}
}

/*JoinGroupV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type JoinGroupV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *JoinGroupV1Unauthorized) ToJSONString() string {
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

func (o *JoinGroupV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV1Forbidden creates a JoinGroupV1Forbidden with default headers values
func NewJoinGroupV1Forbidden() *JoinGroupV1Forbidden {
	return &JoinGroupV1Forbidden{}
}

/*JoinGroupV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type JoinGroupV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *JoinGroupV1Forbidden) ToJSONString() string {
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

func (o *JoinGroupV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV1Conflict creates a JoinGroupV1Conflict with default headers values
func NewJoinGroupV1Conflict() *JoinGroupV1Conflict {
	return &JoinGroupV1Conflict{}
}

/*JoinGroupV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type JoinGroupV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *JoinGroupV1Conflict) ToJSONString() string {
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

func (o *JoinGroupV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV1InternalServerError creates a JoinGroupV1InternalServerError with default headers values
func NewJoinGroupV1InternalServerError() *JoinGroupV1InternalServerError {
	return &JoinGroupV1InternalServerError{}
}

/*JoinGroupV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type JoinGroupV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *JoinGroupV1InternalServerError) ToJSONString() string {
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

func (o *JoinGroupV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
