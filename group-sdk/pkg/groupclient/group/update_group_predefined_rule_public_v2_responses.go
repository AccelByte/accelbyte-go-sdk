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

// UpdateGroupPredefinedRulePublicV2Reader is a Reader for the UpdateGroupPredefinedRulePublicV2 structure.
type UpdateGroupPredefinedRulePublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupPredefinedRulePublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupPredefinedRulePublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupPredefinedRulePublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupPredefinedRulePublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupPredefinedRulePublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupPredefinedRulePublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupPredefinedRulePublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupPredefinedRulePublicV2OK creates a UpdateGroupPredefinedRulePublicV2OK with default headers values
func NewUpdateGroupPredefinedRulePublicV2OK() *UpdateGroupPredefinedRulePublicV2OK {
	return &UpdateGroupPredefinedRulePublicV2OK{}
}

/*UpdateGroupPredefinedRulePublicV2OK handles this case with default header values.

  OK
*/
type UpdateGroupPredefinedRulePublicV2OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupPredefinedRulePublicV2OK) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2OK) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV2BadRequest creates a UpdateGroupPredefinedRulePublicV2BadRequest with default headers values
func NewUpdateGroupPredefinedRulePublicV2BadRequest() *UpdateGroupPredefinedRulePublicV2BadRequest {
	return &UpdateGroupPredefinedRulePublicV2BadRequest{}
}

/*UpdateGroupPredefinedRulePublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2BadRequest) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV2Unauthorized creates a UpdateGroupPredefinedRulePublicV2Unauthorized with default headers values
func NewUpdateGroupPredefinedRulePublicV2Unauthorized() *UpdateGroupPredefinedRulePublicV2Unauthorized {
	return &UpdateGroupPredefinedRulePublicV2Unauthorized{}
}

/*UpdateGroupPredefinedRulePublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV2Forbidden creates a UpdateGroupPredefinedRulePublicV2Forbidden with default headers values
func NewUpdateGroupPredefinedRulePublicV2Forbidden() *UpdateGroupPredefinedRulePublicV2Forbidden {
	return &UpdateGroupPredefinedRulePublicV2Forbidden{}
}

/*UpdateGroupPredefinedRulePublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2Forbidden) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV2NotFound creates a UpdateGroupPredefinedRulePublicV2NotFound with default headers values
func NewUpdateGroupPredefinedRulePublicV2NotFound() *UpdateGroupPredefinedRulePublicV2NotFound {
	return &UpdateGroupPredefinedRulePublicV2NotFound{}
}

/*UpdateGroupPredefinedRulePublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupPredefinedRulePublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2NotFound) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupPredefinedRulePublicV2InternalServerError creates a UpdateGroupPredefinedRulePublicV2InternalServerError with default headers values
func NewUpdateGroupPredefinedRulePublicV2InternalServerError() *UpdateGroupPredefinedRulePublicV2InternalServerError {
	return &UpdateGroupPredefinedRulePublicV2InternalServerError{}
}

/*UpdateGroupPredefinedRulePublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupPredefinedRulePublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupPredefinedRulePublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] updateGroupPredefinedRulePublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupPredefinedRulePublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupPredefinedRulePublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupPredefinedRulePublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
