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

// GetGroupListAdminV1Reader is a Reader for the GetGroupListAdminV1 structure.
type GetGroupListAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupListAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupListAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGroupListAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupListAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGroupListAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupListAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v1/admin/namespaces/{namespace}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupListAdminV1OK creates a GetGroupListAdminV1OK with default headers values
func NewGetGroupListAdminV1OK() *GetGroupListAdminV1OK {
	return &GetGroupListAdminV1OK{}
}

/*GetGroupListAdminV1OK handles this case with default header values.

  OK
*/
type GetGroupListAdminV1OK struct {
	Payload *groupclientmodels.ModelsGetGroupsListResponseV1
}

func (o *GetGroupListAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups][%d] getGroupListAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGroupListAdminV1OK) ToJSONString() string {
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

func (o *GetGroupListAdminV1OK) GetPayload() *groupclientmodels.ModelsGetGroupsListResponseV1 {
	return o.Payload
}

func (o *GetGroupListAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetGroupsListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupListAdminV1BadRequest creates a GetGroupListAdminV1BadRequest with default headers values
func NewGetGroupListAdminV1BadRequest() *GetGroupListAdminV1BadRequest {
	return &GetGroupListAdminV1BadRequest{}
}

/*GetGroupListAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGroupListAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups][%d] getGroupListAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGroupListAdminV1BadRequest) ToJSONString() string {
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

func (o *GetGroupListAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupListAdminV1Unauthorized creates a GetGroupListAdminV1Unauthorized with default headers values
func NewGetGroupListAdminV1Unauthorized() *GetGroupListAdminV1Unauthorized {
	return &GetGroupListAdminV1Unauthorized{}
}

/*GetGroupListAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGroupListAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups][%d] getGroupListAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGroupListAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetGroupListAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupListAdminV1Forbidden creates a GetGroupListAdminV1Forbidden with default headers values
func NewGetGroupListAdminV1Forbidden() *GetGroupListAdminV1Forbidden {
	return &GetGroupListAdminV1Forbidden{}
}

/*GetGroupListAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetGroupListAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups][%d] getGroupListAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGroupListAdminV1Forbidden) ToJSONString() string {
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

func (o *GetGroupListAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGroupListAdminV1InternalServerError creates a GetGroupListAdminV1InternalServerError with default headers values
func NewGetGroupListAdminV1InternalServerError() *GetGroupListAdminV1InternalServerError {
	return &GetGroupListAdminV1InternalServerError{}
}

/*GetGroupListAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupListAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupListAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v1/admin/namespaces/{namespace}/groups][%d] getGroupListAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGroupListAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetGroupListAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupListAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
