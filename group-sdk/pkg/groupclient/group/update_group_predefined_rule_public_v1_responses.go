// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// UpdateGroupPredefinedRulePublicV1Reader is a Reader for the UpdateGroupPredefinedRulePublicV1 structure.
type UpdateGroupPredefinedRulePublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupPredefinedRulePublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupPredefinedRulePublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupPredefinedRulePublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupPredefinedRulePublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupPredefinedRulePublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupPredefinedRulePublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupPredefinedRulePublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupPredefinedRulePublicV1OK creates a UpdateGroupPredefinedRulePublicV1OK with default headers values
func NewUpdateGroupPredefinedRulePublicV1OK() *UpdateGroupPredefinedRulePublicV1OK {
	return &UpdateGroupPredefinedRulePublicV1OK{}
}

/*UpdateGroupPredefinedRulePublicV1OK handles this case with default header values.

  OK
*/
type UpdateGroupPredefinedRulePublicV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupPredefinedRulePublicV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1OK) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupPredefinedRulePublicV1BadRequest creates a UpdateGroupPredefinedRulePublicV1BadRequest with default headers values
func NewUpdateGroupPredefinedRulePublicV1BadRequest() *UpdateGroupPredefinedRulePublicV1BadRequest {
	return &UpdateGroupPredefinedRulePublicV1BadRequest{}
}

/*UpdateGroupPredefinedRulePublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1BadRequest) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV1Unauthorized creates a UpdateGroupPredefinedRulePublicV1Unauthorized with default headers values
func NewUpdateGroupPredefinedRulePublicV1Unauthorized() *UpdateGroupPredefinedRulePublicV1Unauthorized {
	return &UpdateGroupPredefinedRulePublicV1Unauthorized{}
}

/*UpdateGroupPredefinedRulePublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV1Forbidden creates a UpdateGroupPredefinedRulePublicV1Forbidden with default headers values
func NewUpdateGroupPredefinedRulePublicV1Forbidden() *UpdateGroupPredefinedRulePublicV1Forbidden {
	return &UpdateGroupPredefinedRulePublicV1Forbidden{}
}

/*UpdateGroupPredefinedRulePublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1Forbidden) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV1NotFound creates a UpdateGroupPredefinedRulePublicV1NotFound with default headers values
func NewUpdateGroupPredefinedRulePublicV1NotFound() *UpdateGroupPredefinedRulePublicV1NotFound {
	return &UpdateGroupPredefinedRulePublicV1NotFound{}
}

/*UpdateGroupPredefinedRulePublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1NotFound) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV1InternalServerError creates a UpdateGroupPredefinedRulePublicV1InternalServerError with default headers values
func NewUpdateGroupPredefinedRulePublicV1InternalServerError() *UpdateGroupPredefinedRulePublicV1InternalServerError {
	return &UpdateGroupPredefinedRulePublicV1InternalServerError{}
}

/*UpdateGroupPredefinedRulePublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupPredefinedRulePublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV1InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
