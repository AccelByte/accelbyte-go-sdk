// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package member_request

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

// GetGroupInvitationRequestPublicV1Reader is a Reader for the GetGroupInvitationRequestPublicV1 structure.
type GetGroupInvitationRequestPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupInvitationRequestPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupInvitationRequestPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGroupInvitationRequestPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupInvitationRequestPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGroupInvitationRequestPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupInvitationRequestPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/public/namespaces/{namespace}/users/me/invite/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupInvitationRequestPublicV1OK creates a GetGroupInvitationRequestPublicV1OK with default headers values
func NewGetGroupInvitationRequestPublicV1OK() *GetGroupInvitationRequestPublicV1OK {
	return &GetGroupInvitationRequestPublicV1OK{}
}

/*GetGroupInvitationRequestPublicV1OK handles this case with default header values.

  OK
*/
type GetGroupInvitationRequestPublicV1OK struct {
	Payload *groupclientmodels.ModelsGetMemberRequestsListResponseV1
}

func (o *GetGroupInvitationRequestPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/me/invite/request][%d] getGroupInvitationRequestPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGroupInvitationRequestPublicV1OK) ToJSONString() string {
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

func (o *GetGroupInvitationRequestPublicV1OK) GetPayload() *groupclientmodels.ModelsGetMemberRequestsListResponseV1 {
	return o.Payload
}

func (o *GetGroupInvitationRequestPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetMemberRequestsListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupInvitationRequestPublicV1BadRequest creates a GetGroupInvitationRequestPublicV1BadRequest with default headers values
func NewGetGroupInvitationRequestPublicV1BadRequest() *GetGroupInvitationRequestPublicV1BadRequest {
	return &GetGroupInvitationRequestPublicV1BadRequest{}
}

/*GetGroupInvitationRequestPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGroupInvitationRequestPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInvitationRequestPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/me/invite/request][%d] getGroupInvitationRequestPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGroupInvitationRequestPublicV1BadRequest) ToJSONString() string {
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

func (o *GetGroupInvitationRequestPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInvitationRequestPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInvitationRequestPublicV1Unauthorized creates a GetGroupInvitationRequestPublicV1Unauthorized with default headers values
func NewGetGroupInvitationRequestPublicV1Unauthorized() *GetGroupInvitationRequestPublicV1Unauthorized {
	return &GetGroupInvitationRequestPublicV1Unauthorized{}
}

/*GetGroupInvitationRequestPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGroupInvitationRequestPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInvitationRequestPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/me/invite/request][%d] getGroupInvitationRequestPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGroupInvitationRequestPublicV1Unauthorized) ToJSONString() string {
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

func (o *GetGroupInvitationRequestPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInvitationRequestPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInvitationRequestPublicV1Forbidden creates a GetGroupInvitationRequestPublicV1Forbidden with default headers values
func NewGetGroupInvitationRequestPublicV1Forbidden() *GetGroupInvitationRequestPublicV1Forbidden {
	return &GetGroupInvitationRequestPublicV1Forbidden{}
}

/*GetGroupInvitationRequestPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetGroupInvitationRequestPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInvitationRequestPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/me/invite/request][%d] getGroupInvitationRequestPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGroupInvitationRequestPublicV1Forbidden) ToJSONString() string {
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

func (o *GetGroupInvitationRequestPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInvitationRequestPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInvitationRequestPublicV1InternalServerError creates a GetGroupInvitationRequestPublicV1InternalServerError with default headers values
func NewGetGroupInvitationRequestPublicV1InternalServerError() *GetGroupInvitationRequestPublicV1InternalServerError {
	return &GetGroupInvitationRequestPublicV1InternalServerError{}
}

/*GetGroupInvitationRequestPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupInvitationRequestPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInvitationRequestPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/public/namespaces/{namespace}/users/me/invite/request][%d] getGroupInvitationRequestPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGroupInvitationRequestPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetGroupInvitationRequestPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInvitationRequestPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
