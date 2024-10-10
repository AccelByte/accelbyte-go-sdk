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

// UpdateGroupCustomRulePublicV1Reader is a Reader for the UpdateGroupCustomRulePublicV1 structure.
type UpdateGroupCustomRulePublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupCustomRulePublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupCustomRulePublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupCustomRulePublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupCustomRulePublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupCustomRulePublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupCustomRulePublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupCustomRulePublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupCustomRulePublicV1OK creates a UpdateGroupCustomRulePublicV1OK with default headers values
func NewUpdateGroupCustomRulePublicV1OK() *UpdateGroupCustomRulePublicV1OK {
	return &UpdateGroupCustomRulePublicV1OK{}
}

/*UpdateGroupCustomRulePublicV1OK handles this case with default header values.

  OK
*/
type UpdateGroupCustomRulePublicV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupCustomRulePublicV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1OK) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV1BadRequest creates a UpdateGroupCustomRulePublicV1BadRequest with default headers values
func NewUpdateGroupCustomRulePublicV1BadRequest() *UpdateGroupCustomRulePublicV1BadRequest {
	return &UpdateGroupCustomRulePublicV1BadRequest{}
}

/*UpdateGroupCustomRulePublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateGroupCustomRulePublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1BadRequest) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV1Unauthorized creates a UpdateGroupCustomRulePublicV1Unauthorized with default headers values
func NewUpdateGroupCustomRulePublicV1Unauthorized() *UpdateGroupCustomRulePublicV1Unauthorized {
	return &UpdateGroupCustomRulePublicV1Unauthorized{}
}

/*UpdateGroupCustomRulePublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupCustomRulePublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV1Forbidden creates a UpdateGroupCustomRulePublicV1Forbidden with default headers values
func NewUpdateGroupCustomRulePublicV1Forbidden() *UpdateGroupCustomRulePublicV1Forbidden {
	return &UpdateGroupCustomRulePublicV1Forbidden{}
}

/*UpdateGroupCustomRulePublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupCustomRulePublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1Forbidden) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV1NotFound creates a UpdateGroupCustomRulePublicV1NotFound with default headers values
func NewUpdateGroupCustomRulePublicV1NotFound() *UpdateGroupCustomRulePublicV1NotFound {
	return &UpdateGroupCustomRulePublicV1NotFound{}
}

/*UpdateGroupCustomRulePublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupCustomRulePublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1NotFound) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV1InternalServerError creates a UpdateGroupCustomRulePublicV1InternalServerError with default headers values
func NewUpdateGroupCustomRulePublicV1InternalServerError() *UpdateGroupCustomRulePublicV1InternalServerError {
	return &UpdateGroupCustomRulePublicV1InternalServerError{}
}

/*UpdateGroupCustomRulePublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupCustomRulePublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV1InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
