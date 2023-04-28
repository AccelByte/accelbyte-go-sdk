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

// UpdatePatchSingleGroupPublicV1Reader is a Reader for the UpdatePatchSingleGroupPublicV1 structure.
type UpdatePatchSingleGroupPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePatchSingleGroupPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePatchSingleGroupPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePatchSingleGroupPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePatchSingleGroupPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePatchSingleGroupPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePatchSingleGroupPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePatchSingleGroupPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePatchSingleGroupPublicV1OK creates a UpdatePatchSingleGroupPublicV1OK with default headers values
func NewUpdatePatchSingleGroupPublicV1OK() *UpdatePatchSingleGroupPublicV1OK {
	return &UpdatePatchSingleGroupPublicV1OK{}
}

/*UpdatePatchSingleGroupPublicV1OK handles this case with default header values.

  OK
*/
type UpdatePatchSingleGroupPublicV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdatePatchSingleGroupPublicV1OK) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1OK) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePatchSingleGroupPublicV1BadRequest creates a UpdatePatchSingleGroupPublicV1BadRequest with default headers values
func NewUpdatePatchSingleGroupPublicV1BadRequest() *UpdatePatchSingleGroupPublicV1BadRequest {
	return &UpdatePatchSingleGroupPublicV1BadRequest{}
}

/*UpdatePatchSingleGroupPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1BadRequest) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePatchSingleGroupPublicV1Unauthorized creates a UpdatePatchSingleGroupPublicV1Unauthorized with default headers values
func NewUpdatePatchSingleGroupPublicV1Unauthorized() *UpdatePatchSingleGroupPublicV1Unauthorized {
	return &UpdatePatchSingleGroupPublicV1Unauthorized{}
}

/*UpdatePatchSingleGroupPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1Unauthorized) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePatchSingleGroupPublicV1Forbidden creates a UpdatePatchSingleGroupPublicV1Forbidden with default headers values
func NewUpdatePatchSingleGroupPublicV1Forbidden() *UpdatePatchSingleGroupPublicV1Forbidden {
	return &UpdatePatchSingleGroupPublicV1Forbidden{}
}

/*UpdatePatchSingleGroupPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1Forbidden) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePatchSingleGroupPublicV1NotFound creates a UpdatePatchSingleGroupPublicV1NotFound with default headers values
func NewUpdatePatchSingleGroupPublicV1NotFound() *UpdatePatchSingleGroupPublicV1NotFound {
	return &UpdatePatchSingleGroupPublicV1NotFound{}
}

/*UpdatePatchSingleGroupPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdatePatchSingleGroupPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV1NotFound) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1NotFound) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePatchSingleGroupPublicV1InternalServerError creates a UpdatePatchSingleGroupPublicV1InternalServerError with default headers values
func NewUpdatePatchSingleGroupPublicV1InternalServerError() *UpdatePatchSingleGroupPublicV1InternalServerError {
	return &UpdatePatchSingleGroupPublicV1InternalServerError{}
}

/*UpdatePatchSingleGroupPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdatePatchSingleGroupPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePatchSingleGroupPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updatePatchSingleGroupPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePatchSingleGroupPublicV1InternalServerError) ToJSONString() string {
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

func (o *UpdatePatchSingleGroupPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePatchSingleGroupPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
