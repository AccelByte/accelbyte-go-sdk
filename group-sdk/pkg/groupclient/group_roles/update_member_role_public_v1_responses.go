// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

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

// UpdateMemberRolePublicV1Reader is a Reader for the UpdateMemberRolePublicV1 structure.
type UpdateMemberRolePublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMemberRolePublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMemberRolePublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMemberRolePublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMemberRolePublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMemberRolePublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMemberRolePublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMemberRolePublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMemberRolePublicV1OK creates a UpdateMemberRolePublicV1OK with default headers values
func NewUpdateMemberRolePublicV1OK() *UpdateMemberRolePublicV1OK {
	return &UpdateMemberRolePublicV1OK{}
}

/*UpdateMemberRolePublicV1OK handles this case with default header values.

  OK
*/
type UpdateMemberRolePublicV1OK struct {
	Payload *groupclientmodels.ModelsGetUserGroupInformationResponseV1
}

func (o *UpdateMemberRolePublicV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1OK) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1OK) GetPayload() *groupclientmodels.ModelsGetUserGroupInformationResponseV1 {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetUserGroupInformationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMemberRolePublicV1BadRequest creates a UpdateMemberRolePublicV1BadRequest with default headers values
func NewUpdateMemberRolePublicV1BadRequest() *UpdateMemberRolePublicV1BadRequest {
	return &UpdateMemberRolePublicV1BadRequest{}
}

/*UpdateMemberRolePublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMemberRolePublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1BadRequest) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV1Unauthorized creates a UpdateMemberRolePublicV1Unauthorized with default headers values
func NewUpdateMemberRolePublicV1Unauthorized() *UpdateMemberRolePublicV1Unauthorized {
	return &UpdateMemberRolePublicV1Unauthorized{}
}

/*UpdateMemberRolePublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateMemberRolePublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1Unauthorized) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV1Forbidden creates a UpdateMemberRolePublicV1Forbidden with default headers values
func NewUpdateMemberRolePublicV1Forbidden() *UpdateMemberRolePublicV1Forbidden {
	return &UpdateMemberRolePublicV1Forbidden{}
}

/*UpdateMemberRolePublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateMemberRolePublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1Forbidden) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV1NotFound creates a UpdateMemberRolePublicV1NotFound with default headers values
func NewUpdateMemberRolePublicV1NotFound() *UpdateMemberRolePublicV1NotFound {
	return &UpdateMemberRolePublicV1NotFound{}
}

/*UpdateMemberRolePublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type UpdateMemberRolePublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1NotFound) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateMemberRolePublicV1InternalServerError creates a UpdateMemberRolePublicV1InternalServerError with default headers values
func NewUpdateMemberRolePublicV1InternalServerError() *UpdateMemberRolePublicV1InternalServerError {
	return &UpdateMemberRolePublicV1InternalServerError{}
}

/*UpdateMemberRolePublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMemberRolePublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] updateMemberRolePublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMemberRolePublicV1InternalServerError) ToJSONString() string {
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

func (o *UpdateMemberRolePublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
