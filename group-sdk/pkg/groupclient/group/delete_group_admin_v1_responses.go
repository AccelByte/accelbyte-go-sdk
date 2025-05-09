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

// DeleteGroupAdminV1Reader is a Reader for the DeleteGroupAdminV1 structure.
type DeleteGroupAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGroupAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGroupAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGroupAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGroupAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGroupAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGroupAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGroupAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGroupAdminV1NoContent creates a DeleteGroupAdminV1NoContent with default headers values
func NewDeleteGroupAdminV1NoContent() *DeleteGroupAdminV1NoContent {
	return &DeleteGroupAdminV1NoContent{}
}

/*DeleteGroupAdminV1NoContent handles this case with default header values.

  No Content
*/
type DeleteGroupAdminV1NoContent struct {
}

func (o *DeleteGroupAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1NoContent ", 204)
}

func (o *DeleteGroupAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGroupAdminV1BadRequest creates a DeleteGroupAdminV1BadRequest with default headers values
func NewDeleteGroupAdminV1BadRequest() *DeleteGroupAdminV1BadRequest {
	return &DeleteGroupAdminV1BadRequest{}
}

/*DeleteGroupAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGroupAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGroupAdminV1BadRequest) ToJSONString() string {
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

func (o *DeleteGroupAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupAdminV1Unauthorized creates a DeleteGroupAdminV1Unauthorized with default headers values
func NewDeleteGroupAdminV1Unauthorized() *DeleteGroupAdminV1Unauthorized {
	return &DeleteGroupAdminV1Unauthorized{}
}

/*DeleteGroupAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGroupAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGroupAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteGroupAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupAdminV1Forbidden creates a DeleteGroupAdminV1Forbidden with default headers values
func NewDeleteGroupAdminV1Forbidden() *DeleteGroupAdminV1Forbidden {
	return &DeleteGroupAdminV1Forbidden{}
}

/*DeleteGroupAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type DeleteGroupAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGroupAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteGroupAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupAdminV1NotFound creates a DeleteGroupAdminV1NotFound with default headers values
func NewDeleteGroupAdminV1NotFound() *DeleteGroupAdminV1NotFound {
	return &DeleteGroupAdminV1NotFound{}
}

/*DeleteGroupAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type DeleteGroupAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGroupAdminV1NotFound) ToJSONString() string {
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

func (o *DeleteGroupAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupAdminV1InternalServerError creates a DeleteGroupAdminV1InternalServerError with default headers values
func NewDeleteGroupAdminV1InternalServerError() *DeleteGroupAdminV1InternalServerError {
	return &DeleteGroupAdminV1InternalServerError{}
}

/*DeleteGroupAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGroupAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/groups/{groupId}][%d] deleteGroupAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGroupAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteGroupAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
