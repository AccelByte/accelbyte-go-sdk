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

// GetMemberRolesListPublicV2Reader is a Reader for the GetMemberRolesListPublicV2 structure.
type GetMemberRolesListPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMemberRolesListPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMemberRolesListPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMemberRolesListPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMemberRolesListPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMemberRolesListPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMemberRolesListPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/public/namespaces/{namespace}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMemberRolesListPublicV2OK creates a GetMemberRolesListPublicV2OK with default headers values
func NewGetMemberRolesListPublicV2OK() *GetMemberRolesListPublicV2OK {
	return &GetMemberRolesListPublicV2OK{}
}

/*GetMemberRolesListPublicV2OK handles this case with default header values.

  OK
*/
type GetMemberRolesListPublicV2OK struct {
	Payload *groupclientmodels.ModelsGetMemberRolesListResponseV1
}

func (o *GetMemberRolesListPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV2OK) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV2OK) GetPayload() *groupclientmodels.ModelsGetMemberRolesListResponseV1 {
	return o.Payload
}

func (o *GetMemberRolesListPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetMemberRolesListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMemberRolesListPublicV2BadRequest creates a GetMemberRolesListPublicV2BadRequest with default headers values
func NewGetMemberRolesListPublicV2BadRequest() *GetMemberRolesListPublicV2BadRequest {
	return &GetMemberRolesListPublicV2BadRequest{}
}

/*GetMemberRolesListPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetMemberRolesListPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV2BadRequest) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMemberRolesListPublicV2Unauthorized creates a GetMemberRolesListPublicV2Unauthorized with default headers values
func NewGetMemberRolesListPublicV2Unauthorized() *GetMemberRolesListPublicV2Unauthorized {
	return &GetMemberRolesListPublicV2Unauthorized{}
}

/*GetMemberRolesListPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetMemberRolesListPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMemberRolesListPublicV2Forbidden creates a GetMemberRolesListPublicV2Forbidden with default headers values
func NewGetMemberRolesListPublicV2Forbidden() *GetMemberRolesListPublicV2Forbidden {
	return &GetMemberRolesListPublicV2Forbidden{}
}

/*GetMemberRolesListPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetMemberRolesListPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV2Forbidden) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMemberRolesListPublicV2InternalServerError creates a GetMemberRolesListPublicV2InternalServerError with default headers values
func NewGetMemberRolesListPublicV2InternalServerError() *GetMemberRolesListPublicV2InternalServerError {
	return &GetMemberRolesListPublicV2InternalServerError{}
}

/*GetMemberRolesListPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMemberRolesListPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMemberRolesListPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/roles][%d] getMemberRolesListPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMemberRolesListPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetMemberRolesListPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMemberRolesListPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
