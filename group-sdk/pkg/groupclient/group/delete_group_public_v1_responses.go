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

// DeleteGroupPublicV1Reader is a Reader for the DeleteGroupPublicV1 structure.
type DeleteGroupPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGroupPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGroupPublicV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGroupPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGroupPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGroupPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGroupPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGroupPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGroupPublicV1NoContent creates a DeleteGroupPublicV1NoContent with default headers values
func NewDeleteGroupPublicV1NoContent() *DeleteGroupPublicV1NoContent {
	return &DeleteGroupPublicV1NoContent{}
}

/*DeleteGroupPublicV1NoContent handles this case with default header values.

  No Content
*/
type DeleteGroupPublicV1NoContent struct {
}

func (o *DeleteGroupPublicV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1NoContent ", 204)
}

func (o *DeleteGroupPublicV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGroupPublicV1BadRequest creates a DeleteGroupPublicV1BadRequest with default headers values
func NewDeleteGroupPublicV1BadRequest() *DeleteGroupPublicV1BadRequest {
	return &DeleteGroupPublicV1BadRequest{}
}

/*DeleteGroupPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGroupPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGroupPublicV1BadRequest) ToJSONString() string {
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

func (o *DeleteGroupPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPublicV1Unauthorized creates a DeleteGroupPublicV1Unauthorized with default headers values
func NewDeleteGroupPublicV1Unauthorized() *DeleteGroupPublicV1Unauthorized {
	return &DeleteGroupPublicV1Unauthorized{}
}

/*DeleteGroupPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGroupPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGroupPublicV1Unauthorized) ToJSONString() string {
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

func (o *DeleteGroupPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPublicV1Forbidden creates a DeleteGroupPublicV1Forbidden with default headers values
func NewDeleteGroupPublicV1Forbidden() *DeleteGroupPublicV1Forbidden {
	return &DeleteGroupPublicV1Forbidden{}
}

/*DeleteGroupPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type DeleteGroupPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGroupPublicV1Forbidden) ToJSONString() string {
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

func (o *DeleteGroupPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPublicV1NotFound creates a DeleteGroupPublicV1NotFound with default headers values
func NewDeleteGroupPublicV1NotFound() *DeleteGroupPublicV1NotFound {
	return &DeleteGroupPublicV1NotFound{}
}

/*DeleteGroupPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type DeleteGroupPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPublicV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGroupPublicV1NotFound) ToJSONString() string {
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

func (o *DeleteGroupPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPublicV1InternalServerError creates a DeleteGroupPublicV1InternalServerError with default headers values
func NewDeleteGroupPublicV1InternalServerError() *DeleteGroupPublicV1InternalServerError {
	return &DeleteGroupPublicV1InternalServerError{}
}

/*DeleteGroupPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGroupPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGroupPublicV1InternalServerError) ToJSONString() string {
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

func (o *DeleteGroupPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
