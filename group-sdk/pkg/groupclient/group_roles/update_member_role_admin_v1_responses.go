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

// UpdateMemberRoleAdminV1Reader is a Reader for the UpdateMemberRoleAdminV1 structure.
type UpdateMemberRoleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMemberRoleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMemberRoleAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMemberRoleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMemberRoleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMemberRoleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMemberRoleAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMemberRoleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMemberRoleAdminV1OK creates a UpdateMemberRoleAdminV1OK with default headers values
func NewUpdateMemberRoleAdminV1OK() *UpdateMemberRoleAdminV1OK {
	return &UpdateMemberRoleAdminV1OK{}
}

/*UpdateMemberRoleAdminV1OK handles this case with default header values.

  OK
*/
type UpdateMemberRoleAdminV1OK struct {
	Payload *groupclientmodels.ModelsMemberRoleResponseV1
}

func (o *UpdateMemberRoleAdminV1OK) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1OK) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1OK) GetPayload() *groupclientmodels.ModelsMemberRoleResponseV1 {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsMemberRoleResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMemberRoleAdminV1BadRequest creates a UpdateMemberRoleAdminV1BadRequest with default headers values
func NewUpdateMemberRoleAdminV1BadRequest() *UpdateMemberRoleAdminV1BadRequest {
	return &UpdateMemberRoleAdminV1BadRequest{}
}

/*UpdateMemberRoleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMemberRoleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRoleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1BadRequest) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRoleAdminV1Unauthorized creates a UpdateMemberRoleAdminV1Unauthorized with default headers values
func NewUpdateMemberRoleAdminV1Unauthorized() *UpdateMemberRoleAdminV1Unauthorized {
	return &UpdateMemberRoleAdminV1Unauthorized{}
}

/*UpdateMemberRoleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateMemberRoleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRoleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1Unauthorized) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRoleAdminV1Forbidden creates a UpdateMemberRoleAdminV1Forbidden with default headers values
func NewUpdateMemberRoleAdminV1Forbidden() *UpdateMemberRoleAdminV1Forbidden {
	return &UpdateMemberRoleAdminV1Forbidden{}
}

/*UpdateMemberRoleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateMemberRoleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRoleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1Forbidden) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRoleAdminV1NotFound creates a UpdateMemberRoleAdminV1NotFound with default headers values
func NewUpdateMemberRoleAdminV1NotFound() *UpdateMemberRoleAdminV1NotFound {
	return &UpdateMemberRoleAdminV1NotFound{}
}

/*UpdateMemberRoleAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type UpdateMemberRoleAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRoleAdminV1NotFound) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1NotFound) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRoleAdminV1InternalServerError creates a UpdateMemberRoleAdminV1InternalServerError with default headers values
func NewUpdateMemberRoleAdminV1InternalServerError() *UpdateMemberRoleAdminV1InternalServerError {
	return &UpdateMemberRoleAdminV1InternalServerError{}
}

/*UpdateMemberRoleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMemberRoleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRoleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] updateMemberRoleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMemberRoleAdminV1InternalServerError) ToJSONString() string {
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

func (o *UpdateMemberRoleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRoleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
