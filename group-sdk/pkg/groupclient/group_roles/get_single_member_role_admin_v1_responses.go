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

// GetSingleMemberRoleAdminV1Reader is a Reader for the GetSingleMemberRoleAdminV1 structure.
type GetSingleMemberRoleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSingleMemberRoleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSingleMemberRoleAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSingleMemberRoleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSingleMemberRoleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSingleMemberRoleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSingleMemberRoleAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSingleMemberRoleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSingleMemberRoleAdminV1OK creates a GetSingleMemberRoleAdminV1OK with default headers values
func NewGetSingleMemberRoleAdminV1OK() *GetSingleMemberRoleAdminV1OK {
	return &GetSingleMemberRoleAdminV1OK{}
}

/*GetSingleMemberRoleAdminV1OK handles this case with default header values.

  OK
*/
type GetSingleMemberRoleAdminV1OK struct {
	Payload *groupclientmodels.ModelsMemberRoleResponseV1
}

func (o *GetSingleMemberRoleAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1OK) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1OK) GetPayload() *groupclientmodels.ModelsMemberRoleResponseV1 {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSingleMemberRoleAdminV1BadRequest creates a GetSingleMemberRoleAdminV1BadRequest with default headers values
func NewGetSingleMemberRoleAdminV1BadRequest() *GetSingleMemberRoleAdminV1BadRequest {
	return &GetSingleMemberRoleAdminV1BadRequest{}
}

/*GetSingleMemberRoleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetSingleMemberRoleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleMemberRoleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1BadRequest) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSingleMemberRoleAdminV1Unauthorized creates a GetSingleMemberRoleAdminV1Unauthorized with default headers values
func NewGetSingleMemberRoleAdminV1Unauthorized() *GetSingleMemberRoleAdminV1Unauthorized {
	return &GetSingleMemberRoleAdminV1Unauthorized{}
}

/*GetSingleMemberRoleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetSingleMemberRoleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleMemberRoleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSingleMemberRoleAdminV1Forbidden creates a GetSingleMemberRoleAdminV1Forbidden with default headers values
func NewGetSingleMemberRoleAdminV1Forbidden() *GetSingleMemberRoleAdminV1Forbidden {
	return &GetSingleMemberRoleAdminV1Forbidden{}
}

/*GetSingleMemberRoleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetSingleMemberRoleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleMemberRoleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1Forbidden) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSingleMemberRoleAdminV1NotFound creates a GetSingleMemberRoleAdminV1NotFound with default headers values
func NewGetSingleMemberRoleAdminV1NotFound() *GetSingleMemberRoleAdminV1NotFound {
	return &GetSingleMemberRoleAdminV1NotFound{}
}

/*GetSingleMemberRoleAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type GetSingleMemberRoleAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleMemberRoleAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1NotFound) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSingleMemberRoleAdminV1InternalServerError creates a GetSingleMemberRoleAdminV1InternalServerError with default headers values
func NewGetSingleMemberRoleAdminV1InternalServerError() *GetSingleMemberRoleAdminV1InternalServerError {
	return &GetSingleMemberRoleAdminV1InternalServerError{}
}

/*GetSingleMemberRoleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSingleMemberRoleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetSingleMemberRoleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] getSingleMemberRoleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSingleMemberRoleAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetSingleMemberRoleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSingleMemberRoleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
