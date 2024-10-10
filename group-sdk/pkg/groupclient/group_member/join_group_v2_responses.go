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

// JoinGroupV2Reader is a Reader for the JoinGroupV2 structure.
type JoinGroupV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *JoinGroupV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewJoinGroupV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewJoinGroupV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewJoinGroupV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewJoinGroupV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewJoinGroupV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewJoinGroupV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join returns an error %d: %s", response.Code(), string(data))
	}
}

// NewJoinGroupV2Created creates a JoinGroupV2Created with default headers values
func NewJoinGroupV2Created() *JoinGroupV2Created {
	return &JoinGroupV2Created{}
}

/*JoinGroupV2Created handles this case with default header values.

  Created
*/
type JoinGroupV2Created struct {
	Payload *groupclientmodels.ModelsJoinGroupResponseV1
}

func (o *JoinGroupV2Created) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2Created  %+v", 201, o.ToJSONString())
}

func (o *JoinGroupV2Created) ToJSONString() string {
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

func (o *JoinGroupV2Created) GetPayload() *groupclientmodels.ModelsJoinGroupResponseV1 {
	return o.Payload
}

func (o *JoinGroupV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV2BadRequest creates a JoinGroupV2BadRequest with default headers values
func NewJoinGroupV2BadRequest() *JoinGroupV2BadRequest {
	return &JoinGroupV2BadRequest{}
}

/*JoinGroupV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type JoinGroupV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *JoinGroupV2BadRequest) ToJSONString() string {
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

func (o *JoinGroupV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV2Unauthorized creates a JoinGroupV2Unauthorized with default headers values
func NewJoinGroupV2Unauthorized() *JoinGroupV2Unauthorized {
	return &JoinGroupV2Unauthorized{}
}

/*JoinGroupV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type JoinGroupV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *JoinGroupV2Unauthorized) ToJSONString() string {
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

func (o *JoinGroupV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV2Forbidden creates a JoinGroupV2Forbidden with default headers values
func NewJoinGroupV2Forbidden() *JoinGroupV2Forbidden {
	return &JoinGroupV2Forbidden{}
}

/*JoinGroupV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type JoinGroupV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *JoinGroupV2Forbidden) ToJSONString() string {
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

func (o *JoinGroupV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV2Conflict creates a JoinGroupV2Conflict with default headers values
func NewJoinGroupV2Conflict() *JoinGroupV2Conflict {
	return &JoinGroupV2Conflict{}
}

/*JoinGroupV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73442</td><td>user already joined in another group</td></tr></table>
*/
type JoinGroupV2Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV2Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *JoinGroupV2Conflict) ToJSONString() string {
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

func (o *JoinGroupV2Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewJoinGroupV2InternalServerError creates a JoinGroupV2InternalServerError with default headers values
func NewJoinGroupV2InternalServerError() *JoinGroupV2InternalServerError {
	return &JoinGroupV2InternalServerError{}
}

/*JoinGroupV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type JoinGroupV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *JoinGroupV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/groups/{groupId}/join][%d] joinGroupV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *JoinGroupV2InternalServerError) ToJSONString() string {
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

func (o *JoinGroupV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *JoinGroupV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
