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

// UpdatePatchSingleGroupPublicV2Reader is a Reader for the UpdatePatchSingleGroupPublicV2 structure.
type UpdatePatchSingleGroupPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePatchSingleGroupPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePatchSingleGroupPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePatchSingleGroupPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePatchSingleGroupPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePatchSingleGroupPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePatchSingleGroupPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePatchSingleGroupPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePatchSingleGroupPublicV2OK creates a UpdatePatchSingleGroupPublicV2OK with default headers values
func NewUpdatePatchSingleGroupPublicV2OK() *UpdatePatchSingleGroupPublicV2OK {
	return &UpdatePatchSingleGroupPublicV2OK{}
}

/*UpdatePatchSingleGroupPublicV2OK handles this case with default header values.

  OK
*/
type UpdatePatchSingleGroupPublicV2OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdatePatchSingleGroupPublicV2OK) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2OK) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePatchSingleGroupPublicV2BadRequest creates a UpdatePatchSingleGroupPublicV2BadRequest with default headers values
func NewUpdatePatchSingleGroupPublicV2BadRequest() *UpdatePatchSingleGroupPublicV2BadRequest {
	return &UpdatePatchSingleGroupPublicV2BadRequest{}
}

/*UpdatePatchSingleGroupPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2BadRequest) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePatchSingleGroupPublicV2Unauthorized creates a UpdatePatchSingleGroupPublicV2Unauthorized with default headers values
func NewUpdatePatchSingleGroupPublicV2Unauthorized() *UpdatePatchSingleGroupPublicV2Unauthorized {
	return &UpdatePatchSingleGroupPublicV2Unauthorized{}
}

/*UpdatePatchSingleGroupPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePatchSingleGroupPublicV2Forbidden creates a UpdatePatchSingleGroupPublicV2Forbidden with default headers values
func NewUpdatePatchSingleGroupPublicV2Forbidden() *UpdatePatchSingleGroupPublicV2Forbidden {
	return &UpdatePatchSingleGroupPublicV2Forbidden{}
}

/*UpdatePatchSingleGroupPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2Forbidden) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePatchSingleGroupPublicV2NotFound creates a UpdatePatchSingleGroupPublicV2NotFound with default headers values
func NewUpdatePatchSingleGroupPublicV2NotFound() *UpdatePatchSingleGroupPublicV2NotFound {
	return &UpdatePatchSingleGroupPublicV2NotFound{}
}

/*UpdatePatchSingleGroupPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2NotFound) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePatchSingleGroupPublicV2InternalServerError creates a UpdatePatchSingleGroupPublicV2InternalServerError with default headers values
func NewUpdatePatchSingleGroupPublicV2InternalServerError() *UpdatePatchSingleGroupPublicV2InternalServerError {
	return &UpdatePatchSingleGroupPublicV2InternalServerError{}
}

/*UpdatePatchSingleGroupPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdatePatchSingleGroupPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
