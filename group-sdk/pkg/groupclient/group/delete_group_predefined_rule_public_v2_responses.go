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

// DeleteGroupPredefinedRulePublicV2Reader is a Reader for the DeleteGroupPredefinedRulePublicV2 structure.
type DeleteGroupPredefinedRulePublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGroupPredefinedRulePublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGroupPredefinedRulePublicV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGroupPredefinedRulePublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGroupPredefinedRulePublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGroupPredefinedRulePublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGroupPredefinedRulePublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGroupPredefinedRulePublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGroupPredefinedRulePublicV2NoContent creates a DeleteGroupPredefinedRulePublicV2NoContent with default headers values
func NewDeleteGroupPredefinedRulePublicV2NoContent() *DeleteGroupPredefinedRulePublicV2NoContent {
	return &DeleteGroupPredefinedRulePublicV2NoContent{}
}

/*DeleteGroupPredefinedRulePublicV2NoContent handles this case with default header values.

  No Content
*/
type DeleteGroupPredefinedRulePublicV2NoContent struct {
}

func (o *DeleteGroupPredefinedRulePublicV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2NoContent ", 204)
}

func (o *DeleteGroupPredefinedRulePublicV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGroupPredefinedRulePublicV2BadRequest creates a DeleteGroupPredefinedRulePublicV2BadRequest with default headers values
func NewDeleteGroupPredefinedRulePublicV2BadRequest() *DeleteGroupPredefinedRulePublicV2BadRequest {
	return &DeleteGroupPredefinedRulePublicV2BadRequest{}
}

/*DeleteGroupPredefinedRulePublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV2BadRequest) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGroupPredefinedRulePublicV2Unauthorized creates a DeleteGroupPredefinedRulePublicV2Unauthorized with default headers values
func NewDeleteGroupPredefinedRulePublicV2Unauthorized() *DeleteGroupPredefinedRulePublicV2Unauthorized {
	return &DeleteGroupPredefinedRulePublicV2Unauthorized{}
}

/*DeleteGroupPredefinedRulePublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV2Unauthorized) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGroupPredefinedRulePublicV2Forbidden creates a DeleteGroupPredefinedRulePublicV2Forbidden with default headers values
func NewDeleteGroupPredefinedRulePublicV2Forbidden() *DeleteGroupPredefinedRulePublicV2Forbidden {
	return &DeleteGroupPredefinedRulePublicV2Forbidden{}
}

/*DeleteGroupPredefinedRulePublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV2Forbidden) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGroupPredefinedRulePublicV2NotFound creates a DeleteGroupPredefinedRulePublicV2NotFound with default headers values
func NewDeleteGroupPredefinedRulePublicV2NotFound() *DeleteGroupPredefinedRulePublicV2NotFound {
	return &DeleteGroupPredefinedRulePublicV2NotFound{}
}

/*DeleteGroupPredefinedRulePublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV2NotFound) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteGroupPredefinedRulePublicV2InternalServerError creates a DeleteGroupPredefinedRulePublicV2InternalServerError with default headers values
func NewDeleteGroupPredefinedRulePublicV2InternalServerError() *DeleteGroupPredefinedRulePublicV2InternalServerError {
	return &DeleteGroupPredefinedRulePublicV2InternalServerError{}
}

/*DeleteGroupPredefinedRulePublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGroupPredefinedRulePublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV2InternalServerError) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
