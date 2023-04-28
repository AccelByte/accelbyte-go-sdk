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

// UpdatePutSingleGroupPublicV2Reader is a Reader for the UpdatePutSingleGroupPublicV2 structure.
type UpdatePutSingleGroupPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePutSingleGroupPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePutSingleGroupPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePutSingleGroupPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePutSingleGroupPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePutSingleGroupPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePutSingleGroupPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePutSingleGroupPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v2/public/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePutSingleGroupPublicV2OK creates a UpdatePutSingleGroupPublicV2OK with default headers values
func NewUpdatePutSingleGroupPublicV2OK() *UpdatePutSingleGroupPublicV2OK {
	return &UpdatePutSingleGroupPublicV2OK{}
}

/*UpdatePutSingleGroupPublicV2OK handles this case with default header values.

  OK
*/
type UpdatePutSingleGroupPublicV2OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdatePutSingleGroupPublicV2OK) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2OK) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePutSingleGroupPublicV2BadRequest creates a UpdatePutSingleGroupPublicV2BadRequest with default headers values
func NewUpdatePutSingleGroupPublicV2BadRequest() *UpdatePutSingleGroupPublicV2BadRequest {
	return &UpdatePutSingleGroupPublicV2BadRequest{}
}

/*UpdatePutSingleGroupPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePutSingleGroupPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePutSingleGroupPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2BadRequest) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePutSingleGroupPublicV2Unauthorized creates a UpdatePutSingleGroupPublicV2Unauthorized with default headers values
func NewUpdatePutSingleGroupPublicV2Unauthorized() *UpdatePutSingleGroupPublicV2Unauthorized {
	return &UpdatePutSingleGroupPublicV2Unauthorized{}
}

/*UpdatePutSingleGroupPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdatePutSingleGroupPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePutSingleGroupPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePutSingleGroupPublicV2Forbidden creates a UpdatePutSingleGroupPublicV2Forbidden with default headers values
func NewUpdatePutSingleGroupPublicV2Forbidden() *UpdatePutSingleGroupPublicV2Forbidden {
	return &UpdatePutSingleGroupPublicV2Forbidden{}
}

/*UpdatePutSingleGroupPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdatePutSingleGroupPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePutSingleGroupPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2Forbidden) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePutSingleGroupPublicV2NotFound creates a UpdatePutSingleGroupPublicV2NotFound with default headers values
func NewUpdatePutSingleGroupPublicV2NotFound() *UpdatePutSingleGroupPublicV2NotFound {
	return &UpdatePutSingleGroupPublicV2NotFound{}
}

/*UpdatePutSingleGroupPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdatePutSingleGroupPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePutSingleGroupPublicV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2NotFound) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdatePutSingleGroupPublicV2InternalServerError creates a UpdatePutSingleGroupPublicV2InternalServerError with default headers values
func NewUpdatePutSingleGroupPublicV2InternalServerError() *UpdatePutSingleGroupPublicV2InternalServerError {
	return &UpdatePutSingleGroupPublicV2InternalServerError{}
}

/*UpdatePutSingleGroupPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdatePutSingleGroupPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdatePutSingleGroupPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}][%d] updatePutSingleGroupPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePutSingleGroupPublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdatePutSingleGroupPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdatePutSingleGroupPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
